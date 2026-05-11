<?php
/* Smarty version 5.8.0, created on 2026-05-09 17:57:11
  from 'file:ajax.comments.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69ff7577cb7664_05060490',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '122c29278437e73c14aebe8548569925b2406070' => 
    array (
      0 => 'ajax.comments.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__feeds_comment.tpl' => 1,
  ),
))) {
function content_69ff7577cb7664_05060490 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('comments'), 'comment');
$foreach0DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('comment')->value) {
$foreach0DoElse = false;
?>
  <?php $_smarty_tpl->renderSubTemplate('file:__feeds_comment.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_comment'=>$_smarty_tpl->getValue('comment')), (int) 0, $_smarty_current_dir);
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);
}
}
