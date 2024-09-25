<?php 
namespace   App\Repositories;

use Illuminate\Database\Eloquent\Model;

class BaseRepository implements IBaseRepository
{
    public function __construct(private Model $model)
    {
        
    }
    public function all()
    {
        return $this->model->all();
    }
    public function find($id)
    {
        return $this->model->find($id);
    }
    public function create(array $data)
    {
        return $this->model->create($data);
    }
    public function update(array $data, $id)
    {
        return $this->model->find($id)->update($data);
    }
    public function delete($id)
    {
        return $this->model->find($id)->delete();
    }
    public function getModel()
    {
        return app()->make($this->model());
    }
    public function model()
    {
        return '';
    }
}