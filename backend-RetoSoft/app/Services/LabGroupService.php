<?php 
namespace App\Services;

use App\Repositories\LabGroupRepository;

class LabGroupService extends BaseService implements IBaseService
{
    public function __construct(private LabGroupRepository $labGroupRepository){
        parent::__construct($labGroupRepository);
    }
}