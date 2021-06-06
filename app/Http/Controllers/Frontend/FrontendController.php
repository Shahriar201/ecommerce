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
use Mail;

class FrontendController extends Controller
{
    public function index(){
        $data['logo'] = Logo::first();
        $data['sliders'] = Slider::all();
        $data['contact'] = Contact::first();

        $data['categories'] = Product::select('category_id')->groupBy('category_id')->get();
        $data['brands'] = Product::select('brand_id')->groupBy('brand_id')->get();
        // dd($data['categories']->toArray());
        $data['products'] = Product::orderBy('id', 'desc')->paginate(8);

        return view('frontend.layouts.home', $data);
    }

    public function productList(){
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();
        $data['categories'] = Product::select('category_id')->groupBy('category_id')->get();
        $data['brands'] = Product::select('brand_id')->groupBy('brand_id')->get();
        $data['products'] = Product::orderBy('id', 'desc')->paginate(8);

        return view('frontend.single_pages.product-list', $data);
    }

    public function categoryWiseProduct($category_id){
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();
        $data['categories'] = Product::select('category_id')->groupBy('category_id')->get();
        $data['brands'] = Product::select('brand_id')->groupBy('brand_id')->get();
        $data['products'] = Product::where('category_id', $category_id)->orderBy('id', 'desc')->get();

        return view('frontend.single_pages.category-wise-product', $data);
    }
    
    public function brandWiseProduct($brand_id){
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();
        $data['categories'] = Product::select('category_id')->groupBy('category_id')->get();
        $data['brands'] = Product::select('brand_id')->groupBy('brand_id')->get();
        $data['products'] = Product::where('brand_id', $brand_id)->orderBy('id', 'desc')->get();

        return view('frontend.single_pages.brand-wise-product', $data);
    }

    public function aboutUS(){
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();
        $data['about'] = About::first();
        
        return view('frontend.single_pages.about-us', $data);
    }

    public function contactUs(){
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();

        return view('frontend.single_pages.contact-us', $data);
    }

    public function shoppingCart(){
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();

        return view('frontend.single_pages.shopping-card', $data);
    }

    public function store(Request $request){
        $contact = new Communicate();

        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->mobile_no = $request->mobile_no;
        $contact->address = $request->address;
        $contact->msg = $request->msg;
        $contact->save();

        $data = array(
            'name' => $request->name,
            'email' => $request->email,
            'mobile_no' => $request->mobile_no,
            'address' => $request->address,
            'msg' => $request->msg
        );

        Mail::send('frontend.emails.contact', $data, function($message) use($data){
            $message->from('sagarbd767@gmail.com', 'Response Mail');
            $message->to($data['email']);
            $message->subject('Thanks for contract us');
        });

        return redirect()->back()->with('success', 'Your message successfully sent');
    }
}
