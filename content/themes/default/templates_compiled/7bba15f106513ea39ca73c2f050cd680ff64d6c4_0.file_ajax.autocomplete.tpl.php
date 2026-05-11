<?php
/* Smarty version 5.8.0, created on 2026-05-09 05:38:23
  from 'file:ajax.autocomplete.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fec84f452997_53783734',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7bba15f106513ea39ca73c2f050cd680ff64d6c4' => 
    array (
      0 => 'ajax.autocomplete.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_69fec84f452997_53783734 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><ul>
  <?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('users'), '_user');
$foreach0DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('_user')->value) {
$foreach0DoElse = false;
?>
    <li>
      <div class="data-container clickable small <?php if ($_smarty_tpl->getValue('type') == 'tags') {?>js_tag-add<?php } else { ?>js_autocomplete-add<?php }?>" data-uid="<?php echo $_smarty_tpl->getValue('_user')['user_id'];?>
" data-name="<?php if ($_smarty_tpl->getValue('system')['show_usernames_enabled']) {
echo $_smarty_tpl->getValue('_user')['user_name'];
} else {
echo $_smarty_tpl->getValue('_user')['user_firstname'];?>
 <?php echo $_smarty_tpl->getValue('_user')['user_lastname'];
}?>" <?php if ($_smarty_tpl->getValue('_user')['chat_price']) {?>data-chat-price="<?php echo $_smarty_tpl->getValue('_user')['chat_price'];?>
" <?php }?> <?php if ($_smarty_tpl->getValue('_user')['call_price']) {?>data-call-price="<?php echo $_smarty_tpl->getValue('_user')['call_price'];?>
" <?php }?>>
        <div class="data-avatar">
          <img class="data-avatar" src="<?php echo $_smarty_tpl->getValue('_user')['user_picture'];?>
" alt="">
        </div>
        <div class="data-content">
          <div><strong><?php if ($_smarty_tpl->getValue('system')['show_usernames_enabled']) {
echo $_smarty_tpl->getValue('_user')['user_name'];
} else {
echo $_smarty_tpl->getValue('_user')['user_firstname'];?>
 <?php echo $_smarty_tpl->getValue('_user')['user_lastname'];
}?></strong></div>
        </div>
      </div>
    </li>
  <?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
</ul><?php }
}
