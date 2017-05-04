<?php
require_once '../../config.php';
require_once DIR.'/model/list_logoService.php';
require_once DIR.'/view/admin/list_logo.php';
require_once DIR.'/common/messenger.php';
$data=array();
$insert=true;
if(isset($_SESSION["Admin"]))
{
    if(isset($_GET["action"])&&isset($_GET["id"]))
    {
        if($_GET["action"]=="delete")
        {
            $new_obj= new list_logo();
            $new_obj->id=$_GET["id"];
            list_logo_delete($new_obj);
            header('Location: '.SITE_NAME.'/controller/admin/list_logo.php');
        }
        else if($_GET["action"]=="edit")
        {
            $new_obj=list_logo_getById($_GET["id"]);
            if($new_obj!=false)
            {
                $data['form']=$new_obj[0];
                $data['tab2_class']='default-tab current';
                $data['tab1_class']=' ';
                $insert=false;
            }
            else header('Location: '.SITE_NAME.'/controller/admin/list_logo.php');
        }
        else
        {
            $data['tab1_class']='default-tab current';
        }
    }
    else
    {
        $data['tab1_class']='default-tab current';
    }
    if(isset($_GET["action_all"]))
    {
        if($_GET["action_all"]=="ThemMoi")
        {
            $data['tab2_class']='default-tab current';
            $data['tab1_class']=' ';
        }
        else
        {
            $List_list_logo=list_logo_getByAll();
            foreach($List_list_logo as $list_logo)
            {
                if(isset($_GET["check_".$list_logo->id])) list_logo_delete($list_logo);
            }
            header('Location: '.SITE_NAME.'/controller/admin/list_logo.php');
        }
    }
    if(isset($_POST["name"])&&isset($_POST["name_en"])&&isset($_POST["name_cn"])&&isset($_POST["img"])&&isset($_POST["date"])&&isset($_POST["link"])&&isset($_POST["link_fanpage"])&&isset($_POST["link_youtube"])&&isset($_POST["content"])&&isset($_POST["content_en"])&&isset($_POST["content_cn"])&&isset($_POST["position"]))
    {
       $array=$_POST;
       if(!isset($array['id']))
       $array['id']='0';
       if(!isset($array['name']))
       $array['name']='0';
       if(!isset($array['name_en']))
       $array['name_en']='0';
       if(!isset($array['name_cn']))
       $array['name_cn']='0';
       if(!isset($array['img']))
       $array['img']='0';
       if(!isset($array['date']))
       $array['date']='0';
       if(!isset($array['link']))
       $array['link']='0';
       if(!isset($array['link_fanpage']))
       $array['link_fanpage']='0';
       if(!isset($array['link_youtube']))
       $array['link_youtube']='0';
       if(!isset($array['content']))
       $array['content']='0';
       if(!isset($array['content_en']))
       $array['content_en']='0';
       if(!isset($array['content_cn']))
       $array['content_cn']='0';
       if(!isset($array['position']))
       $array['position']='0';
      $new_obj=new list_logo($array);
        if($insert)
        {
            list_logo_insert($new_obj);
            header('Location: '.SITE_NAME.'/controller/admin/list_logo.php');
        }
        else
        {
            $new_obj->id=$_GET["id"];
            list_logo_update($new_obj);
            $insert=false;
            header('Location: '.SITE_NAME.'/controller/admin/list_logo.php');
        }
    }
    $data['username']=isset($_SESSION["UserName"])?$_SESSION["UserName"]:'quản trị viên';
    $data['count_paging']=list_logo_count('');
    $data['page']=isset($_GET['page'])?$_GET['page']:'1';
    $data['table_body']=list_logo_getByPagingReplace($data['page'],20,'id DESC','');
    // gọi phương thức trong tầng view để hiển thị
    view_list_logo($data);
}
else
{
     header('location: '.SITE_NAME);
}
