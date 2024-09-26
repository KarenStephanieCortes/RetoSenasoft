<?php 
namespace App\Repositories;

use App\Models\ProcedureCode;

class ProcedureCodeRepository extends BaseRepository implements IBaseRepository
{
    public function __construct(protected ProcedureCode $model)
    {
        parent::__construct($model);
    }
}