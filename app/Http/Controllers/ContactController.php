<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\PageContact;


class ContactController extends Controller
{

    public function showContact()
    {
        $pageContact = PageContact::orderBy('position')->get();

        return view('contact', compact('pageContact'));
    }


    public function edit($id)
    {
        $pageAccueil = PageContact::findOrFail($id); // Retrieve the specific PageAccueil item by ID

        return view('edit_contact', compact('pageContact'));
    }

    public function update(Request $request, $id)
    {
        $pageAccueil = PageContact::findOrFail($id); // Retrieve the specific PageAccueil item by ID

        $pageAccueil->html = $request->input('html');
        $pageAccueil->image = $request->input('image');
        $pageAccueil->position = $request->input('position');
        // Add any other fields you want to update

        $pageAccueil->save();
        $pageContact = PageContact::orderBy('position')->get();

        return view('contact', compact('pageContact'));
    }
    public function delete($id)
    {
        $pageGhin = PageContact::findOrFail($id); // Retrieve the specific PageContact item by ID
        $pageGhin->delete();
        $pageContact = PageContact::orderBy('position')->get();

        return view('contact', compact('pageContact'));
    }
    public function create(Request $request)
    {
        // Create a new PageContact instance
        $pageGhin = new PageContact();
        $pageGhin->html = "A remplacer";
        $pageGhin->image = "gh1.jpg";
        $pageGhin->position = "9999";

        // Save the new record to the database
        $pageGhin->save();

        $pageContact = PageContact::orderBy('position')->get();

        return view('contact', compact('pageContact'));
    }
}
