<?php 
namespace App\Repositories;
use App\Models\LabOptionsTest;
class LabOptionTestRepository extends BaseRepository implements IBaseRepository
{
    public function __construct(protected LabOptionsTest $model)
    {
        parent::__construct($model);
    }
}