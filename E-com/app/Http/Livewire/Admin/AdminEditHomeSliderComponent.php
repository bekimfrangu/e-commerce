<?php

namespace App\Http\Livewire\Admin;

use App\Models\HomeSlider;
use Carbon\Carbon;
use Livewire\Component;
use Livewire\WithFileUploads;
use Psy\CodeCleaner\FunctionReturnInWriteContextPass;

class AdminEditHomeSliderComponent extends Component
{ 
    use WithFileUploads;

    public $title;
    public $subtitle;
    public $price;
    public $link;
    public $status;
    public $image;

    public $newImage;
    public $slider_id;

    public function mount($slider_id) 
    {   
            $slider = HomeSlider::find($slider_id);

            $this->title = $slider->title;
            $this->subtitle = $slider->subtitle;
            $this->price = $slider->price;
            $this->link = $slider->link;
            $this->image = $slider->image;
            $this->status = $slider->status;
            $this->slider_id = $slider->id;

    }

    public function editHomeslider() 
    {
        $this->validate([
            'title'=>'required',
            'subtitle'=>'required',
            'price'=>'required|numeric',
            'link'=>'required'
        ]);
        
            $slider = HomeSlider::findorFail($this->slider_id);
            $slider->title = $this->title;
            $slider->subtitle = $this->subtitle;
            $slider->price = $this->price;
            $slider->link = $this->link;
            $slider->status = $this->status;
          

            if($this->newImage)
            {
                $imageName = Carbon::now()->timestamp. '.' . $this->newImage->extension();
                $this->newImage->storeAs('sliders', $imageName);
                $this->image = $imageName;
            }
         
            $slider->save();

            session()->flash('message', 'Home Slider was updated successfully!');
    }
    public function render()
    {
        return view('livewire.admin.admin-edit-home-slider-component')->layout('layouts.base');
    }
}
