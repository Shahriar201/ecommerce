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
use Mail;
use App\User;
use Auth;
use DB;

class DashboardController extends Controller
{
    public function dashboard(){
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();

        $data['user'] = Auth::user();
        // dd($data['user']->toArray());
        return view('frontend.single_pages.customer-dashboard', $data);
    }

    public function editProfile(Request $request){
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();

        $data['editData'] = User::find(Auth::user()->id);
        return view('frontend.single_pages.customer-edit-profile', $data);
    }

    public function updateProfile(Request $request){
        $user = User::find(Auth::user()->id);
        $this->validate($request,[
            'name' => 'required',
            'email' => 'required|unique:users,email,'.$user->id,
            'mobile' => ['required', 'unique:users,mobile,'.$user->id,
            'regex:/(^(\+8801|8801|01|008801))[1|2-9]{1}(\d){8}$/']
        ]);
        $user->name = $request->name;
        $user->email = $request->email;
        $user->mobile = $request->mobile;
        $user->address = $request->address;
        $user->gender = $request->gender;
        if($request->file('image')){
            $file = $request->file('image');
            @unlink(public_path('upload/user_images/'.$user->image));
            $fileName = date('YmdHi').$file->getClientOriginalName();
            $file->move(public_path('upload/user_images'), $fileName);
            $user['image'] = $fileName;
        }
        $user->save();

        return redirect()->route('dashboard')->with('success', 'Profile Updated Successfully');
    }

    public function passwordChange(){
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();

        return view('frontend.single_pages.customer-password-change', $data);
    }
    
    public function passwordUpdate(Request $request){
        if(Auth::attempt(['id' => Auth::user()->id, 'password' => $request->current_password])){
            
            $user = User::find(Auth::user()->id);
            $user->password = bcrypt($request->new_password);
            $user->save();

            return redirect()->route('dashboard')->with('success', 'Password changed successfully');

        }else{
            return redirect()->back()->with('error', 'Sorry! your current password does not match');
        }
    }
    
}
