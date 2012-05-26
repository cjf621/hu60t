<?php
/* </div> </form> </span> …… */
function smarty_prefilter_hu60ext($source,$smarty)
{
global $PAGE;
$bid=hu60::$bid;
unset($bid[$PAGE['bid']]);
$bid=implode('|',array_keys($bid));
$l=preg_quote($smarty->left_delimiter);
$r=preg_quote($smarty->right_delimiter);
return preg_replace(
 array('!'.$l.'or'.$r.'!U','!'.$l.'xor'.$r.'!U','!'.$l.'\?(.*)'.$r.'!Ue','!'.$l.'/div(.*)'.$r.'!U','!'.$l.'/form(.*)'.$r.'!U','!'.$l.'/span(.*)'.$r.'!U', "!$l/?is$PAGE[bid]$r!U",'!'.$l.'is('.$bid.')'.$r.'.*'.$l.'/is\\1'.$r.'!uisU'),
 array('|','^','urldecode("\1")','{enddiv\1}','{endform\1}','{endspan\1}', '','')
 ,$source);
}
