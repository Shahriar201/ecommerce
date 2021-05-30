<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\Model\Vision;


class VisionController extends Controller
{
    public function view(){   
        $data['countVision'] = Vision::count();

        $data['allData'] = Vision::all();
        
        return view('backend.vision.view-vision', $data);
    }

    public function add(){
    
        return view('backend.vision.add-vision');
    }

    public function store(Request $request){
        $data = new Vision();

        $data->title = $request->title;
        $data->created_by = Auth::user()->id;

        if($request->file('image')){
            $file = $request->file('image');
            $fileName = date('YmdHi').$file->getClientOriginalName();
            $file->move(public_path('upload/vision_images'), $fileName);
            $data['image'] = $fileName;

        }
        $data->save();

        return redirect()->route('visions.view')->with('success', 'Vision inserted successfully');
    }

    public function edit($id){
        $editData = Vision::find($id);

        return view('backend.vision.edit-vision', compact('editData'));
    }

    public function update(Request $request, $id){
        $data = Vision::find($id);

        $data->title = $request->title;
        $data->updated_by = Auth::user()->id;

        if($request->file('image')){
            $file = $request->file('image');
            @unlink(public_path('upload/vision_images/'.$data->image));
            $fileName = date('YmdHi').$file->getClientOriginalName();
            $file->move(public_path('upload/vision_images'), $fileName);
            $data['image'] = $fileName;

        }
        $data->save();

        return redirect()->route('visions.view')->with('success', 'Data updated successfully');

    }

    public function delete($id){
        $vision = Vision::find($id);
        if(file_exists('public/upload/vision_images/' . $vision->image) AND ! empty($vision->image)){
            unlink('public/upload/vision_images/' . $vision->image);
        }
        $vision->delete();

        return redirect()->route('visions.view')->with('success', 'Data deleted successfully');
    }
}
