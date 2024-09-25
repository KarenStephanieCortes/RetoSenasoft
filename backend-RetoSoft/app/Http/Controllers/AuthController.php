<?php

namespace App\Http\Controllers;

use App\Services\UserService;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    
    public function __construct(private UserService $service)
    {
    }

    /**
     * Metodo para iniciar sesion
     * @author Laura Motato Moreno
     * @param \Illuminate\Http\Request $request
     * @return mixed|\Illuminate\Http\JsonResponse
     */
    public function login(Request $request){
        $credentials = $request->all();
        return $this->service->login($credentials);
    }
}
