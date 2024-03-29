<?php

namespace App\Http\Livewire\Admin;

use App\Models\Coupon;
use Livewire\Component;
use PHPUnit\Framework\Constraint\Count;

class AdminAddCouponsComponent extends Component
{       public $code;
        public $type;
        public $value;
        public $cart_value;

    public function storeCoupon()
    {
        $this->validate([
            'code'=>'required|unique:coupons',
            'type'=>'required',
            'value'=>'required|numeric',
            'cart_value'=>'required|numeric'
        ]);

        $coupon = new Coupon;

        $coupon->code = $this->code;
        $coupon->type = $this->type;
        $coupon->value = $this->value;
        $coupon->cart_value = $this->cart_value;

        $coupon->save();

        session()->flash('message','The coupon has been created successfully!');
    }
    public function render()
    {
        return view('livewire.admin.admin-add-coupons-component')->layout('layouts.base');
    }
}
