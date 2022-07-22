<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RoleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return ['roles' => Role::all()];
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user = User::where('id',auth()->id())->first();
        if($user->role_id != 1){ //1 == admin
            return response([
                'message' => 'Unauthorized User. Needs admin privileges.',
            ], 401);
        }
        $fields = $request->validate([
            'name' => 'required|string',
            'description' => 'required|string',
        ]);
        
        $role = Role::create([
            'name' => $fields['name'],
            'description' => $fields['description']
        ]);
        if($role){
            return response([
                'message' => 'Role created',
                'role' => $role
            ]);
        }

    }


    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Role  $role
     * @return \Illuminate\Http\Response
     */
    public function show(Role $role)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Role  $role
     * @return \Illuminate\Http\Response
     */
    public function edit($role)
    {
        return ['role' => Role::find($role)];
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Role  $role
     * @return \Illuminate\Http\Response
     */
    public function update($role,Request $request)
    {
        $fields = $request->validate([
            'name' => 'required|string',
            'description' => 'required|string',
        ]);

        $role = Role::find($role);
        //update role data if role of current user is admin
        if(auth()->id() == 1){//1=admin
            $role->update(['name' => $fields['name'],
            'description' => $fields['description']
        ]);
        return response([
            'message' => 'Role updated.',
            'role' => $role
        ]);
        }
        return response([
            'message' => 'Unauthorized User. Needs admin privileges.'
        ], 401);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Role  $role
     * @return \Illuminate\Http\Response
     */
    public function destroy($role)
    {
        $user = User::find(auth()->id());
        //delete user data if role of the current user is admin
        if($user->role_id == 1){//1 == admin
            Role::destroy($role);
            return response([
                'message' => 'Role deleted'
            ]);
        }

        return response([
            'message' => 'Unauthorized User. Needs admin privileges.'
        ], 401);
    }
}
