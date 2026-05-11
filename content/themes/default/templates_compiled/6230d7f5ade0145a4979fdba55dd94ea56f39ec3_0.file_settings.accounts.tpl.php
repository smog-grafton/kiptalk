<?php
/* Smarty version 5.8.0, created on 2026-05-09 22:03:31
  from 'file:settings.accounts.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69ffaf33896034_26642526',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6230d7f5ade0145a4979fdba55dd94ea56f39ec3' => 
    array (
      0 => 'settings.accounts.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__svg_icons.tpl' => 1,
    'file:__feeds_user.tpl' => 2,
    'file:_no_data.tpl' => 1,
  ),
))) {
function content_69ffaf33896034_26642526 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><div class="card-header with-icon">
  <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"user_add",'class'=>"main-icon mr15",'width'=>"24px",'height'=>"24px"), (int) 0, $_smarty_current_dir);
?>
  <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Connected Accounts");?>

  <?php if ($_smarty_tpl->getValue('user')->_data['user_id'] == $_smarty_tpl->getValue('user')->_data['user_master_account']) {?>
    <div class="float-end">
      <button type="button" class="btn btn-md btn-primary" data-toggle="modal" data-url="#account-connector">
        <i class="fa fa-plus-circle"></i><span class="ml5 d-none d-lg-inline-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Connect Account");?>
</span>
      </button>
    </div>
  <?php }?>
</div>
<div class="card-body">
  <?php if ($_smarty_tpl->getSmarty()->getModifierCallback('count')($_smarty_tpl->getValue('user')->_data['connected_accounts']) > 1) {?>
    <?php if ($_smarty_tpl->getValue('user')->_data['user_id'] == $_smarty_tpl->getValue('user')->_data['user_master_account']) {?>
      <ul>
        <?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('user')->_data['connected_accounts'], '_user');
$foreach0DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('_user')->value) {
$foreach0DoElse = false;
?>
          <?php if ($_smarty_tpl->getValue('_user')['user_id'] != $_smarty_tpl->getValue('user')->_data['user_id']) {?>
            <?php $_smarty_tpl->renderSubTemplate('file:__feeds_user.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_tpl'=>"list",'_connection'=>"connected_account_remove"), (int) 0, $_smarty_current_dir);
?>
          <?php }?>
        <?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
      </ul>
    <?php } else { ?>
      <div class="alert alert-info">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("You are connected to this account");?>

      </div>
      <ul>
        <?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('user')->_data['connected_accounts'], '_user');
$foreach1DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('_user')->value) {
$foreach1DoElse = false;
?>
          <?php if ($_smarty_tpl->getValue('_user')['user_id'] == $_smarty_tpl->getValue('user')->_data['user_master_account']) {?>
            <?php $_smarty_tpl->renderSubTemplate('file:__feeds_user.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_tpl'=>"list",'_connection'=>"connected_account_revoke"), (int) 0, $_smarty_current_dir);
?>
          <?php }?>
        <?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
      </ul>
    <?php }?>
  <?php } else { ?>
    <?php $_smarty_tpl->renderSubTemplate('file:_no_data.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
  <?php }?>
</div><?php }
}
