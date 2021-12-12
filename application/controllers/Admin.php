<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
{


    public function __construct()
    {       
        parent::__construct();
        $this->load->helper('url');
		$this->load->model('Queue_model');
		$this->load->helper('form');
		$this->load->library('form_validation');
        is_logged_in();
    }


    
    public function index()
    {

        $QueueModel = new Queue_model();
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data['title'] = 'Queue List';

        $data['queues'] = $this->Queue_model->get_all();


			$this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('admin/index.php', $data);
            $this->load->view('templates/footer');

    }

    //This is for Delete function in Queue Dashboard
    public function delete($queue_id)
    {
    $item = $this->Queue_model->delete($queue_id);
    $this->session->set_flashdata('success', "Deleted Successfully!");
    redirect(base_url('admin'));
    }


    //This is for Certify in Queue Dashboard
    public function certify($queue_id){

            
            //function untuk insert queue
            $data['title'] = 'Queue List';
            $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
           
            $item = $this->Queue_model->certify($queue_id);
            $this->session->set_flashdata('success', "Certified Successfully!");
            

            
            //SIMPAN DISINI IF NEEDED IN THE FUTURE

            // $queue is passed in via the URL.
            // $this->queue_model->certify($queue_id); 

            // $num = $this->db->query("SELECT MAX(queue_id) AS queue_id FROM vq_queue")->fetch()['queue_id'];
            // $num = ltrim($num, 'QH')+1; #142
            // $queue_history = 'QH'.$num ;

            // qhistoryid = QH + qid
            // $data['queue_history_id'] = $queue_history ->result_array();
            
            // $data['queue'] = $this->db->get($queue_id)->result_array();
    
            // $this->db->insert('vq_queue_history', $data);
            // $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"> menu added!</div>');



            // function utk delete queue
            $item = $this->Queue_model->delete($queue_id);
            $this->session->set_flashdata('success', "Deleted Successfully!");
            redirect(base_url('admin'));
    }
    
   


    public function role()
    {
        $data['title'] = 'Role';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['role'] = $this->db->get('user_role')->result_array();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/role', $data);
        $this->load->view('templates/footer');
    }

   


    public function roleAccess($role_id)
    {
        $data['title'] = 'Role Access';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

        $data['role'] = $this->db->get_where('user_role', ['id' => $role_id])->row_array();

        $this->db->where('id !=', 1);
        $data['menu'] = $this->db->get('user_menu')->result_array();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/role-access', $data);
        $this->load->view('templates/footer');
    }


    public function changeAccess()
    {
        $menu_id = $this->input->post('menuId');
        $role_id = $this->input->post('roleId');

        $data = [
            'role_id' => $role_id,
            'menu_id' => $menu_id
        ];

        $result = $this->db->get_where('user_access_menu', $data);

        if ($result->num_rows() < 1) {
            $this->db->insert('user_access_menu', $data);
        } else {
            $this->db->delete('user_access_menu', $data);
        }

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Access Changed!</div>');
    }

   

}
