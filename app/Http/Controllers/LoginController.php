<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{
    public function login(Request $request)
    {



        $validator = Validator::make($request->all(), [
            'email' => 'required|max:191',
            'password' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'validator_errors' => $validator->messages(),

            ]);
        } else {
            $user = User::where('email', $request->email)->first();



            if (!$user || !Hash::check($request->password, $user->password)) {

                return response()->json([
                    'status' => 401,
                    'message' => 'Invalid Email or Password',
                ])->setStatusCode(401);
            } else {
                //$token = $user->createToken($user->email . '_token')->plainTextToken;
                $user->tokens()->where('name', $user->email . '_token')->delete();
                $token = $user->createToken($user->email . '_token')->plainTextToken;
                return response()->json([
                    'status' => 200,
                    'userName' => $user->name,
                    'email' => $user->email,
                    'token' => $token,
                    'message' => 'Loogged In Successfully',
                ])->setStatusCode(200);
            }
        }
    }
}
