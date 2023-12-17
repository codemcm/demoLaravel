<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Carrera extends Model
{
    use HasFactory;
    protected $table = 'Carreras';
    protected $fillable = ['Nombre', 'FechaCreacion', 'EditadoPor'];
    
}
