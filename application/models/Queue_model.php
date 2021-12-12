<?php 
defined('BASEPATH') or exit('No direct script access allowed');

class Queue_model extends CI_Model
{


    function __construct() {
        parent::__construct();
    }


    public function get_all()
    {
        $queues = $this->db->get('vq_queue')->result();
        return $queues;
    }

    //get each record
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

    public function certify($queue_id)
    {
         // Which queue do we want to get from the queue Table?
        $this->db->where('queue_id', $queue_id);
        $query = $this->db->get('vq_queue');
        // Did we get a result? i.e was a valid queue id passed in?
        if($query !== false) {
            
            $row = $query->row();
            
           // $row = $query->getRow();

            $this->db->insert('vq_queue_history', $row);
        } else {
       // Do nothing or handle the case where an illegal number was used...
        }
    }

}
