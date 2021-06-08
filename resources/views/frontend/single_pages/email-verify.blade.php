@extends('frontend.layouts.master')
@section('content')

    <style type="text/css">
        #login .container #login-row #login-column #login-box {
            margin-top: 40px;
            max-width: 600px;
            height: 320px;
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
            Email Verificatin Form
        </h2>
    </section>

    {{-- Customer Login Form --}}
    <div id="login">
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="{{ route('verify.store') }}" method="POST">
                            @csrf

                            <h3 class="text-center text-info">Email Verify</h3>
                            <div class="form-group">
                                <label class="text-info">Email:</label>
                                <input type="email" name="email" id="email" class="form-control">
                                <font color="red">{{ $errors->has('email') ? $errors->first('email') : '' }}</font><br/>
                            </div>
                            <div class="form-group">
                                <label class="text-info">Verification Code:</label>
                                <input type="text" name="code" id="code" class="form-control">
                                <font color="red">{{ $errors->has('code') ? $errors->first('code') : '' }}</font>
                            </div>
                            <div class="form-group">
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="Login">
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {{-- /Customer Login Form --}}

    <script>
        $(function() {

            $('#login-form').validate({
                rules: {
                    email: {
                        required: true,
                    },
                    code: {
                        required: true,
                    }
                },
                messages: {
                    email: {
                        required: "Please enter a email address",
                        email: "Please enter a <em>vaild</em> email address"
                    },
                    code: {
                        required: "Please enter your verification code",
                    }
                },
                errorElement: 'span',
                errorPlacement: function(error, element) {
                    error.addClass('invalid-feedback');
                    element.closest('.form-group').append(error);
                },
                highlight: function(element, errorClass, validClass) {
                    $(element).addClass('is-invalid');
                },
                unhighlight: function(element, errorClass, validClass) {
                    $(element).removeClass('is-invalid');
                }
            });
        });

    </script>
@endsection
