<?php

class Pos_duga extends CI_Controller {

    function Welcome()
    {
        parent::Controller();
        $this->load->helper('url');
        $this->load->helper('form');
        $this->load->helper('file');
    }
    
    function index()
    {
        $this->load->view('upload_pos_duga');
    }

    function do_upload()
    {
        if ( !$this->upload->do_upload())
        {
            $data = array('error' => $this->upload->display_errors());
            
        }
        else
        {
            $data = array('error' => false);
            $upload_data = $this->upload->data();

            $this->load->library('excel_reader');
            $this->excel_reader->setOutputEncoding('CP1251');

            $file =  $upload_data['full_path'];
            $this->excel_reader->read($file);
            error_reporting(E_ALL ^ E_NOTICE);

            // Sheet 1
            $data = $this->excel_reader->sheets[0] ;
                        $dataexcel = Array();
            for ($i = 1; $i <= $data['numRows']; $i++) {

                if($data['cells'][$i][1] == '') break;

                $dataexcel[$i-1]['nama_pos'] = $data['cells'][$i][1];
                $dataexcel[$i-1]['no_pos'] = $data['cells'][$i][2];
                $dataexcel[$i-1]['latitude'] = $data['cells'][$i][3];
                $dataexcel[$i-1]['longitude'] = $data['cells'][$i][4];
                $dataexcel[$i-1]['lokasi_pos'] = $data['cells'][$i][5];
                $dataexcel[$i-1]['ldp'] = $data['cells'][$i][6];
                $dataexcel[$i-1]['catatan'] = $data['cells'][$i][7];

            }
                        
            // delete_files($upload_data['file_path']);
            $this->load->model('model_pos_duga');
            $this->model_pos_duga->tambahdata($dataexcel);
            $data['pos_duga'] = $this->model_pos_duga->data_pos_duga();
        }
        $this->load->view('view_pos_duga', $data);
    }
}

/* End of file welcome.php */
/* Location: ./system/application/controllers/welcome.php */