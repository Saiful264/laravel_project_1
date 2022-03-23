@extends('layouts.backendapp')
@section('title', 'Add Producte |')

@section('content')
    <section>
        <div class="contanier">
            <div class="row">
                <div class="col-md-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>Add Producte</h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <br>
                            <form class="form-label-left input_mask" action="{{ route('backend.category.store') }}"
                                method="POST" enctype="multipart/form-data">
                                @csrf

                                <div class="col-md-12  form-group">
                                    <label for="name">Producte Name:</label>
                                    <input type="text" class="form-control" name="name" id="name"
                                        placeholder="Category Name">
                                </div>


                                <div class="col-md-12  form-group">
                                    <label for="parent">Parent Category:</label>
                                    <select name="parent" id="parent" class="form-control">
                                        <option disabled selected>Select Parent Category</option>
                                    </select>
                                </div>

                                <div class="col-md-12  form-group">
                                    <label for="description">Description:</label>
                                    <textarea name="description" id="description" class="form-control summernote" rows="4"></textarea>
                                </div>

                                <div class="col-md-12  form-group">
                                    <label for="image">Category Image:</label>
                                    <input type="file" name="image" class="form-control" id="image">
                                    <p>Image size 200x226 px</p>
                                </div>

                                <div class="col-md-12  form-group">
                                    <label for="">Category Menu Icon:</label>
                                    <input type="text" name="icon" class="form-control" id="icon">
                                    <p>Full Icon Class Name</p>
                                </div>

                                <div class="ln_solid"></div>
                                <div class="form-group row">
                                    <div class="col-md-9 col-sm-9  offset-md-3">
                                        <button class="btn btn-primary" type="reset">Reset</button>
                                        <button type="submit" class="btn btn-success">Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>

    @if (session('success'))
        <div class="toast" style="position: absolute; top: 0; right: 0;" data-delay="10000">
            <div class="toast-header">
                <strong class="mr-auto">{{ config('app.name') }}</strong>
                <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="toast-body">
                {{ session('success') }}
            </div>
        </div>
    @endif
@endsection

@section('backend.css')
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/summernote/0.8.20/summernote-bs4.min.css">
@endsection

@section('backend_js')
    <script src="//cdnjs.cloudflare.com/ajax/libs/summernote/0.8.20/summernote-bs4.min.js"></script>
    <script>
        $('.toast').toast('show');

        $('.summernote').summernote({
            height: 150,
            toolbar: [
                ['style', ['style']],
                ['font', ['bold', 'underline', 'clear']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['table', ['table']],
                ['insert', ['link']],
                ['view', ['fullscreen', 'codeview', 'help']]
            ]
        });
    </script>
@endsection
