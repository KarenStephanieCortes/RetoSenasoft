<?php 
namespace App\Repositories;

use App\Models\LabProcedure;

class LabProcedureRepository extends BaseRepository implements IBaseRepository
{
    public function __construct(protected LabProcedure $model)
    {
        parent::__construct($model);
    }
}