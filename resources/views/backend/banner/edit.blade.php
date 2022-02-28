@extends('layouts.backendapp')

@section('title', 'Edit Banner | ')

@section('content')
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-12 ">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>Banner Edit<a href="{{ route('backend.banner.index') }}" class="btn btn-primary btn-sm">Add
                                    Banner</a></h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <br />
                            <form action="{{ route('backend.banner.update', $banner->id) }}" method="POST"
                                enctype="multipart/form-data" class="form-horizontal form-label-left">
                                @csrf
                                @method('PUT')

                                <div class="form-group row ">
                                    <label class="control-label col-md-3 col-sm-3 ">Banner Title</label>
                                    <div class="col-md-9 col-sm-9 ">
                                        <input type="text" class="form-control" placeholder="Banner Title" name="title"
                                            value="{{ $banner->title }}">
                                    </div>
                                </div>

                                <div class="form-group row ">
                                    <label class="control-label col-md-3 col-sm-3 ">Banner Description</label>
                                    <div class="col-md-9 col-sm-9 ">
                                        <textarea name="description" class="form-control" rows="3"
                                            placeholder="Banner Description">{{ $banner->description }}</textarea>
                                    </div>
                                </div>

                                <div class="form-group row ">
                                    <label class="control-label col-md-3 col-sm-3 ">Banner Photo</label>
                                    <div class="col-md-9 col-sm-9 ">
                                        <input type="file" class="form-control" name="photo">
                                        <img width="100" class="mt-3"
                                            src="{{ asset('storage/banner/' . $banner->photo) }}" alt="">
                                    </div>
                                </div>

                                <div class="ln_solid"></div>
                                <div class="form-group">
                                    <div class="col-md-9 col-sm-9  offset-md-3">
                                        <button type="submit" class="btn btn-success">Update</button>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
@endsection
