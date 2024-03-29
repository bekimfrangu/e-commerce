<div>
    <div class="container" style="padding:30px 0;">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           <div class="row">
                               <div class="col-md-6">
                                   Add New Slide
                               </div>
                           
                             <div class="col-md-6">
                               <a href="{{route('admin.homeslider') }}" class="btn btn-success pull-right">All Slides</a>
                             </div>
                            </div>
                        </div>
                        <div class="panel-body">
                        @if(Session::has('message'))
                        <div class="alert alert-success" role="alert">
                                {{Session::get('message')}}
                        </div>
                        @endif
                            <form class="form-horizontal" wire:submit.prevent="storeHomeslider()">
                                <div class="form-group">
                                    <label for="title" class="col-md-4 control-label">Title</label>
                                    <div class="col-md-4">
                                        <input type="text" name="title" class="form-control input-md" wire:model="title"/>
                                        @error('title')
                                            <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="subtitle" class="col-md-4 control-label">Subtitle</label>
                                    <div class="col-md-4">
                                        <input type="text" name="subtitle" class="form-control input-md" wire:model="subtitle"/>
                                        @error('subtitle')
                                            <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="price" class="col-md-4 control-label">Price</label>
                                    <div class="col-md-4">
                                        <input type="text" name="price" class="form-control input-md" wire:model="price"/>
                                        @error('price')
                                            <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="link" class="col-md-4 control-label">Link</label>
                                    <div class="col-md-4">
                                        <input type="text" name="link" class="form-control input-md" wire:model="link"/>
                                        @error('link')
                                            <p class="text-danger">{{$message}}</p>
                                        @enderror
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="image" class="col-md-4 control-label" >Image</label>
                                    <div class="col-md-4">
                                        <input type="file" class="input-file" wire:model="image"/>
                                    @if($image)
                                            <img src="{{$image->temporaryUrl()}}" width="120" alt="">
                                    @endif
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="status" class="col-md-4 control-label">Status</label>
                                    <div class="col-md-4">
                                        <select class="form-control input-md" wire:model="status">
                                            <option value="0">Inactive</option>
                                            <option value="1">Active</option>
                                        </select>
                                
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="" class="col-md-4 control-label"></label>
                                    <div class="col-md-4">
                                       <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</div>
