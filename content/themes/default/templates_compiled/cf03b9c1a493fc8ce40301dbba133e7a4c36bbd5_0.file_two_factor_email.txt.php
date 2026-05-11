<?php
/* Smarty version 5.8.0, created on 2026-05-10 06:44:38
  from 'file:emails/two_factor_email.txt' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_6a002956987916_95834500',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cf03b9c1a493fc8ce40301dbba133e7a4c36bbd5' => 
    array (
      0 => 'emails/two_factor_email.txt',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_6a002956987916_95834500 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates/emails';
echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Hi");?>
 <?php echo $_smarty_tpl->getValue('user')['user_name'];?>
,

<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("To complete the sign-in process, please use the following 6-digit key");?>


<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Two-factor authentication key");?>
: <?php echo $_smarty_tpl->getValue('two_factor_key');?>


<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')($_smarty_tpl->getValue('system')['system_title']);?>
 <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Team");
}
}
