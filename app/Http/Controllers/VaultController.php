<?php

namespace App\Http\Controllers;

use App\Model\Post;
use App\User;
use Illuminate\Http\Request;

class VaultController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // checking if in public folder->voult folder this loggedin user has a folder with his username

        $username = auth()->user()->username;
        $path = public_path() . '/vault/' . $username;
        if (!file_exists($path)) {
            mkdir($path, 0777, true);
        }

        $files = scandir($path);
        
        return view('vault.index', compact('files'));
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
    public function store(Request $request, Post $model)
    {
        $validatedData = $request->validate([
            'attachment' => 'required|image|max:10240',
        ]);
        
        $model->addMedia($request->file('attachment'))->toMediaCollection('images');

        return 'File uploaded successfully.';
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
