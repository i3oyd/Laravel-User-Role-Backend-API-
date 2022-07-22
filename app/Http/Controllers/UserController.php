<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = User::where('id',auth()->id())->get();
        if($user[0]->role_id == 1){
            return ['user' => $user,'users' => User::all(), 'roles' => Role::all()];
        }

        return ['users' => $user, 'roles' => Role::where('id',$user[0]->role_id)->first()];
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       return Role::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $authUser = User::where('id',auth()->id())->first();
        if($authUser->role_id != 1){ //1 == admin
            return response([
                'message' => 'Unauthorized User. Needs admin privileges.',
            ], 401);
        }
        $fields = $request->validate([
            'name' => 'required|string',
            'email' => 'required|string|unique:users,email',
            'password' => 'required|string|min:8|confirmed',
            'role_id' => 'required'
        ]);
        
        $user = User::create([
            'name' => $fields['name'],
            'email' => $fields['email'],
            'password' => bcrypt($fields['password']),
            'role_id' => $fields['role_id']
        ]);
        if($user){
            return response([
                'message' => 'User created',
                'user' => $user
            ]);
        }

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return ['user' => User::find($id), 'roles' =>  Role::all()];
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $fields = $request->validate([
            'name' => 'required|string',
            'email' => 'required|string',
            'password' => 'required|string|min:8|confirmed',
            'role_id' => 'required'
        ]);

        $authUser = User::where('id',auth()->id())->first();
        $user = User::find($id);
        //update user data if role of current user is admin or if the data is from the current user
        if($authUser->role_id == 1 || $user->id == auth()->id()){//1=admin role
            $user->update([
                'name' => $fields['name'],
                'email' => $fields['email'],
                'password' => bcrypt($fields['password']),
                'role_id' => $fields['role_id']
            ]);
            return response([
                'message' => 'User data updated.',
                'user' => $user
            ]);
        }
        return response([
            'message' => 'Unauthorized User. Needs admin privileges.',
        ], 401);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $authUser = User::find(auth()->id());
        //delete user data if role of the current user is admin
        if($authUser->role_id == 1){//1 == admin
            User::destroy($id);
            return response([
                'message' => 'User deleted',
                'users' => User::all()
            ]);
        }

        return response([
            'message' => 'Unauthorized User. Needs admin privileges.',
        ], 401);
    }
}
