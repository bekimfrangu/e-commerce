<?php

namespace App\Http\Livewire\User;

use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;
use Livewire\WithFileUploads;

class UserEditProfileComponent extends Component
{
    use WithFileUploads;

    public $name;
    public $email;
    public $mobile;
    public $image;
    public $line1;
    public $line2;
    public $city;
    public $country;
    public $province;
    public $zipcode;
    public $newImage;

    public function mount()
    {
        $user = User::findorFail(Auth::user()->id);
        $this->name = $user->name;
        $this->email = $user->email;
        $this->mobile = $user->profile->mobile;
        $this->image = $user->profile->image;
        $this->line1 = $user->profile->line1;
        $this->line2 = $user->profile->line2;
        $this->city = $user->profile->city;
        $this->country = $user->profile->country;
        $this->province = $user->profile->province;
        $this->zipcode = $user->profile->zipcode;
    }

    public function updateProfile()
    {
        $user = User::findorFail(Auth::user()->id);
        $user->name = $this->name;
        $user->save();

        $user->profile->mobile = $this->mobile;

        if($this->newImage)
        {
            if($this->image)
            {
                unlink('assets/images/profile/' .$this->image);
            }  

            $imageName = Carbon::now()->timestamp. '.' .$this->newImage->extension();
            $this->newImage->storeAs('profile', $imageName);
            $user->profile->image = $imageName;
        }
        $user->profile->line1 = $this->line1;
        $user->profile->line2 = $this->line2;
        $user->profile->city = $this->city;
        $user->profile->country = $this->country;
        $user->profile->province = $this->province;
        $user->profile->zipcode = $this->zipcode;

        $user->profile->save();
        session()->flash('message', 'Profile has been updated successfully!');
     

    }
    public function render()
    {
        $user = User::findorFail(Auth::user()->id);
        return view('livewire.user.user-edit-profile-component', ['user'=>$user])->layout('layouts.base');
    }
}
