@extends('layouts.backendapp')
@section('title', 'Producte Category')

@section('content')
    <section>
        <div class="contanier">
            <div class="row">
                <div class="col-md-5">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>Add Category</h2>
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
                                    <label for="name">Category Name:</label>
                                    <input type="text" class="form-control" name="name" id="name"
                                        placeholder="Category Name">
                                </div>


                                <div class="col-md-12  form-group">
                                    <label for="parent">Parent Category:</label>
                                    <select name="parent" id="parent" class="form-control">
                                        <option disabled selected>Select Parent Category</option>
                                        <option value="1">apple</option>
                                    </select>
                                </div>

                                <div class="col-md-12  form-group">
                                    <label for="description">Category Description:</label>
                                    <textarea name="description" id="description" class="form-control"
                                        rows="4"></textarea>
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

                <div class="col-md-7">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>All Category</h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Category</th>
                                        <th>Image</th>
                                        <th>Slug</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
                                        <td>@mdo</td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
