@extends('frontend.layouts.master')
@section('content')
    <style type="text/css">
        .prof li {
            background: #1781BF;
            padding: 7px;
            margin: 3px;
            border-radius: 15px;
        }

        .prof li a {
            color: #fff;
            padding-left: 15px;
        }

    </style>
    <!-- Banner Section -->
    <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('public/frontend/images/bg-01.jpg');">
        <h2 class="ltext-105 cl0 txt-center">
            My Order List
        </h2>
    </section>

    <div class="container">
        <div class="row" style="padding: 15px 0px 15px 0px">
            <div class="col-md-2">
                <ul class="prof">
                    <li><a href="{{ route('dashboard') }}">My Profile</a></li>
                    <li><a href="{{ route('customer.password.change') }}">Password Change</a></li>
                    <li><a href="{{ route('customer.order.list') }}">My Orders</a></li>
                </ul>
            </div>
            <div class="col-md-10">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Order No</th>
                            <th>Total Amount</th>
                            <th>Payment</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($orders as $order)
                            <tr>
                                <td># {{ $order->order_no }}</td>
                                <td>{{ $order->order_total }}</td>
                                <td>{{ $order['payment']['payment_method'] }}</td>

                                @if ($order['payment']['payment_method'] == 'Bkash')
                                    (Transcation no : {{ $order['payment']['transaction_no'] }})
                                @endif

                                <td>
                                    @if ($order->status == '0')
                                        <span style="background:#DD4F42; padding:5px; color:#fff">Not Approaved</span>
                                    @elseif ($order->status == '1')
                                        <span style="background:#1BA160; padding:5px; color:#fff">Approaved</span>
                                    @endif

                                </td>
                                <td>
                                    <a title="Details" href="{{ route('customer.order.details', $order->id) }}" class="btn btn-primary btn-sm"><i class="fa fa-eye"></i></a>
                                    <a title="Print" target="_blank" href="{{ route('customer.order.print', $order->id) }}" class="btn btn-info btn-sm"><i class="fa fa-print"></i></a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>

@endsection
