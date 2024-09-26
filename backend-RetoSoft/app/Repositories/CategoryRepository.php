<?php 
namespace App\Repositories;

use App\Models\Category;

class CategoryRepository extends BaseRepository implements IBaseRepository
{
    public function __construct(protected Category $model)
    {
        parent::__construct($model);
    }
}