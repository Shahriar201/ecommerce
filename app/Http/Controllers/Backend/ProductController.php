<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Category;
use App\Model\Brand;
use App\Model\Color;
use App\Model\Size;
use App\Model\Product;
use App\Model\ProductColor;
use App\Model\ProductSize;
use App\Model\ProductSubImage;
use DB;
use Auth;
use App\Http\Requests\SizeRequest;

class ProductController extends Controller
{
    public function view(){    
        $data['allData'] = Product::all();
        
        return view('backend.product.view-product', $data);
    }

    public function add(){
        $data['categories'] = Category::all();
        $data['brands'] = Brand::all();
        $data['colors'] = Color::all();
        $data['sizes'] = Size::all();
    
        return view('backend.product.add-product', $data);
    }

    public function store(Request $request){
        DB::transaction(function () use($request){
            $this->validate($request,[
                'name' => 'required|unique:products,name',
                'color_id' => 'required',
                'size_id' => 'required'
            ]);
            $product = new Product();
            $product->category_id = $request->category_id;
            $product->brand_id = $request->brand_id;
            $product->name = $request->name;
            $product->short_desc = $request->short_desc;
            $product->long_desc = $request->long_desc;
            $product->price = $request->price;
            $img = $request->file('image');
            if ($img) {
                $imgName = date('YmdHi').$img->getClientOriginalName();
                $img->move('public/upload/product_images/', $imgName);
                $product['image'] = $imgName;
            }
            if ($product->save()) {
                // product-sub-image-table-data-insert
                $files = $request->sub_image;
                if (!empty($files)) {
                    foreach ($files as $file) {
                        $imgName = date('YmdHi').$file->getClientOriginalName();
                        $file->move(public_path('upload/product_images/product_sub_images'), $imgName);
                        $subimage['sub_image'] = $imgName;

                        $subimage = new ProductSubImage();
                        $subimage->product_id = $product->id;
                        $subimage->sub_image = $imgName;
                        $subimage->save();
                    }
                }
                // Color table data insert
                $colors = $request->color_id;
                if (!empty($colors)) {
                    foreach ($colors as $color) {
                        $mycolor = new ProductColor();
                        $mycolor->product_id = $product->id;
                        $mycolor->color_id = $color;
                        $mycolor->save();
                    }
                }
                // Size table data insert
                $sizes = $request->size_id;
                if (!empty($sizes)) {
                    foreach ($sizes as $size) {
                        $mysize = new ProductSize();
                        $mysize->product_id = $product->id;
                        $mysize->size_id = $size;
                        $mysize->save();
                    }
                }
            } else {
                return redirect()->back()->with('error', 'Sorry! Data not saved');
            }
            $product->save();
        });
        
        return redirect()->route('products.view')->with('success', 'Data inserted successfully');
    }

    public function edit($id){
        $editData = Size::find($id);

        return view('backend.size.add-size', compact('editData'));
    }

    public function update(SizeRequest $request, $id){
        $data = Size::find($id);
        $data->name = $request->name;
        $data->updated_by = Auth::user()->id;
        $data->save();

        return redirect()->route('sizes.view')->with('success', 'Data updated successfully');

    }

    public function delete(Request $request){
        $size = Size::find($request->id);
        $size->delete();

        return redirect()->route('colors.view')->with('success', 'Data deleted successfully');
    }
}
