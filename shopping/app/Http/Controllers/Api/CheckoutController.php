<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Payment;
use App\Order;
use App\OrderDetail;
use App\Shipping;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class CheckoutController extends Controller
{
    public function orderPlace(Request $request)
    {
        $data = json_decode($request->getContent(), true);
        try {
            DB::beginTransaction();
               // Insert shippings
                $shipping_id = Shipping::create([
                    'email' => $data['email'],
                    'name' => $data['name'],
                    'address' => $data['address'],
                    'phone' => $data['phone'],
                    'note' => $data['note'],
                    'customer_id' => $data['customer_id']
                ])->id;
                
            //Insert payment
            $payment = Payment::create([
                'payment_method' => $data['payment_method'],
                'payment_status' => 'Đang chờ xử lý'
            ]);

            //Insert Order
            $order = Order::create([
                'customer_id' => $data['customer_id'],
                'shipping_id' => $shipping_id,
                'payment_id' => $payment->id,
                'order_total' => $data['order_total'],
                'order_status' => 'Đang chờ xử lý',
            ]);
            
            foreach ($data['carts'] as $key => $value) {
                //Insert OrderDetail
                $order_detail = OrderDetail::create([
                    'order_id' => $order->id,
                    'product_id' => $value['id'],
                    'product_name' => $value['name'],
                    'product_price' => $value['price'],
                    'product_sales_quantity' => $value['qty'],

                ]);
                
            }
            DB::commit();

            return response()->json([
                "code" => 200,
                "message" => "Thêm thành công",
            ], 200);
        } catch (\Exception $exception) {
            Log::error('Message' . $exception->getMessage() . ' ------Line ' . $exception->getLine());
            DB::rollBack();
            return response()->json([
                "code" => 501,
                "message" => "Thêm thất bại",
            ], 501);
        }
    }


    public function listOrder($customer_id){
        $data = array();
        foreach(Order::where('customer_id',$customer_id)->get() as $orderItem){
           
            $carts = array();
            foreach(OrderDetail::where('order_id', $orderItem->id)->get() as $item){
                array_push($carts,[
                    'product_name'=> $item->product_name,
                    'product_price'=> $item->product_price,
                    'product_sales_quantity'=> $item->product_sales_quantity
                ]);
            }

            array_push($data,[
                'order_code'=>$orderItem->id,
                'order_total'=> $orderItem->order_total,
                'created_at' => $orderItem->created_at->format('Y-m-d H:i:s'),
                'order_status' => $orderItem->order_status,
                'carts'=>$carts
            ]);
        }

        return $data;
    }

}
