<?php
/* Smarty version 5.8.0, created on 2026-05-08 21:06:45
  from 'file:admin.settings.sms.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fe5065851497_27298952',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8e60818dd3cc30327bc485dcee5edabf69a04cde' => 
    array (
      0 => 'admin.settings.sms.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__svg_icons.tpl' => 4,
  ),
))) {
function content_69fe5065851497_27298952 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><!-- card-header -->
<div class="card-header with-icon">
  <!-- panel title -->
  <i class="fa fa-cog mr10"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Settings");?>
 &rsaquo; <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("SMS");?>

  <!-- panel title -->
</div>
<!-- card-header -->

<!-- SMS -->
<form class="js_ajax-forms" data-url="admin/settings.php?edit=sms">
  <div class="card-body">

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("SMS Provider");?>

      </label>
      <div class="col-md-9">
        <div>
          <!-- Twilio -->
          <input class="x-hidden input-label" type="radio" name="sms_provider" value="twilio" id="sms_twilio" <?php if ($_smarty_tpl->getValue('system')['sms_provider'] == "twilio") {?>checked<?php }?> />
          <label class="button-label" for="sms_twilio">
            <div class="icon">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"twilio",'width'=>"32px",'height'=>"32px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div class="title"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Twilio");?>
</div>
          </label>
          <!-- Twilio -->
          <!-- BulkSMS -->
          <input class="x-hidden input-label" type="radio" name="sms_provider" value="bulksms" id="sms_bulksms" <?php if ($_smarty_tpl->getValue('system')['sms_provider'] == "bulksms") {?>checked<?php }?> />
          <label class="button-label" for="sms_bulksms">
            <div class="icon">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"bulksms",'width'=>"52px",'height'=>"32px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div class="title"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("BulkSMS");?>
</div>
          </label>
          <!-- BulkSMS -->
          <!-- Infobip -->
          <input class="x-hidden input-label" type="radio" name="sms_provider" value="infobip" id="sms_infobip" <?php if ($_smarty_tpl->getValue('system')['sms_provider'] == "infobip") {?>checked<?php }?> />
          <label class="button-label" for="sms_infobip">
            <div class="icon">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"infobip",'width'=>"52px",'height'=>"32px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div class="title"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Infobip");?>
</div>
          </label>
          <!-- Infobip -->
          <!-- Msg91 -->
          <input class="x-hidden input-label" type="radio" name="sms_provider" value="msg91" id="sms_msg91" <?php if ($_smarty_tpl->getValue('system')['sms_provider'] == "msg91") {?>checked<?php }?> />
          <label class="button-label" for="sms_msg91">
            <div class="icon">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"msg91",'width'=>"52px",'height'=>"32px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div class="title"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Msg91");?>
</div>
          </label>
          <!-- Msg91 -->
        </div>

        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Select your default SMS provider");?>
<br />
        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("SMS Limit");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="sms_limit" value="<?php echo $_smarty_tpl->getValue('system')['sms_limit'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Set the maximum number of SMS messages that can be sent per hour");?>

        </div>
      </div>
    </div>

    <div class="divider"></div>

    <!-- Twilio -->
    <div class="heading-small mb20">
      <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Twilio");?>

    </div>
    <div class="pl-md-4">
      <div class="row form-group">
        <label class="col-md-3 form-label">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Twilio Account SID");?>

        </label>
        <div class="col-md-9">
          <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
            <input type="text" class="form-control" name="twilio_sid" value="<?php echo $_smarty_tpl->getValue('system')['twilio_sid'];?>
">
          <?php } else { ?>
            <input type="password" class="form-control" value="*********">
          <?php }?>
        </div>
      </div>

      <div class="row form-group">
        <label class="col-md-3 form-label">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Twilio Auth Token");?>

        </label>
        <div class="col-md-9">
          <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
            <input type="text" class="form-control" name="twilio_token" value="<?php echo $_smarty_tpl->getValue('system')['twilio_token'];?>
">
          <?php } else { ?>
            <input type="password" class="form-control" value="*********">
          <?php }?>
        </div>
      </div>

      <div class="row form-group">
        <label class="col-md-3 form-label">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Twilio Phone Number");?>

        </label>
        <div class="col-md-9">
          <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
            <input type="text" class="form-control" name="twilio_phone" value="<?php echo $_smarty_tpl->getValue('system')['twilio_phone'];?>
">
          <?php } else { ?>
            <input type="password" class="form-control" value="*********">
          <?php }?>
        </div>
      </div>
    </div>
    <!-- Twilio -->

    <div class="divider"></div>

    <!-- BulkSMS -->
    <div class="heading-small mb20">
      <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("BulkSMS");?>

    </div>
    <div class="pl-md-4">
      <div class="row form-group">
        <label class="col-md-3 form-label">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("BulkSMS Username");?>

        </label>
        <div class="col-md-9">
          <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
            <input type="text" class="form-control" name="bulksms_username" value="<?php echo $_smarty_tpl->getValue('system')['bulksms_username'];?>
">
          <?php } else { ?>
            <input type="password" class="form-control" value="*********">
          <?php }?>
        </div>
      </div>

      <div class="row form-group">
        <label class="col-md-3 form-label">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("BulkSMS Password");?>

        </label>
        <div class="col-md-9">
          <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
            <input type="text" class="form-control" name="bulksms_password" value="<?php echo $_smarty_tpl->getValue('system')['bulksms_password'];?>
">
          <?php } else { ?>
            <input type="password" class="form-control" value="*********">
          <?php }?>
        </div>
      </div>
    </div>
    <!-- BulkSMS -->

    <div class="divider"></div>

    <!-- Infobip -->
    <div class="heading-small mb20">
      <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Infobip");?>

    </div>
    <div class="pl-md-4">
      <div class="row form-group">
        <label class="col-md-3 form-label">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Infobip Username");?>

        </label>
        <div class="col-md-9">
          <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
            <input type="text" class="form-control" name="infobip_username" value="<?php echo $_smarty_tpl->getValue('system')['infobip_username'];?>
">
          <?php } else { ?>
            <input type="password" class="form-control" value="*********">
          <?php }?>
        </div>
      </div>

      <div class="row form-group">
        <label class="col-md-3 form-label">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Infobip Password");?>

        </label>
        <div class="col-md-9">
          <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
            <input type="text" class="form-control" name="infobip_password" value="<?php echo $_smarty_tpl->getValue('system')['infobip_password'];?>
">
          <?php } else { ?>
            <input type="password" class="form-control" value="*********">
          <?php }?>
        </div>
      </div>
    </div>
    <!-- Infobip -->

    <div class="divider"></div>

    <!-- Msg91 -->
    <div class="heading-small mb20">
      <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Msg91");?>

    </div>
    <div class="pl-md-4">
      <div class="row form-group">
        <label class="col-md-3 form-label">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Msg91 AuthKey");?>

        </label>
        <div class="col-md-9">
          <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
            <input type="text" class="form-control" name="msg91_authkey" value="<?php echo $_smarty_tpl->getValue('system')['msg91_authkey'];?>
">
          <?php } else { ?>
            <input type="password" class="form-control" value="*********">
          <?php }?>
        </div>
      </div>
      <div class="row form-group">
        <label class="col-md-3 form-label">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Msg91 Template ID");?>

        </label>
        <div class="col-md-9">
          <input type="text" class="form-control" name="msg91_template_id" value="<?php echo $_smarty_tpl->getValue('system')['msg91_template_id'];?>
">
        </div>
      </div>
    </div>
    <!-- Msg91 -->

    <div class="divider"></div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Test Phone Number");?>

      </label>
      <div class="col-md-9">
        <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
          <input type="text" class="form-control" name="system_phone" value="<?php echo $_smarty_tpl->getValue('system')['system_phone'];?>
">
        <?php } else { ?>
          <input type="password" class="form-control" value="*********">
        <?php }?>
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your phone number to test the SMS service i.e +12344567890");?>
<br />
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("A test SMS will be sent to this phone number when you test the connection");?>

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
    <button type="button" class="btn btn-danger js_admin-tester" data-handle="sms">
      <i class="fa fa-bolt mr10"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Test Connection");?>

    </button>
    <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Save Changes");?>
</button>
  </div>
</form>
<!-- SMS --><?php }
}
