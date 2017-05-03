<?php
require_once DIR.'/model/config.php';
require_once DIR.'/model/sqlconnection.php';
//
function config_Get($command)
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
                $new_obj=new config($row);
                $new_obj->decode();
                array_push($array_result,$new_obj);
            }
            $mycache->set($key,$array_result);
            saveCacheGroup($mycache,$key,'config');
        }
    }
    else
    {
       $result=mysqli_query(ConnectSql(),$command);
       if($result!=false)while($row=mysqli_fetch_array($result))
        {
            $new_obj=new config($row);
            $new_obj->decode();
            array_push($array_result,$new_obj);
        }
    }
    return $array_result;
}
//
function config_getById($Id)
{
    return config_Get('select * from config where Id='.$Id);
}
//
function config_getByAll()
{
    return config_Get('select * from config');
}
//
function config_getByTop($top,$where,$order)
{
    return config_Get("select * from config ".(($where!='')?(' where '.$where):'').(($order!='')?" Order By ".$order:'').(($top!='')?' limit '.$top:''));
}
//
function config_getByPaging($CurrentPage, $PageSize,$Order,$where)
{
   return config_Get("SELECT * FROM  config ".(($where!='')?(' where '.$where):'')." Order By ".$Order." Limit ".(($CurrentPage-1)*$PageSize)." , ".$PageSize);
}
//
function config_getByPagingReplace($CurrentPage, $PageSize,$Order,$where)
{
   return config_Get("SELECT config.Id, config.logo, config.icon, config.backgroup, config.name, config.name_en, config.name_cn, config.name_color, config.name_size, config.title, config.title_en, config.title_cn, config.keyword, config.description FROM  config ".(($where!='')?(' where '.$where):'')." Order By ".$Order." Limit ".(($CurrentPage-1)*$PageSize)." , ".$PageSize);
}
//
function config_insert($obj)
{
    return exe_query("insert into config (logo,icon,backgroup,name,name_en,name_cn,name_color,name_size,title,title_en,title_cn,keyword,description) values ('$obj->logo','$obj->icon','$obj->backgroup','$obj->name','$obj->name_en','$obj->name_cn','$obj->name_color','$obj->name_size','$obj->title','$obj->title_en','$obj->title_cn','$obj->keyword','$obj->description')",'config');
}
//
function config_update($obj)
{
    return exe_query("update config set logo='$obj->logo',icon='$obj->icon',backgroup='$obj->backgroup',name='$obj->name',name_en='$obj->name_en',name_cn='$obj->name_cn',name_color='$obj->name_color',name_size='$obj->name_size',title='$obj->title',title_en='$obj->title_en',title_cn='$obj->title_cn',keyword='$obj->keyword',description='$obj->description' where Id=$obj->Id",'config');
}
//
function config_delete($obj)
{
    return exe_query('delete from config where Id='.$obj->Id,'config');
}
//
function config_count($where)
{
    $result=mysqli_query(ConnectSql(),'select COUNT(Id) as count from config '.(($where!='')?'where '.$where:''));
    if($result!=false)
    {
         $row=mysqli_fetch_array($result);
         return $row['count'];
    }
   else return false;
}
