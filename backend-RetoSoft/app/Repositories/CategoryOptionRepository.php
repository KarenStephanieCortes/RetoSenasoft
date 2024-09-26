<?php 
namespace App\Repositories;

use App\Models\CategoryOption;

class CategoryOptionRepository extends BaseRepository implements IBaseRepository
{
    public function __construct(protected CategoryOption $model)
    {
        parent::__construct($model);
    }
}