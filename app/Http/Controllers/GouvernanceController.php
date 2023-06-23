<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\PageGouvernance;


class GouvernanceController extends Controller
{
    public function show()
    {
        return view('gouvernance');
    }
    public function showGouvernance()
    {
        $pageGouvernance = pageGouvernance::orderBy('position')->get();

        return view('gouvernance', compact('pageGouvernance'));
    }


    public function edit($id)
    {
        $pageGouvernance = pageGouvernance::findOrFail($id); // Retrieve the specific PageAccueil item by ID

        return view('edit_gouvernance', compact('pageGouvernance'));
    }

    public function update(Request $request, $id)
    {
        $pageAccueil = pageGouvernance::findOrFail($id); // Retrieve the specific PageAccueil item by ID

        $pageAccueil->html = $request->input('html');
        $pageAccueil->image = $request->input('image');
        $pageAccueil->position = $request->input('position');
        // Add any other fields you want to update

        $pageAccueil->save();
        $pageGouvernance = pageGouvernance::orderBy('position')->get();

        return view('gouvernance', compact('pageGouvernance'));
    }
    public function delete($id)
    {
        $pageGhin = pageGouvernance::findOrFail($id); // Retrieve the specific pageGouvernance item by ID
        $pageGhin->delete();
        $pageGouvernance = pageGouvernance::orderBy('position')->get();

        return view('gouvernance', compact('pageGouvernance'));
    }
    public function create(Request $request)
    {
        // Create a new pageGouvernance instance
        $pageGhin = new pageGouvernance();
        $pageGhin->html = "A remplacer";
        $pageGhin->image = "gh1.jpg";
        $pageGhin->position = "9999";

        // Save the new record to the database
        $pageGhin->save();

        $pageGouvernance = pageGouvernance::orderBy('position')->get();

        return view('gouvernance', compact('pageGouvernance'));
    }
}
