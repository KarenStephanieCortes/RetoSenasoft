<?php
namespace App\Repositories;

use App\Models\LabTest;

class LabTestRepository extends BaseRepository implements IBaseRepository
{
    public function __construct(protected LabTest $model)
    {
        parent::__construct($model);
    }
}