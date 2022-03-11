<?php

namespace App\Http\Livewire\Admin;

use App\Models\HomeSlider;
use Livewire\Component;

class AdminHomeSliderComponent extends Component
{
    public function deleteSlider($slider_id) 
    {
            $slider = HomeSlider::findorFail($slider_id);
            $slider->delete();

            session()->flash('message', 'Slider has been deleted successfully!');
        
    }
    public function render()
    {
        $sliders = HomeSlider::all();
        return view('livewire.admin.admin-home-slider-component', ['sliders'=>$sliders])->layout('layouts.base');
    }
}
