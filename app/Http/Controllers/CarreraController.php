<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Carrera;
class CarreraController extends Controller
{
    //
    public function index(){
        $carreras=Carrera::all();
        return response()->json($carreras);
    }

    public function store(Request $request){
        $carrera = new Carrera;
        $carrera->Nombre = $request->Nombre;
        $carrera->FechaCreacion = $request->FechaCreacion;
        $carrera->EditadoPor = $request->EditadoPor;
        $carrera->save();
        return response()->json([
            "mensaje"=>"Carrera registrada"
        ],201);
    }
}
