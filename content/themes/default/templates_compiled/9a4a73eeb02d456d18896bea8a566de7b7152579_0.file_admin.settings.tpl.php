<?php
/* Smarty version 5.8.0, created on 2026-05-08 09:52:52
  from 'file:admin.settings.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fdb2749eafd0_42646047',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9a4a73eeb02d456d18896bea8a566de7b7152579' => 
    array (
      0 => 'admin.settings.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:admin.settings.system.tpl' => 1,
    'file:admin.settings.posts.tpl' => 1,
    'file:admin.settings.ai.tpl' => 1,
    'file:admin.settings.registration.tpl' => 1,
    'file:admin.settings.accounts.tpl' => 1,
    'file:admin.settings.email.tpl' => 1,
    'file:admin.settings.sms.tpl' => 1,
    'file:admin.settings.notifications.tpl' => 1,
    'file:admin.settings.chat.tpl' => 1,
    'file:admin.settings.live.tpl' => 1,
    'file:admin.settings.uploads.tpl' => 1,
    'file:admin.settings.security.tpl' => 1,
    'file:admin.settings.payments.tpl' => 1,
    'file:admin.settings.limits.tpl' => 1,
    'file:admin.settings.analytics.tpl' => 1,
  ),
))) {
function content_69fdb2749eafd0_42646047 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><div class="card">
  <?php if ($_smarty_tpl->getValue('sub_view') == '') {?>
    <?php $_smarty_tpl->renderSubTemplate('file:admin.settings.system.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
  <?php } elseif ($_smarty_tpl->getValue('sub_view') == "posts") {?>
    <?php $_smarty_tpl->renderSubTemplate('file:admin.settings.posts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
  <?php } elseif ($_smarty_tpl->getValue('sub_view') == "ai") {?>
    <?php $_smarty_tpl->renderSubTemplate('file:admin.settings.ai.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
  <?php } elseif ($_smarty_tpl->getValue('sub_view') == "registration") {?>
    <?php $_smarty_tpl->renderSubTemplate('file:admin.settings.registration.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
  <?php } elseif ($_smarty_tpl->getValue('sub_view') == "accounts") {?>
    <?php $_smarty_tpl->renderSubTemplate('file:admin.settings.accounts.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
  <?php } elseif ($_smarty_tpl->getValue('sub_view') == "email") {?>
    <?php $_smarty_tpl->renderSubTemplate('file:admin.settings.email.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
  <?php } elseif ($_smarty_tpl->getValue('sub_view') == "sms") {?>
    <?php $_smarty_tpl->renderSubTemplate('file:admin.settings.sms.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
  <?php } elseif ($_smarty_tpl->getValue('sub_view') == "notifications") {?>
    <?php $_smarty_tpl->renderSubTemplate('file:admin.settings.notifications.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
  <?php } elseif ($_smarty_tpl->getValue('sub_view') == "chat") {?>
    <?php $_smarty_tpl->renderSubTemplate('file:admin.settings.chat.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
  <?php } elseif ($_smarty_tpl->getValue('sub_view') == "live") {?>
    <?php $_smarty_tpl->renderSubTemplate('file:admin.settings.live.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
  <?php } elseif ($_smarty_tpl->getValue('sub_view') == "uploads") {?>
    <?php $_smarty_tpl->renderSubTemplate('file:admin.settings.uploads.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
  <?php } elseif ($_smarty_tpl->getValue('sub_view') == "security") {?>
    <?php $_smarty_tpl->renderSubTemplate('file:admin.settings.security.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
  <?php } elseif ($_smarty_tpl->getValue('sub_view') == "payments") {?>
    <?php $_smarty_tpl->renderSubTemplate('file:admin.settings.payments.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
  <?php } elseif ($_smarty_tpl->getValue('sub_view') == "limits") {?>
    <?php $_smarty_tpl->renderSubTemplate('file:admin.settings.limits.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
  <?php } elseif ($_smarty_tpl->getValue('sub_view') == "analytics") {?>
    <?php $_smarty_tpl->renderSubTemplate('file:admin.settings.analytics.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
  <?php }?>
</div><?php }
}
