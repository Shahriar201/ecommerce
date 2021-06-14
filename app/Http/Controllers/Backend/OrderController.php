<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use\App\Model\Shipping;
use\App\Model\Payment;
use\App\Model\Order;
use\App\Model\OrderDetail;
use App\Model\Logo;
use App\Model\Contact;

class OrderController extends Controller
{
    public function pendingList(){
        $data['orders'] = Order::where('status', '0')->get();
        return view('backend.order.pending-list', $data);
    }

    public function approavedList(){
        $data['orders'] = Order::where('status', '1')->get();
        return view('backend.order.approaved-list', $data);
    }

    public function approavedDetails($id){
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();
        $data['order'] = Order::find($id);
        return view('backend.order.approaved-details', $data);
    }

    public function approaved(Request $request){
        $order = Order::find($request->id);
        $order->status = '1';
        $order->save();
    }
}
