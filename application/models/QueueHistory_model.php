<?php 
defined('BASEPATH') or exit('No direct script access allowed');

class QueueHistory_model extends CI_Model
{


    function __construct() {
        parent::__construct();
    }


    //guestbook di atas
    
    // public function get_all()
    // {
    //     $queue_histories = $this->db->get('vq_queue_history')->result();
    //     return $queue_histories;
    // }

    // public function get($history_id)
    // {
    //     $queue_history = $this->db->get_where('vq_history', ['queue_history_id' => $history_id ])->row();
    //     return $queue_history;
    // }
 

    // public function delete($queue_id)
    // {
    //     $result = $this->db->delete('vq_queue', array('queue_id' => $queue_id));
    //     return $result;
    // }

    // public function insert($history_id)
    // {
    //     $result = $this->db->insert('vq_history', array('queue_history_id' => $history_id));
    //     return $result;
    // }


}
