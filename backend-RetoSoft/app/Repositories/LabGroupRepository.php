<?php 
namespace App\Repositories;

use App\Models\LabGroup;

class LabGroupRepository extends BaseRepository implements IBaseRepository
{
    public function __construct(protected LabGroup $model)
    {
        parent::__construct($model);
    }
}