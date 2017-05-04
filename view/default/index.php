<?php
/**
 * Created by PhpStorm.
 * User: tungtv
 * Date: 11/10/14
 * Time: 2:44 PM
 */
require_once DIR . '/view/default/public.php';
require_once DIR . '/common/cls_fast_template.php';
function show_index($data = array())
{
    $asign = array();
    $asign['language_img'] = $_SESSION['language'];
    $asign['link_anh'] = $data['config'][0]->logo;
    $asign['name_color'] = $data['config'][0]->name_color;
    $asign['name_size'] = $data['config'][0]->name_size;
    $asign['backgroup'] = $data['config'][0]->backgroup;
    $asign['name']=returnLanguageField('name', $data['config'][0]);
    $asign['lang_list'] ='';
    if($_SESSION['language']=="en"){
        $asign['lang_list'] ='<li class="menu-item current-menu-item current_page_item">
                                        <a class="vn_lang" href="javascript:void(0)">Việt Nam
                                        </a>
                                    </li>
                                    <li class="menu-item">
                                        <a class="cn_lang" href="javascript:void(0)">英语</a>
                                    </li>';
    }
    else{
        if($_SESSION['language']=="cn"){
            $asign['lang_list'] ='<li class="menu-item current-menu-item current_page_item">
                                        <a class="vn_lang" href="javascript:void(0)">Việt Nam
                                        </a>
                                    </li>
                                    <li class="menu-item">
                                        <a class="en_lang" href="javascript:void(0)">English</a>
                                    </li>';
        }else{
            $asign['lang_list'] ='<li class="menu-item current-menu-item current_page_item">
                                        <a class="en_lang" href="javascript:void(0)">English
                                        </a>
                                    </li>
                                    <li class="menu-item">
                                        <a class="cn_lang" href="javascript:void(0)">英语</a>
                                    </li>';
        }
    }
//
    $asign['list_logo'] = "";
    if(count($data['list_logo'])>0)
    {
        $asign['list_logo'] = print_item('list_logo', $data['list_logo']);
    }
    print_template($asign, 'index');
}



