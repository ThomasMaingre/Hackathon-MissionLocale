<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Seo;

class SeoController extends Controller
{
    public function showForm()
    {
        $seo = Seo::latest()->first();
        return view('edit_seo', compact('seo'));
    }

    public function update(Request $request)
    {
        $seo = new Seo();
        $seo->html_accueil = $request->seo_accueil;
        $seo->html_ghins = $request->seo_ghins;

        $seo->save();

        $seo = Seo::orderByDesc('id')->first();

        return view('edit_seo', compact('seo'));
    }
}
