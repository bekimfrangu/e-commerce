<div>
    <div class="container" style="padding:30px 0;">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           <div class="row">
                               <div class="col-md-6">
                                   Edit Product
                               </div>
                           
                             <div class="col-md-6">
                               <a href="{{route('admin.products') }}" class="btn btn-success pull-right">All Products</a>
                             </div>
                            </div>
                        </div>
                        <div class="panel-body">
                        @if(Session::has('message'))
                        <div class="alert alert-success" role="alert">
                                {{Session::get('message')}}
                        </div>
                        @endif
                            <form class="form-horizontal" enctype="multipart/form-data" wire:submit.prevent="editProduct()">
                                <div class="form-group">
                                    <label for="name" class="col-md-4 control-label">Product Name</label>
                                    <div class="col-md-4">
                                        <input type="text" name="name" class="form-control input-md" wire:model="name" wire:keyup="generateSlug()"/>
                                  @error('name')
                                        <p class="text-danger">{{$message}}</p>
                                  @enderror
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="slug" class="col-md-4 control-label">Product Slug</label>
                                    <div class="col-md-4">
                                        <input type="text" name="slug" class="form-control input-md" wire:model="slug"/>
                                 @error('slug')
                                        <p class="text-danger">{{$message}}</p>
                                  @enderror
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="short_description" class="col-md-4 control-label">Short Description</label>
                                    <div class="col-md-4">
                                        <textarea name="short_description" id="" cols="3" rows="3" class="form-control" wire:model="short_description"></textarea>
                                  @error('short_description')
                                        <p class="text-danger">{{$message}}</p>
                                  @enderror
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="description" class="col-md-4 control-label">Description</label>
                                    <div class="col-md-4">
                                        <textarea name="description" id="" cols="5" rows="4" class="form-control" wire:model="description"></textarea>
                                  @error('description')
                                        <p class="text-danger">{{$message}}</p>
                                  @enderror
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="regular_price" class="col-md-4 control-label">Regular Price</label>
                                    <div class="col-md-4">
                                      <input type="text" class="form-control input-md" name="regular_price" wire:model="regular_price">
                                 @error('regular_price')
                                        <p class="text-danger">{{$message}}</p>
                                  @enderror
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="sale_price" class="col-md-4 control-label">Sale Price</label>
                                    <div class="col-md-4">
                                      <input type="text" class="form-control input-md" name="sale_price" wire:model="sale_price">
                                 @error('sale_price')
                                        <p class="text-danger">{{$message}}</p>
                                  @enderror
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="sku" class="col-md-4 control-label">SKU</label>
                                    <div class="col-md-4">
                                      <input type="text" class="form-control input-md" name="sku" wire:model="SKU">
                                 @error('SKU')
                                        <p class="text-danger">{{$message}}</p>
                                  @enderror
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="" class="col-md-4 control-label">Stock</label>
                                    <div class="col-md-4">
                                      <select class="form-control" wire:model="stock_status">
                                          <option value="instock">In Stock</option>
                                          <option value="outstock">Out of Stock</option>
                                      </select>

                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="" class="col-md-4 control-label">Featured</label>
                                    <div class="col-md-4">
                                      <select class="form-control" wire:model="featured">
                                          <option value="0">No</option>
                                          <option value="1">Yes</option>
                                      </select>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="quantity" class="col-md-4 control-label">Quantity</label>
                                    <div class="col-md-4">
                                      <input type="text" class="form-control input-md" name="quantity" wire:model="quantity">
                                 @error('quantity')
                                        <p class="text-danger">{{$message}}</p>
                                  @enderror
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="" class="col-md-4 control-label">Product Image</label>
                                    <div class="col-md-4">
                                      <input type="file" class="input-file" wire:model="newImage">
                                        @if($newImage)
                                            <img src="{{$newImage->temporaryUrl()}}" width="120" alt="">
                                        @else
                                            <img src="{{asset('assets/images/products')}}/{{$image}}" width="120" alt=""/>
                                        @endif
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="" class="col-md-4 control-label">Category</label>
                                    <div class="col-md-4">
                                      <select class="form-control" wire:model="category_id">
                                          <option value="">Select Category</option>
                                            @foreach($categories as $category)
                                                 <option value="{{$category->id}}">{{$category->name}}</option>
                                          @endforeach
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