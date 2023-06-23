<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\PageGhins;


class GhinsController extends Controller
{
    public function show()
    {
        return view('ghins');
    }
    public function showGhins()
    {
        $pageGhins = PageGhins::orderBy('position')->get();

        return view('ghins', compact('pageGhins'));
    }


    public function edit($id)
    {
        $pageAccueil = PageGhins::findOrFail($id); // Retrieve the specific PageAccueil item by ID

        return view('edit_ghin', compact('pageAccueil'));
    }

    public function update(Request $request, $id)
    {
        $pageAccueil = PageGhins::findOrFail($id); // Retrieve the specific PageAccueil item by ID

        $pageAccueil->html = $request->input('html');
        $pageAccueil->image = $request->input('image');
        $pageAccueil->position = $request->input('position');
        // Add any other fields you want to update

        $pageAccueil->save();
        $pageGhins = PageGhins::orderBy('position')->get();

        return view('ghins', compact('pageGhins'));
    }
    public function delete($id)
    {
        $pageGhin = PageGhins::findOrFail($id); // Retrieve the specific PageGhins item by ID
        $pageGhin->delete();
        $pageGhins = PageGhins::orderBy('position')->get();

        return view('ghins', compact('pageGhins'));
    }
    public function create(Request $request)
    {
        // Create a new PageGhins instance
        $pageGhin = new PageGhins();
        $pageGhin->html = "A remplacer";
        $pageGhin->image = "gh1.jpg";
        $pageGhin->position = "9999";

        // Save the new record to the database
        $pageGhin->save();

        $pageGhins = PageGhins::orderBy('position')->get();

        return view('ghins', compact('pageGhins'));
    }
}
