<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Common_model extends CI_Model {	

    public function selectAllWhr($tblname,$where,$condition)
    {
        $this->db->where($where,$condition);
        $this->db->where('display','Y');
        $query = $this->db->get($tblname);
        if($query->num_rows() > 0)
        {
            return $query->result();
        }
        else
        {
            return false;
        }       
    }

    public function updateDetails($tblname,$where,$condition,$data) 
    {
        $this->db->where($where, $condition); 
        $query = $this->db->update($tblname, $data); 
        return $query; 
    }

    public function addData($tablename,$data) 
    {
        $query=$this->db->insert($tablename,$data); 
        $user_id= $this->db->insert_id(); 
        if($query) {
            return $user_id; 
        } 
        else {
            return false; 
        } 
    }

    public function fetchDataASC($table_name, $asc_by_col_name) 
    {
        $this->db->select('*')->from($table_name)->where('display', 'Y')->order_by($asc_by_col_name, "asc"); 
        $qry = $this->db->get(); 
        if($qry->num_rows()>0) 
        {
            return $qry->result();
        } 
        else 
        {
            return false; 
        } 
    }

    public function selectMultiDataFor($tblname,$where1,$where2,$condition1,$condition2)
    {
        $this->db->where($where1,$condition1);
        $this->db->where($where2,$condition2);
        $this->db->where('display','Y');
        $query = $this->db->get($tblname);

        if($query->num_rows() > 0)
        {
            return $query->result();
        }
        else
        {
            return false;
        }
    }

    public function selectDetailsWhr($tblname,$where,$condition) 
    {
        $this->db->where('display', 'Y')->where($where,$condition); 
        $query = $this->db->get($tblname); 
        if($query->num_rows()== 1) 
        {
            return $query->row(); 
        } 
        else 
        {
            return false; 
        } 
    }

    public function singlejoin2tbl($tbl1,$tbl2,$where,$condition,$id)
    {
        $query=$this->db->query("SELECT * from $tbl1 tbl1 left join $tbl2 tbl2 on tbl1.$where=tbl2.$where AND tbl2.display='Y' where tbl1.$condition=$id AND tbl1.display='Y' ");
        if($query->num_rows()==1)
        {
            return $query->row();
        }
        else
        {
            return false;
        }
    }

    public function alljoin2tbl($tbl1,$tbl2,$where)
    {
        $query=$this->db->query("SELECT * from $tbl1 tbl1 left join $tbl2 tbl2 on tbl1.$where=tbl2.$where where  tbl1.display='Y' AND tbl2.display='Y'");
        if($query->num_rows() > 0)
        {
            foreach ($query->result() as $row)
            {
                $tbl_data[]=$row;
            }
            return $tbl_data;
        }
        else
        {
            return false;
        }
    }

    public function SaveMultiData($tablename,$data)
    {
        $query=$this->db->insert_batch($tablename,$data);
        if($query)
        {
            return true;
        }
        else
        {
            return false;
        }           
    }

    public function duplicate($id,$p_key,$tbl,$where,$value) 
    {
        if (empty($value)) 
        {
            return FALSE; 
        } 
        $query=$this->db->query("SELECT COUNT(*) AS numrows FROM $tbl WHERE $where = ? AND $p_key != ? AND display='Y'",array($value,$id)); 
        if($query->num_rows()==1) 
        {
            return $query->row(); 
        } 
        else 
        {
            return false; 
        } 
    }
    
    public function UpdateMultiData($tblname,$data,$condition)
    {
        $result=$this->db->update_batch($tblname,$data,$condition);
        if($result) 
        {
            return true; 
        } 
        else 
        {
            return false; 
        }
    }
}
