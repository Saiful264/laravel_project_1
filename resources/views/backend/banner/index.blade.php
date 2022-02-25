@extends('layouts.backendapp')

@section('title', 'All Banner | ')

@section('content')

    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12  ">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>Table design <small>Custom design</small></h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                        aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="#">Settings 1</a>
                                        <a class="dropdown-item" href="#">Settings 2</a>
                                    </div>
                                </li>
                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>

                        <div class="x_content">

                            <p>Add class <code>bulk_action</code> to table for bulk actions options on row select</p>

                            <div class="table-responsive">
                                <table class="table table-striped jambo_table bulk_action">
                                    <thead>
                                        <th class="column-title">Id</th>
                                        <th class="column-title">Image</th>
                                        <th class="column-title">Title</th>
                                        <th class="column-title">Description</th>
                                        <th class="column-title">Status</th>
                                        <th class="column-title">Action</th>
                                    </thead>

                                    <tbody>
                                        @foreach ($datas as $data)
                                            <tr class="even pointer">
                                                <td>{{ $data->id }}</td>
                                                <td><img width="100" src="{{ asset('storage/banner/' . $data->photo) }}"
                                                        alt=""></td>
                                                <td>{{ $data->title }}</td>
                                                <td>{{ $data->description }}</td>
                                                <td>{{ $data->status }}</td>
                                                <td class=" last">
                                                    <a href="#">View</a>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    @if (session('success'))
        <div aria-live="polite" aria-atomic="true" style="position: relative; min-height: 200px;">
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
        </div>
    @endif
@endsection

@section('backend_js')
    <script>
        $('.toast').toast('show');
    </script>
@endsection
