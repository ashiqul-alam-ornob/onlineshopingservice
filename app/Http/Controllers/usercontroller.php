<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\user;

class usercontroller extends Controller
{

    function index(Request $request)
  
    function add(Request $request){
        $user= new user;

        $user->UserName= $request->UserName;
        $user->Password= $request->Password;
        $user->PhoneNumber= $request->contactnumber;
        $user->Mailaddress= $request->mailaddress;
        $user->UserType= $request->UserType;
        $user->Picture= $request->Picture;


        if($user->save())
        {
            return view('home.index');
        }
        else{
            return view('coustomer.register');
        }
    	
    }


    function show(Request $request){
        $user= new user;



}
}