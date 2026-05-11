<?php
/* Smarty version 5.8.0, created on 2026-05-08 21:06:34
  from 'file:admin.settings.email.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fe505af33e56_28408747',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '045621cc652eae454b6de824e58642a749511c6c' => 
    array (
      0 => 'admin.settings.email.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__svg_icons.tpl' => 3,
  ),
))) {
function content_69fe505af33e56_28408747 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><!-- card-header -->
<div class="card-header with-icon">
  <!-- panel title -->
  <i class="fa fa-cog mr10"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Settings");?>
 &rsaquo; <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Email");?>

  <!-- panel title -->
</div>
<!-- card-header -->

<form class="js_ajax-forms" data-url="admin/settings.php?edit=email">
  <div class="card-body">
    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"email",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("SMTP");?>
</div>
        <div class="form-text d-none d-sm-block">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable/Disable SMTP email system");?>
<br />
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("PHP mail() function will be used in case of disabled");?>

        </div>
      </div>
      <div class="text-end">
        <label class="switch" for="email_smtp_enabled">
          <input type="checkbox" name="email_smtp_enabled" id="email_smtp_enabled" <?php if ($_smarty_tpl->getValue('system')['email_smtp_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"authentication",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("SMTP Require Authentication");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable/Disable SMTP authentication");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="email_smtp_authentication">
          <input type="checkbox" name="email_smtp_authentication" id="email_smtp_authentication" <?php if ($_smarty_tpl->getValue('system')['email_smtp_authentication']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"ssl",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("SMTP SSL Encryption");?>
</div>
        <div class="form-text d-none d-sm-block">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable/Disable SMTP SSL encryption");?>
<br />
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("TLS encryption will be used in case of disabled");?>

        </div>
      </div>
      <div class="text-end">
        <label class="switch" for="email_smtp_ssl">
          <input type="checkbox" name="email_smtp_ssl" id="email_smtp_ssl" <?php if ($_smarty_tpl->getValue('system')['email_smtp_ssl']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("SMTP Server");?>

      </label>
      <div class="col-md-9">
        <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
          <input type="text" class="form-control" name="email_smtp_server" value="<?php echo $_smarty_tpl->getValue('system')['email_smtp_server'];?>
">
        <?php } else { ?>
          <input type="password" class="form-control" value="*********">
        <?php }?>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("SMTP Port");?>

      </label>
      <div class="col-md-9">
        <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
          <input type="text" class="form-control" name="email_smtp_port" value="<?php echo $_smarty_tpl->getValue('system')['email_smtp_port'];?>
">
        <?php } else { ?>
          <input type="password" class="form-control" value="*********">
        <?php }?>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("SMTP Username");?>

      </label>
      <div class="col-md-9">
        <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
          <input type="text" class="form-control" name="email_smtp_username" value="<?php echo $_smarty_tpl->getValue('system')['email_smtp_username'];?>
">
        <?php } else { ?>
          <input type="password" class="form-control" value="*********">
        <?php }?>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("SMTP Password");?>

      </label>
      <div class="col-md-9">
        <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
          <input type="text" class="form-control" name="email_smtp_password" value="<?php echo $_smarty_tpl->getValue('system')['email_smtp_password'];?>
">
        <?php } else { ?>
          <input type="password" class="form-control" value="*********">
        <?php }?>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Set From");?>

      </label>
      <div class="col-md-9">
        <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
          <input type="text" class="form-control" name="email_smtp_setfrom" value="<?php echo $_smarty_tpl->getValue('system')['email_smtp_setfrom'];?>
">
        <?php } else { ?>
          <input type="password" class="form-control" value="*********">
        <?php }?>
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Set the From email address");?>
, <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("For example: email@domain.com");?>

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
    <button type="button" class="btn btn-danger js_admin-tester" data-handle="smtp">
      <i class="fa fa-bolt mr10"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Test Connection");?>

    </button>
    <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Save Changes");?>
</button>
  </div>
</form><?php }
}
