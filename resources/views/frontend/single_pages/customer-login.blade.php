@extends('frontend.layouts.master')
@section('content')

    <style type="text/css">
        #login .container #login-row #login-column #login-box {
            margin-top: 40px;
            max-width: 600px;
            /* height: 320px; */
            border: 1px solid #9C9C9C;
            background-color: #EAEAEA;
            margin-bottom: 40px;
        }

        #login .container #login-row #login-column #login-box #login-form {
            padding: 20px;
        }

        #login .container #login-row #login-column #login-box #login-form #register-link {
            margin-top: -85px;
        }

    </style>

    <!-- Banner Section -->
    <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('public/frontend/images/bg-01.jpg');">
        <h2 class="ltext-105 cl0 txt-center">
            Customer Login
        </h2>
    </section>

    {{-- Customer Login Form --}}
    <div id="login">
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="{{ route('login') }}" method="post">
                            @csrf

                            {{-- New alert system other than previous --}}
                            @if ($errors->any())
                                <div class="alert alert-danger alert-dismissible">
                                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                </div>
                            @endif

                            @if (Session::get('message'))
                                <div class="alert alert-danger alert-dismissible">
                                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                                    <strong>{{ Session::get('message') }}</strong>
                                </div>
                            @endif

                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <label class="text-info">Email:</label><br>
                                <input type="email" name="email" id="email" class="form-control">
                            </div>
                            <div class="form-group">
                                <label class="text-info">Password:</label><br>
                                <input type="password" name="password" id="password" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="Login">
                                <i class="fa fa-user"></i> No account yet ? <a
                                    href="{{ route('customer.signup') }}"><span>Signup New Account</span></a>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {{-- /Customer Login Form --}}

@endsection
