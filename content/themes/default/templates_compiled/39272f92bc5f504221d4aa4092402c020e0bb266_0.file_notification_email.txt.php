<?php
/* Smarty version 5.8.0, created on 2026-05-08 23:09:11
  from 'file:emails/notification_email.txt' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fe6d17ea3080_24852026',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '39272f92bc5f504221d4aa4092402c020e0bb266' => 
    array (
      0 => 'emails/notification_email.txt',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_69fe6d17ea3080_24852026 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates/emails';
echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Hi");?>
 <?php echo $_smarty_tpl->getValue('receiver')['name'];?>
,

<?php if (!$_smarty_tpl->getValue('notification')['system_notification']) {
echo $_smarty_tpl->getValue('user')->_data['user_fullname'];
}?> <?php echo $_smarty_tpl->getValue('notification')['message'];?>

<?php echo $_smarty_tpl->getValue('notification')['url'];?>


<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')($_smarty_tpl->getValue('system')['system_title']);?>
 <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Team");
}
}
