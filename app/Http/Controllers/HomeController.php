<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\PageAccueil;

class HomeController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function showIndex()
    {
        $pageAccueils = PageAccueil::all(); // Retrieve all rows from the page_accueil table

        return view('index', compact('pageAccueils'));
    }

    public function showGhins()
    {
        return view('ghins');
    }

    public function showContact()
    {
        return view('contact');
    }

    public function showGouvernance()
    {
        return view('gouvernance');
    }

    public function edit($id)
    {
        $pageAccueil = PageAccueil::findOrFail($id); // Retrieve the specific PageAccueil item by ID

        return view('edit', compact('pageAccueil'));
    }

    public function update(Request $request, $id)
    {
        $pageAccueil = pageAccueil::findOrFail($id); // Retrieve the specific PageAccueil item by ID

        $pageAccueil->html = $request->input('html');
        $pageAccueil->image = $request->input('image');
        $pageAccueil->position = $request->input('position');
        // Add any other fields you want to update

        $pageAccueil->save();
        $pageAccueils = pageAccueil::orderBy('position')->get();

        return view('index', compact('pageAccueils'));
    }
    public function create(Request $request)
    {
        $pageAccueil = new PageAccueil();
        $pageAccueil->html = "A remplacer";
        $pageAccueil->image = "gh1.jpg";
        $pageAccueil->position = "9999";
        $pageAccueil->save();
        $pageAccueils = PageAccueil::orderBy('position')->get();
        return view('index', compact('pageAccueils'));
    }
}
