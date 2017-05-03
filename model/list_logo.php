<?php
class list_logo
{
    public $id,$name,$name_en,$name_cn,$img,$date,$link,$link_fanpage,$content,$content_en,$content_cn,$position;
    public function list_logo($data=array())
    {
    $this->id=isset($data['id'])?$data['id']:'';
    $this->name=isset($data['name'])?$data['name']:'';
    $this->name_en=isset($data['name_en'])?$data['name_en']:'';
    $this->name_cn=isset($data['name_cn'])?$data['name_cn']:'';
    $this->img=isset($data['img'])?$data['img']:'';
    $this->date=isset($data['date'])?$data['date']:'';
    $this->link=isset($data['link'])?$data['link']:'';
    $this->link_fanpage=isset($data['link_fanpage'])?$data['link_fanpage']:'';
    $this->content=isset($data['content'])?$data['content']:'';
    $this->content_en=isset($data['content_en'])?$data['content_en']:'';
    $this->content_cn=isset($data['content_cn'])?$data['content_cn']:'';
    $this->position=isset($data['position'])?$data['position']:'';
          $this->encode();
    }
    public function encode()
        {
            $this->id=addslashes($this->id);
            $this->name=addslashes($this->name);
            $this->name_en=addslashes($this->name_en);
            $this->name_cn=addslashes($this->name_cn);
            $this->img=addslashes($this->img);
            $this->date=addslashes($this->date);
            $this->link=addslashes($this->link);
            $this->link_fanpage=addslashes($this->link_fanpage);
            $this->content=addslashes($this->content);
            $this->content_en=addslashes($this->content_en);
            $this->content_cn=addslashes($this->content_cn);
            $this->position=addslashes($this->position);
        }
    public function decode()
        {
            $this->id=stripslashes($this->id);
            $this->name=stripslashes($this->name);
            $this->name_en=stripslashes($this->name_en);
            $this->name_cn=stripslashes($this->name_cn);
            $this->img=stripslashes($this->img);
            $this->date=stripslashes($this->date);
            $this->link=stripslashes($this->link);
            $this->link_fanpage=stripslashes($this->link_fanpage);
            $this->content=stripslashes($this->content);
            $this->content_en=stripslashes($this->content_en);
            $this->content_cn=stripslashes($this->content_cn);
            $this->position=stripslashes($this->position);
        }
}
