<?php
namespace App\Services;

use App\Repositories\UserRepository;
use Tymon\JWTAuth\Facades\JWTAuth;

class UserService extends BaseService implements IBaseService
{
    public function __construct(private UserRepository $repository)
    {
        parent::__construct($repository);
    }

    public function login($request){
        $dateBirth = $request["date_of_birth"];
        $document = $request["document"];
        $typeDocument = $request["document_type"];
    
        $userAuth = $this->repository->findByBirthdateAndDocumentTypeAndDocument($dateBirth, $document, $typeDocument);
        // Autenticar al usuario y generamos su token
        if ($userAuth) {
            $user = $this->repository->findByEmail($request['document']);
            $token = JWTAuth::fromUser($user);
            return response()->json([
                'token' => $token,
                'user' => $user
            ]);
        } else {
            return response()->json([
                'message' => 'Unauthorized'
            ], 401);
        }
    }
}