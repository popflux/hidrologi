<?php 
class Model_pos_duga extends Ci_Model
{
	function Data_model()
    {
		parent::Model();
        $this->load->database();
    }

	function tambahdata($dataarray)
    {
        for($i=0;$i<count($dataarray);$i++)
        {
            $data = array(
                'nama_pos'=>$dataarray[$i]['nama_pos'],
                'no_pos'=>$dataarray[$i]['no_pos'],
                'latitude'=>$dataarray[$i]['latitude'],
                'longitude'=>$dataarray[$i]['longitude'],
                'lokasi_pos'=>$dataarray[$i]['lokasi_pos'],
                'ldp'=>$dataarray[$i]['ldp'],
                'catatan'=>$dataarray[$i]['catatan'],
            );
            $this->db->insert('pos_duga', $data);
		}
	}

	function data_pos_duga() 
	{     
        $query = $this->db->get('pos_duga');
        return $query->result();
    }
}
