<?php 
defined('BASEPATH') or exit('No direct script access allowed');

class Queue_model extends CI_Model
{

    protected $table = 'vq_queue';

    protected $primaryKey = 'queue_id';

    protected $allowedFields = ['name', 'email'];
    

    function __construct() {
        parent::__construct();
    }



    //guestbook di atas
    
    
    public function get_all()
    {
        $queues = $this->db->get('vq_queue')->result();
        return $queues;
    }

    public function get($queue_id)
    {
        $queue = $this->db->get_where('vq_queue', ['queue_id' => $queue_id ])->row();
        return $queue;
    }
 

    public function delete($queue_id)
    {
        $result = $this->db->delete('vq_queue', array('queue_id' => $queue_id));
        return $result;
    }

}
