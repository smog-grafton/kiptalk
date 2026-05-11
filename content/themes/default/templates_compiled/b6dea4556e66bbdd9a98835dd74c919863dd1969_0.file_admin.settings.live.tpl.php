<?php
/* Smarty version 5.8.0, created on 2026-05-08 21:07:18
  from 'file:admin.settings.live.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fe50867867e0_91571247',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b6dea4556e66bbdd9a98835dd74c919863dd1969' => 
    array (
      0 => 'admin.settings.live.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__svg_icons.tpl' => 2,
  ),
))) {
function content_69fe50867867e0_91571247 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><!-- card-header -->
<div class="card-header with-icon">
  <!-- panel title -->
  <i class="fa fa-cog mr10"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Settings");?>
 &rsaquo; <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Live Stream");?>

  <!-- panel title -->
</div>
<!-- card-header -->

<!-- Live -->
<form class="js_ajax-forms" data-url="admin/settings.php?edit=live">
  <div class="card-body">
    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"live",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Live Stream Enabled");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the live stream system On and Off");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="live_enabled">
          <input type="checkbox" name="live_enabled" id="live_enabled" <?php if ($_smarty_tpl->getValue('system')['live_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Agora App ID");?>

      </label>
      <div class="col-md-9">
        <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
          <input type="text" class="form-control" name="agora_app_id" value="<?php echo $_smarty_tpl->getValue('system')['agora_app_id'];?>
">
        <?php } else { ?>
          <input type="password" class="form-control" value="*********">
        <?php }?>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Agora App Certificate");?>

      </label>
      <div class="col-md-9">
        <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
          <input type="text" class="form-control" name="agora_app_certificate" value="<?php echo $_smarty_tpl->getValue('system')['agora_app_certificate'];?>
">
        <?php } else { ?>
          <input type="password" class="form-control" value="*********">
        <?php }?>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"cloud_save",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Save Live Videos");?>
</div>
        <div class="form-text d-none d-sm-block">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the save live stream videos On and Off");?>
<br>
        </div>
      </div>
      <div class="text-end">
        <label class="switch" for="save_live_enabled">
          <input type="checkbox" name="save_live_enabled" id="save_live_enabled" <?php if ($_smarty_tpl->getValue('system')['save_live_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Agora Customer ID");?>

      </label>
      <div class="col-md-9">
        <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
          <input type="text" class="form-control" name="agora_customer_id" value="<?php echo $_smarty_tpl->getValue('system')['agora_customer_id'];?>
">
        <?php } else { ?>
          <input type="password" class="form-control" value="*********">
        <?php }?>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Agora Customer Secret");?>

      </label>
      <div class="col-md-9">
        <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
          <input type="text" class="form-control" name="agora_customer_certificate" value="<?php echo $_smarty_tpl->getValue('system')['agora_customer_certificate'];?>
">
        <?php } else { ?>
          <input type="password" class="form-control" value="*********">
        <?php }?>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo "S3";?>
 <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bucket Name");?>

      </label>
      <div class="col-md-9">
        <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
          <input type="text" class="form-control" name="agora_s3_bucket" value="<?php echo $_smarty_tpl->getValue('system')['agora_s3_bucket'];?>
">
        <?php } else { ?>
          <input type="password" class="form-control" value="*********">
        <?php }?>
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Amazon S3 bucket name");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo "S3";?>
 <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bucket Region");?>

      </label>
      <div class="col-md-9">
        <select class="form-select" name="agora_s3_region">
          <option value="us-east-1" <?php if ($_smarty_tpl->getValue('system')['agora_s3_region'] == "us-east-1") {?>selected<?php }?>>US East (N. Virginia) us-east-1</option>
          <option value="us-east-2" <?php if ($_smarty_tpl->getValue('system')['agora_s3_region'] == "us-east-2") {?>selected<?php }?>>US East (Ohio) us-east-2</option>
          <option value="us-west-1" <?php if ($_smarty_tpl->getValue('system')['agora_s3_region'] == "us-west-1") {?>selected<?php }?>>US West (N. California) us-west-1</option>
          <option value="us-west-2" <?php if ($_smarty_tpl->getValue('system')['agora_s3_region'] == "us-west-2") {?>selected<?php }?>>US West (Oregon) us-west-2</option>
          <option value="eu-west-1" <?php if ($_smarty_tpl->getValue('system')['agora_s3_region'] == "eu-west-1") {?>selected<?php }?>>EU (Ireland) eu-west-1</option>
          <option value="eu-west-2" <?php if ($_smarty_tpl->getValue('system')['agora_s3_region'] == "eu-west-2") {?>selected<?php }?>>EU (London) eu-west-2</option>
          <option value="eu-west-3" <?php if ($_smarty_tpl->getValue('system')['agora_s3_region'] == "eu-west-3") {?>selected<?php }?>>EU (Paris) eu-west-3</option>
          <option value="eu-central-1" <?php if ($_smarty_tpl->getValue('system')['agora_s3_region'] == "eu-central-1") {?>selected<?php }?>>EU (Frankfurt) eu-central-1</option>
          <option value="ap-southeast-1" <?php if ($_smarty_tpl->getValue('system')['agora_s3_region'] == "ap-southeast-1") {?>selected<?php }?>>Asia Pacific (Singapore) ap-southeast-1</option>
          <option value="ap-southeast-2" <?php if ($_smarty_tpl->getValue('system')['agora_s3_region'] == "ap-southeast-2") {?>selected<?php }?>>Asia Pacific (Sydney) ap-southeast-2</option>
          <option value="ap-northeast-1" <?php if ($_smarty_tpl->getValue('system')['agora_s3_region'] == "ap-northeast-1") {?>selected<?php }?>>Asia Pacific (Tokyo) ap-northeast-1</option>
          <option value="ap-northeast-2" <?php if ($_smarty_tpl->getValue('system')['agora_s3_region'] == "ap-northeast-2") {?>selected<?php }?>>Asia Pacific (Seoul) ap-northeast-2</option>
          <option value="sa-east-1" <?php if ($_smarty_tpl->getValue('system')['agora_s3_region'] == "sa-east-1") {?>selected<?php }?>>South America (São Paulo) sa-east-1</option>
          <option value="ca-central-1" <?php if ($_smarty_tpl->getValue('system')['agora_s3_region'] == "ca-central-1") {?>selected<?php }?>>Canada (Central) ca-central-1</option>
          <option value="ap-south-1" <?php if ($_smarty_tpl->getValue('system')['agora_s3_region'] == "ap-south-1") {?>selected<?php }?>>Asia Pacific (Mumbai) ap-south-1</option>
        </select>
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Amazon S3 bucket region");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo "S3";?>
 <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Access Key ID");?>

      </label>
      <div class="col-md-9">
        <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
          <input type="text" class="form-control" name="agora_s3_key" value="<?php echo $_smarty_tpl->getValue('system')['agora_s3_key'];?>
">
        <?php } else { ?>
          <input type="password" class="form-control" value="*********">
        <?php }?>
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Amazon S3 Access Key ID");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo "S3";?>
 <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Access Key Secret");?>

      </label>
      <div class="col-md-9">
        <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
          <input type="text" class="form-control" name="agora_s3_secret" value="<?php echo $_smarty_tpl->getValue('system')['agora_s3_secret'];?>
">
        <?php } else { ?>
          <input type="password" class="form-control" value="*********">
        <?php }?>
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Amazon S3 Access Key Secret");?>

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
    <button type="button" class="btn btn-danger js_admin-tester" data-handle="s3-agora">
      <i class="fa fa-bolt mr10"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Test Connection");?>
 (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("S3");?>
)
    </button>
    <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Save Changes");?>
</button>
  </div>
</form>
<!-- Live --><?php }
}
