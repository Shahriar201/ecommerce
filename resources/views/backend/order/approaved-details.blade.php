@extends('backend.layouts.master')

@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Manage Approaved Order</h1>
                </div>
                <!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Order</li>
                    </ol>
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            
            <!-- Main row -->
            <div class="row">
                <!-- Left col -->
                <section class="col-md-12">
                    <!-- Custom tabs (Charts with tabs)-->
                    <div class="card">
                        <div class="card-header">

                                <h3>Order Details Info</h3>
                                <a class="btn btn-success float-right btn-sm" href="{{ route('orders.approaved.list') }}">
                                    <i class="fa fa-list"></i>Orders Approaved List</a>
                            
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                                                        
                            <table class="text-center mytable" width="100%" border="1">
                                <tr>
                                    <td width="30%">
                                        <img src="{{ url('public/upload/logo_images/' . $logo->image) }}" alt="IMG-LOGO">
                                    </td>
                                    <td width="40%">
                                        <h4><strong>Furnish Furniture</strong></h4><br/>
                                        <span><strong>Mobile No: </strong>{{ $contact->mobile_no }} </span><br/>
                                        <span><strong>Email: </strong>{{ $contact->email }} </span><br/>
                                        <span><strong>Address: </strong>{{ $contact->address }} </span><br/>
                                    </td>
                                    <td width="30%">
                                        <strong>Order No: # {{ $order->order_no }}</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Billing Info: </strong></td>
                                    <td colspan="2" style="text-align: left; padding:5px;">
                                        <strong>Name: </strong> {{ $order['shipping']['name'] }} &nbsp;&nbsp;&nbsp;&nbsp;
                                        <strong>Email: </strong> {{ $order['shipping']['email'] }} <br/>
                                        <strong>Mobile: </strong> {{ $order['shipping']['mobile_no'] }} &nbsp;&nbsp;&nbsp;&nbsp;
                                        <strong>Address: </strong> {{ $order['shipping']['address'] }} <br/>
                                        <strong>Payment: </strong> {{ $order['payment']['payment_method'] }} <br/>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3"><strong>Order Details</strong></td>
                                </tr>
                                <tr>
                                    <td><strong>Product Name & Image</strong></td>
                                    <td><strong>Color & Size</strong></td>
                                    <td><strong>Quantity & Price</strong></td>
                                </tr>
                                @foreach ($order['order_details'] as $details)
                                    <tr>
                                        <td>
                                            <img src="{{ url('public/upload/product_images/' . $details['product']['image']) }}" style="width: 50px; height: 55px;">
                                            &nbsp; {{ $details['product']['name'] }}
                                        </td>
                                        <td>
                                            {{ $details['color']['name'] }} &nbsp;
                                            {{ $details['size']['name'] }}
                                        </td>
                                        <td>
                                            @php
                                                $sum_total = $details->quantity * $details['product']['price'];
                                            @endphp
                                            {{ $details->quantity }} x {{ $details['product']['price'] }} = {{ $sum_total }} TK
                                        </td>
                                    </tr>
                                @endforeach
                                <tr>
                                    <td colspan="2" style="text-align:right;"><strong>Grand Total</strong></td>
                                    <td><strong>{{ $order->order_total }} TK</strong></td>
                                </tr>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>

                </section>

                <!-- right col -->
            </div>
            <!-- /.row (main row) -->
        </div>
        <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

@endsection