<?php
/* Smarty version 5.8.0, created on 2026-05-08 09:54:05
  from 'file:admin.settings.analytics.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fdb2bd202fc9_11246637',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '72cc7eaccf826a056eb522af5a5943f76fdf23ec' => 
    array (
      0 => 'admin.settings.analytics.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_69fdb2bd202fc9_11246637 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><!-- card-header -->
<div class="card-header with-icon">
  <!-- panel title -->
  <i class="fa fa-cog mr10"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Settings");?>
 &rsaquo; <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Analytics");?>

  <!-- panel title -->
</div>
<!-- card-header -->

<!-- Analytics -->
<form class="js_ajax-forms" data-url="admin/settings.php?edit=analytics">
  <div class="card-body">
    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Tracking Code");?>

      </label>
      <div class="col-md-9">
        <textarea class="form-control" name="message" rows="3"><?php echo $_smarty_tpl->getValue('system')['analytics_code'];?>
</textarea>
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The analytics tracking code (Ex: Google Analytics)");?>

        </div>
      </div>
    </div>

    <!-- success -->
    <div class="alert alert-success mt15 mb0 x-hidden"></div>
    <!-- success -->

    <!-- error -->
    <div class="alert alert-danger mt15 mb0 x-hidden"></div>
    <!-- error -->
  </div>
  <div class="card-footer text-end">
    <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Save Changes");?>
</button>
  </div>
</form>
<!-- Analytics --><?php }
}
