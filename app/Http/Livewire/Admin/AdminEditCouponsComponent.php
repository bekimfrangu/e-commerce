<?php

namespace App\Http\Livewire\Admin;

use App\Models\Coupon;
use Livewire\Component;

class AdminEditCouponsComponent extends Component
{
    public $code;
    public $type;
    public $value;
    public $cart_value;

    public $coupon_id;

    public function mount($coupon_id)
    {   
        $coupon = Coupon::findorFail($coupon_id);

        $this->code = $coupon->code;
        $this->type = $coupon->type;
        $this->value = $coupon->value;
        $this->cart_value = $coupon->cart_value;
        $this->coupon_id = $coupon->id;
    }

    public function editCoupon()
    {
        $this->validate([
            'code'=>'required|unique:coupons',
            'type'=>'required',
            'value'=>'required|numeric',
            'cart_value'=>'required|numeric'
        ]);

        
        $coupon = Coupon::findorFail($this->coupon_id);

        $coupon->code = $this->code;
        $coupon->type = $this->type;
        $coupon->value = $this->value;
        $coupon->cart_value = $this->cart_value;

        $coupon->save();

        session()->flash('message', 'The coupon has been updated successfully!');
    }
    public function render()
    {
        return view('livewire.admin.admin-edit-coupons-component')->layout('layouts.base');
    }
}
