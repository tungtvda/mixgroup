<?php
/**
 * Created by PhpStorm.
 * User: tungtv
 * Date: 11/10/14
 * Time: 2:40 PM
 */
if(!defined('SITE_NAME'))
{
    require_once '../../config.php';
}
if(!isset($_SESSION['language'])){
    $_SESSION['language']="vn";
}
require_once DIR.'/controller/default/public.php';
$data['config']=config_getByTop(1,'','');
$data['list_logo']=list_logo_getByTop('','','position asc');
$title=returnLanguageField('title', $data['config'][0]);
$description=$data['config'][0]->description;
$keyword=$data['config'][0]->keyword;
$title=($title)?$title:'mixgroup.com.vn';
$description=($description)?$description:'mixgroup.com.vn';
$keywords=($keyword)?$keyword:'mixgroup.com.vn';
show_header($title,$description,$keywords,$data);
show_index($data);
//show_footer($data);


function returnLanguageField($field, $data){
    if($_SESSION['language']=="en"){
        $lang=$field.'_en';
        return $data->$lang;
    }
    else{
        if($_SESSION['language']=="cn"){
            $lang=$field.'_cn';
            return $data->$lang;
        }else{
            return $data->$field;
        }
    }
}