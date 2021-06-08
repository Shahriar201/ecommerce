<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Logo;
use App\Model\Slider;
use App\Model\Contact;
use App\Model\About;
use App\Model\Communicate;
use App\Model\Product;
use App\Model\ProductColor;
use App\Model\ProductSize;
use App\Model\ProductSubImage;
use App\Model\Size;
use App\Model\Color;
use Mail;
use Cart;

class CheckoutController extends Controller
{
    public function customerLogin(){
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();

        return view('frontend.single_pages.customer-login', $data);
    }
    
    public function customerSignup(){
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();

        return view('frontend.single_pages.customer-signup', $data);
    }
}
