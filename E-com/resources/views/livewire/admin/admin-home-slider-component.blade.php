<div>
    <style>
        nav svg {
            height:20px;
        }
        nav .hidden {
            display: block !important;
        }
    </style>
  <div class="container" style="padding:30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                       <div class="row">
                           <div class="col-md-6">
                               All Slides
                           </div>
                           <div class="col-md-6">
                               <a href="{{route('admin.addHomeslider')}}" class="btn btn-success pull-right">Add New</a>
                           </div>
                       </div>
                    </div>
                    <div class="panel-body">
                    @if(Session::has('message'))
                        <div class="alert alert-success" role="alert">
                            {{Session::get('message')}}
                        </div>
                    @endif
                    @if($sliders->count() > 0)
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Image</th>
                                    <th>Title</th>
                                    <th>Subtitle</th>
                                    <th>Price</th>
                                    <th>Link</th>
                                    <th>Status</th>
                                    <th>Date</th>
                                    <th>Action</th>
                                </tr>
                               <tbody>
                                   @foreach($sliders as $slider)
                                    <tr>
                                        <td>{{$slider->id}}</td>
                                        <td><img src="{{asset('assets/images/sliders')}}/{{$slider->image}}" width="120" alt=""></td>
                                        <td>{{$slider->title}}</td>
                                        <td>{{$slider->subtitle}}</td>
                                        <td>{{$slider->price}}</td>
                                        <td>{{$slider->link}}</td>
                                        <td>{{$slider->status == 1 ? 'Active':'Inactive'}}</td>
                                        <td>{{$slider->created_at}}</td>
                                        <td>
                                        <a href="{{route('admin.editHomeSlider', ['slider_id'=>$slider->id]) }}"> <i class="fa fa-edit fa-2x"> </i></a>
                                        <a href="#" wire:click.prevent="deleteSlider('{{$slider->id}}')" style="margin-left: 10px" onclick="return confirm('Are you sure?')"> <i class="fa fa-times fa-2x text-danger"> </i></a>
                                        </td>
                                    </tr>
                                  @endforeach
                                </tbody>
                            </thead>
                        </table>
                        @else
                            <p>No data found</p>
                        @endif
                    </div>
                </div>
            </div>
        </div>
  </div>
</div>
