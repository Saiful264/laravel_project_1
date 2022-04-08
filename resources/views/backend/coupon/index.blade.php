@extends('layouts.backendapp')
@section('title', 'Coupon')

@section('content')
    <section>
        <div class="contanier">
            <div class="row">
                <div class="col-md-5">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>Add Coupon</h2>
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
                            <form class="form-label-left input_mask" action="{{ route('backend.coupon.store') }}"
                                method="POST">
                                @csrf

                                <div class="form-group">
                                    <label for="name">Coupon Name:<span class="required">*</span></label>
                                    <input type="text" class="form-control" name="name" id="name"
                                        placeholder="Category Name">
                                    @error('name')
                                        <p class="text-danger">{{ $massage }}</p>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label for="price">Coupon Price:<span class="required">*</span></label>
                                    <input type="number" class="form-control" name="price" id="price"
                                        placeholder="Category Name">
                                    @error('name')
                                        <p class="text-danger">{{ $massage }}</p>
                                    @enderror
                                </div>

                                <div class="form-group">
                                    <label for="ex_date">Expairy Date:<span class="required">*</span></label>
                                    <input type="date" class="form-control" name="ex_date" id="ex_date"
                                        placeholder="Category Name">
                                    @error('name')
                                        <p class="text-danger">{{ $massage }}</p>
                                    @enderror
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
                            <h2>All Coupons</h2>
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
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>Price</th>
                                        <th>Created Date</th>
                                        <th>Expairy Date</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($coupons as $coupon)
                                        <tr>
                                            <th scope="row">{{ $coupon->id }}</th>
                                            <td>{{ $coupon->name }}</td>
                                            <td>{{ $coupon->price }}</td>
                                            <td>{{ $coupon->created_at->diffForHumans() }}</td>
                                            <td>{{ $coupon->expairy_date->diffForHumans() }}</td>
                                            <td>
                                                <a href="">Delete</a>
                                            </td>
                                    @endforeach
                                </tbody>
                            </table>

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

@section('backend_js')
    <script>
        $('.toast').toast('show');
    </script>
@endsection
