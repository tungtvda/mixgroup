<?php
require_once DIR.'/model/list_logo.php';
require_once DIR.'/model/sqlconnection.php';
//
function list_logo_Get($command)
{
            $array_result=array();
    $key=md5($command);
    if(CACHE)
    {
        $mycache=ConnectCache();
        $cachecommand=$mycache->get($key);
        if($cachecommand)
        {
            $array_result=$cachecommand;
        }
        else
        {
          $result=mysqli_query(ConnectSql(),$command);
            if($result!=false)while($row=mysqli_fetch_array($result))
            {
                $new_obj=new list_logo($row);
                $new_obj->decode();
                array_push($array_result,$new_obj);
            }
            $mycache->set($key,$array_result);
            saveCacheGroup($mycache,$key,'list_logo');
        }
    }
    else
    {
       $result=mysqli_query(ConnectSql(),$command);
       if($result!=false)while($row=mysqli_fetch_array($result))
        {
            $new_obj=new list_logo($row);
            $new_obj->decode();
            array_push($array_result,$new_obj);
        }
    }
    return $array_result;
}
//
function list_logo_getById($id)
{
    return list_logo_Get('select * from list_logo where id='.$id);
}
//
function list_logo_getByAll()
{
    return list_logo_Get('select * from list_logo');
}
//
function list_logo_getByTop($top,$where,$order)
{
    return list_logo_Get("select * from list_logo ".(($where!='')?(' where '.$where):'').(($order!='')?" Order By ".$order:'').(($top!='')?' limit '.$top:''));
}
//
function list_logo_getByPaging($CurrentPage, $PageSize,$Order,$where)
{
   return list_logo_Get("SELECT * FROM  list_logo ".(($where!='')?(' where '.$where):'')." Order By ".$Order." Limit ".(($CurrentPage-1)*$PageSize)." , ".$PageSize);
}
//
function list_logo_getByPagingReplace($CurrentPage, $PageSize,$Order,$where)
{
   return list_logo_Get("SELECT list_logo.id, list_logo.name, list_logo.name_en, list_logo.name_cn, list_logo.img, list_logo.date, list_logo.link, list_logo.link_fanpage, list_logo.link_youtube, list_logo.content, list_logo.content_en, list_logo.content_cn, list_logo.position FROM  list_logo ".(($where!='')?(' where '.$where):'')." Order By ".$Order." Limit ".(($CurrentPage-1)*$PageSize)." , ".$PageSize);
}
//
function list_logo_insert($obj)
{
    return exe_query("insert into list_logo (name,name_en,name_cn,img,date,link,link_fanpage,link_youtube,content,content_en,content_cn,position) values ('$obj->name','$obj->name_en','$obj->name_cn','$obj->img','$obj->date','$obj->link','$obj->link_fanpage','$obj->link_youtube','$obj->content','$obj->content_en','$obj->content_cn','$obj->position')",'list_logo');
}
//
function list_logo_update($obj)
{
    return exe_query("update list_logo set name='$obj->name',name_en='$obj->name_en',name_cn='$obj->name_cn',img='$obj->img',date='$obj->date',link='$obj->link',link_fanpage='$obj->link_fanpage',link_youtube='$obj->link_youtube',content='$obj->content',content_en='$obj->content_en',content_cn='$obj->content_cn',position='$obj->position' where id=$obj->id",'list_logo');
}
//
function list_logo_delete($obj)
{
    return exe_query('delete from list_logo where id='.$obj->id,'list_logo');
}
//
function list_logo_count($where)
{
    $result=mysqli_query(ConnectSql(),'select COUNT(id) as count from list_logo '.(($where!='')?'where '.$where:''));
    if($result!=false)
    {
         $row=mysqli_fetch_array($result);
         return $row['count'];
    }
   else return false;
}
