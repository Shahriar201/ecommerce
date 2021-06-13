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
            Edit Profile
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
                <h3><u>Edit Profile</u></h3><br>
                <form method="POST" action="{{ route('customer.update.profile') }}" enctype="multipart/form-data">
                    @csrf

                    <div class="form-row">
                        <div class="col-md-4">
                            <label for="name">Full Name</label>
                            <input type="text" name="name" value="{{ $editData->name }}" class="form-control">
                            <font style="color:red">
                                {{ $errors->has('name') ? $errors->first('name') : '' }}
                            </font>
                        </div>
                        <div class="col-md-4">
                            <label>Email</label>
                            <input type="email" name="email" value="{{ $editData->email }}" class="form-control">
                            <font style="color:red">
                                {{ $errors->has('email') ? $errors->first('email') : '' }}
                            </font>
                        </div>
                        <div class="col-md-4">
                            <label for="mobile">Mobile</label>
                            <input type="number" name="mobile" value="{{ $editData->mobile }}" class="form-control">
                            <font style="color:red">
                                {{ $errors->has('mobile') ? $errors->first('mobile') : '' }}
                            </font>
                        </div>
                        <div class="col-md-4">
                            <label for="address">Address</label>
                            <input type="text" name="address" value="{{ $editData->address }}" class="form-control">
                        </div>
                        <div class="col-md-4">
                            <label for="gender">Gender</label>
                            <select name="gender" id="gender" class="form-control">
                                <option value="">Gender</option>
                                <option value="Male" {{ $editData->gender == 'Male' ? 'selected' : '' }}>Male</option>
                                <option value="Female" {{ $editData->gender == 'Female' ? 'selected' : '' }}>Female
                                </option>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="image">Image</label>
                            <input type="file" name="image" class="form-control" id="image">
                        </div>

                        <div class="col-md-2">
                            <img id="showImage"
                                src="{{ !empty($editData->image) ? url('public/upload/user_images/' . $editData->image) : url('public/upload/no_image.jpg') }}"
                                style="width: 80px; height: 90px; border: 1px solid #000;">
                        </div>
                        <div class="col-md-4" style="padding-top:30px">
                            <input type="submit" value="Profile Update" class="btn btn-primary">
                        </div>

                    </div>
                </form>
            </div>
        </div>
    </div>

@endsection
