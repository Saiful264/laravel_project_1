@extends('layouts.backendapp')
@section('title', 'All Products |')

@section('content')
    <section>
        <div class="contanier">
            <div class="row">
                <div class="col-md-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>All Products</h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <div class="table-responsive">
                                <table class="table table-striped jambo_table bulk_action">
                                    <thead>
                                        <tr class="headings">
                                            <th class="column-title">Id </th>
                                            <th class="column-title">image </th>
                                            <th class="column-title">Title </th>
                                            <th class="column-title">description </th>
                                            <th class="column-title">status </th>
                                            <th class="column-title">action </th>
                                        </tr>
                                    </thead>
                                    'id','tilte','price','sale_price','quantity','photo' 51:00 min
                                    <tbody>

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
        $(document).ready(function() {
            $(toast).toast());
        });
    </script>
@endsection
