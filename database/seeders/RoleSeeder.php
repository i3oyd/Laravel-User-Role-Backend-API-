<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('roles')->insert([
            'name' => 'admin', 'description' => 'can register, create, delete, update, assign role to all'
        ]);

        DB::table('roles')->insert([
            'name' => 'manager', 'description' => 'higher authority than the staff, can create new info'
        ]);

        DB::table('roles')->insert([
            'name' => 'staff', 'description' => 'a regular user that can only edit, update, create his own info'
        ]);
    }
}
