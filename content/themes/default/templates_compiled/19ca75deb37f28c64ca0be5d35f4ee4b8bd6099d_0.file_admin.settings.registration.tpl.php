<?php
/* Smarty version 5.8.0, created on 2026-05-08 09:53:10
  from 'file:admin.settings.registration.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fdb286818031_89297001',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '19ca75deb37f28c64ca0be5d35f4ee4b8bd6099d' => 
    array (
      0 => 'admin.settings.registration.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__svg_icons.tpl' => 18,
  ),
))) {
function content_69fdb286818031_89297001 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><!-- card-header -->
<div class="card-header with-icon with-nav">
  <!-- panel title -->
  <div class="mb20">
    <i class="fa fa-cog mr10"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Settings");?>
 &rsaquo; <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Registration");?>

  </div>
  <!-- panel title -->

  <!-- panel nav -->
  <ul class="nav nav-tabs">
    <li class="nav-item">
      <a class="nav-link active" href="#General" data-bs-toggle="tab">
        <i class="fa fa-sign-in-alt fa-fw mr5"></i><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("General");?>
</strong>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#Social" data-bs-toggle="tab">
        <i class="fab fa-facebook fa-fw mr5"></i><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Social Login");?>
</strong>
      </a>
    </li>
  </ul>
  <!-- panel nav -->
</div>
<!-- card-header -->

<!-- tabs content -->
<div class="tab-content">
  <!-- General -->
  <div class="tab-pane active" id="General">
    <form class="js_ajax-forms" data-url="admin/settings.php?edit=registration">
      <div class="card-body">
        <div class="alert alert-info">
          <div class="icon">
            <i class="fa fa-info-circle fa-2x"></i>
          </div>
          <div class="text pt5">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("If Registration is Free and Pro Packages enabled they will be used as optional upgrading plans");?>
.
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"registration",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Registration");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Allow users to create accounts");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="registration_enabled">
              <input type="checkbox" name="registration_enabled" id="registration_enabled" <?php if ($_smarty_tpl->getValue('system')['registration_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Registration Type");?>

          </label>
          <div class="col-md-9">
            <div class="form-check form-check-inline">
              <input type="radio" name="registration_type" id="registration_free" value="free" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['registration_type'] == "free") {?>checked<?php }?>>
              <label class="form-check-label" for="registration_free"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Free");?>
</label>
            </div>
            <div class="form-check form-check-inline">
              <input type="radio" name="registration_type" id="registration_paid" value="paid" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['registration_type'] == "paid") {?>checked<?php }?>>
              <label class="form-check-label" for="registration_paid"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Subscriptions Only");?>
</label>
            </div>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Allow users to create accounts Free or via Subscriptions only");?>
<br>
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Make sure you have configured");?>
 <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('control_panel')['url'];?>
/pro"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Pro System");?>
</a>
            </div>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"groups",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("User Can Select Custom User Group");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Allow users to select custom user group during registration");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="select_user_group_enabled">
              <input type="checkbox" name="select_user_group_enabled" id="select_user_group_enabled" <?php if ($_smarty_tpl->getValue('system')['select_user_group_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <div style="width: 40px; height: 40px;"></div>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Show Custom User Group Badge");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Show user group badge on profile page");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="show_user_group_enabled">
              <input type="checkbox" name="show_user_group_enabled" id="show_user_group_enabled" <?php if ($_smarty_tpl->getValue('system')['show_user_group_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Default User Group");?>

          </label>
          <div class="col-md-9">
            <select class="form-select" name="default_custom_user_group">
              <option value="0" <?php if ($_smarty_tpl->getValue('system')['default_custom_user_group'] == '0') {?>selected<?php }?>>
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Users");?>

              </option>
              <?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('user_groups'), 'user_group');
$foreach0DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('user_group')->value) {
$foreach0DoElse = false;
?>
                <option value="<?php echo $_smarty_tpl->getValue('user_group')['user_group_id'];?>
" <?php if ($_smarty_tpl->getValue('system')['default_custom_user_group'] == $_smarty_tpl->getValue('user_group')['user_group_id']) {?>selected<?php }?>>
                  <?php echo $_smarty_tpl->getValue('user_group')['user_group_title'];?>

                </option>
              <?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
            </select>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Select the default user group for new accounts");?>
<br>
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("You can manage users groups from");?>
 <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('control_panel')['url'];?>
/users_groups"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("User Groups");?>
</a>
            </div>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"invitation",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Invitation System");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("This option is used to register the users by invitation codes only");?>

            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="invitation_enabled">
              <input type="checkbox" name="invitation_enabled" id="invitation_enabled" <?php if ($_smarty_tpl->getValue('system')['invitation_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Invitations/User");?>

          </label>
          <div class="col-md-9">
            <div class="row">
              <div class="col-sm-8">
                <input class="form-control" name="invitation_user_limit" value="<?php echo $_smarty_tpl->getValue('system')['invitation_user_limit'];?>
">
              </div>
              <div class="col-sm-4">
                <select class="form-select" name="invitation_expire_period">
                  <option <?php if ($_smarty_tpl->getValue('system')['invitation_expire_period'] == "hour") {?>selected<?php }?> value="hour"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Hour");?>
</option>
                  <option <?php if ($_smarty_tpl->getValue('system')['invitation_expire_period'] == "day") {?>selected<?php }?> value="day"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Day");?>
</option>
                  <option <?php if ($_smarty_tpl->getValue('system')['invitation_expire_period'] == "week") {?>selected<?php }?> value="week"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Week");?>
</option>
                  <option <?php if ($_smarty_tpl->getValue('system')['invitation_expire_period'] == "month") {?>selected<?php }?> value="month"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Month");?>
</option>
                  <option <?php if ($_smarty_tpl->getValue('system')['invitation_expire_period'] == "year") {?>selected<?php }?> value="year"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Year");?>
</option>
                </select>
              </div>
            </div>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Number of invitation codes allowed to each user (0 for unlimited) ");?>
<br>
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("For example 1 code per day, 5 codes per month");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Send Method");?>

          </label>
          <div class="col-md-9">
            <div class="form-check form-check-inline">
              <input type="radio" name="invitation_send_method" id="invitation_email" value="email" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['invitation_send_method'] == "email") {?>checked<?php }?>>
              <label class="form-check-label" for="invitation_email"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Email");?>
</label>
            </div>
            <div class="form-check form-check-inline">
              <input type="radio" name="invitation_send_method" id="invitation_sms" value="sms" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['invitation_send_method'] == "sms") {?>checked<?php }?>>
              <label class="form-check-label" for="invitation_sms"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("SMS");?>
</label>
            </div>
            <div class="form-check form-check-inline">
              <input type="radio" name="invitation_send_method" id="invitation_both" value="both" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['invitation_send_method'] == "both") {?>checked<?php }?>>
              <label class="form-check-label" for="invitation_both"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Both");?>
</label>
            </div>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Select Email or SMS to send invitation link to new user's email/phone");?>
<br>
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Make sure you have configured");?>
 <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('control_panel')['url'];?>
/settings/sms"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("SMS Settings");?>
</a>
            </div>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"account_activation",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Activation Enabled");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable account activation to send activation code to user's email/phone");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="activation_enabled">
              <input type="checkbox" name="activation_enabled" id="activation_enabled" <?php if ($_smarty_tpl->getValue('system')['activation_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"adblock",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Activation Required");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable this and user will not be able to access without activation");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="activation_required">
              <input type="checkbox" name="activation_required" id="activation_required" <?php if ($_smarty_tpl->getValue('system')['activation_required']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Activation Type");?>

          </label>
          <div class="col-md-9">
            <div class="form-check form-check-inline">
              <input type="radio" name="activation_type" id="activation_email" value="email" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['activation_type'] == "email") {?>checked<?php }?>>
              <label class="form-check-label" for="activation_email"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Email");?>
</label>
            </div>
            <div class="form-check form-check-inline">
              <input type="radio" name="activation_type" id="activation_sms" value="sms" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['activation_type'] == "sms") {?>checked<?php }?>>
              <label class="form-check-label" for="activation_sms"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("SMS");?>
</label>
            </div>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Select Email or SMS activation to send activation code to user's email/phone");?>
<br>
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Make sure you have configured");?>
 <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('control_panel')['url'];?>
/settings/sms"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("SMS Settings");?>
</a>
            </div>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"verification",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Users Approval System");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the approval system On and Off (If disabled all users will be approved by default)");?>
<br>
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("If enabled, users will be pending for approval by the admin or moderators");?>

            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="users_approval_enabled">
              <input type="checkbox" name="users_approval_enabled" id="users_approval_enabled" <?php if ($_smarty_tpl->getValue('system')['users_approval_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"locked",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Whitelist Enabled");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("If enabled, only users with whitelisted email providers will be able to register");?>

            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="whitelist_enabled">
              <input type="checkbox" name="whitelist_enabled" id="whitelist_enabled" <?php if ($_smarty_tpl->getValue('system')['whitelist_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Whitelisted Providers");?>

          </label>
          <div class="col-md-9">
            <textarea class="js_tagify x-hidden" name="whitelist_providers" rows="3"><?php echo $_smarty_tpl->getValue('system')['whitelist_providers'];?>
</textarea>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enter the email providers that you want to whitelist");?>
 (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Example: gmail.com");?>
)
            </div>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"age_limit",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Age Restriction");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable/Disable age restriction");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="age_restriction">
              <input type="checkbox" name="age_restriction" id="age_restriction" <?php if ($_smarty_tpl->getValue('system')['age_restriction']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Minimum Age");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="minimum_age" value="<?php echo $_smarty_tpl->getValue('system')['minimum_age'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The minimum age required to register (in years)");?>

            </div>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <img height="40px" src="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->getValue('system')['theme'];?>
/images/icons/ageverif.png">
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("AgeVerif Enbaled");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable/Disable age verification using AgeVerify.com");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="ageverif_enabled">
              <input type="checkbox" name="ageverif_enabled" id="ageverif_enabled" <?php if ($_smarty_tpl->getValue('system')['ageverif_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("AgeVerif API Key");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="ageverif_api_key" value="<?php echo $_smarty_tpl->getValue('system')['ageverif_api_key'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The AgeVerif API Key");?>
 (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Check the docs to learn how to get this key");?>
)
            </div>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"getting_started",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Getting Started");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable/Disable getting started page after registration");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="getting_started">
              <input type="checkbox" name="getting_started" id="getting_started" <?php if ($_smarty_tpl->getValue('system')['getting_started']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Required Data");?>

          </label>
          <div class="col-md-9">
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="getting_started_profile_image_required" id="getting_started_profile_image_required" <?php if ($_smarty_tpl->getValue('system')['getting_started_profile_image_required']) {?>checked<?php }?>>
              <label class="form-check-label" for="getting_started_profile_image_required"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Profile Image Required");?>
</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="getting_started_location_required" id="getting_started_location_required" <?php if ($_smarty_tpl->getValue('system')['getting_started_location_required']) {?>checked<?php }?>>
              <label class="form-check-label" for="getting_started_location_required"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Location Data Required");?>
</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="getting_started_work_required" id="getting_started_work_required" <?php if ($_smarty_tpl->getValue('system')['getting_started_work_required']) {?>checked<?php }?>>
              <label class="form-check-label" for="getting_started_work_required"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Work Data Required");?>
</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="getting_started_education_required" id="getting_started_education_required" <?php if ($_smarty_tpl->getValue('system')['getting_started_education_required']) {?>checked<?php }?>>
              <label class="form-check-label" for="getting_started_education_required"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Education Data Required");?>
</label>
            </div>
            <span class="form-text mt10">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Such data will be mandatory when user getting started");?>

            </span>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"newsletter",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Newsletter Consent");?>
 (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("GDPR");?>
)</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable/Disable newsletter consent during the registration");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="newsletter_consent">
              <input type="checkbox" name="newsletter_consent" id="newsletter_consent" <?php if ($_smarty_tpl->getValue('system')['newsletter_consent']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider"></div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Max Accounts/IP");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="max_accounts" value="<?php echo $_smarty_tpl->getValue('system')['max_accounts'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The Maximum number of accounts allowed to register per IP (0 for unlimited)");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Name Minimum Length");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="name_min_length" value="<?php echo $_smarty_tpl->getValue('system')['name_min_length'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The First and Last name minimum length");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Name Maximum Length");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="name_max_length" value="<?php echo $_smarty_tpl->getValue('system')['name_max_length'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The First and Last name maximum length");?>

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
  </div>
  <!-- General -->

  <!-- Social -->
  <div class="tab-pane" id="Social">
    <form class="js_ajax-forms" data-url="admin/settings.php?edit=social_login">
      <div class="card-body">
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"social_share",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Social Logins");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn registration/login via social media (Facebook, Twitter and etc) On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="social_login_enabled">
              <input type="checkbox" name="social_login_enabled" id="social_login_enabled" <?php if ($_smarty_tpl->getValue('system')['social_login_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider"></div>

        <!-- facebook -->
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"facebook",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Facebook");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn registration/login via Facebook On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="facebook_login_enabled">
              <input type="checkbox" name="facebook_login_enabled" id="facebook_login_enabled" <?php if ($_smarty_tpl->getValue('system')['facebook_login_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Facebook App ID");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="facebook_appid" value="<?php echo $_smarty_tpl->getValue('system')['facebook_appid'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Facebook App Secret");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="facebook_secret" value="<?php echo $_smarty_tpl->getValue('system')['facebook_secret'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>
        <!-- facebook -->

        <div class="divider"></div>

        <!-- google -->
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"google",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Google");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn registration/login via Google On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="google_login_enabled">
              <input type="checkbox" name="google_login_enabled" id="google_login_enabled" <?php if ($_smarty_tpl->getValue('system')['google_login_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Google App ID");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="google_appid" value="<?php echo $_smarty_tpl->getValue('system')['google_appid'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Google App Secret");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="google_secret" value="<?php echo $_smarty_tpl->getValue('system')['google_secret'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>
        <!-- google -->

        <div class="divider"></div>

        <!-- X -->
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"x",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("X");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn registration/login via X On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="twitter_login_enabled">
              <input type="checkbox" name="twitter_login_enabled" id="twitter_login_enabled" <?php if ($_smarty_tpl->getValue('system')['twitter_login_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("X API Key");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="twitter_appid" value="<?php echo $_smarty_tpl->getValue('system')['twitter_appid'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("X API Secret");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="twitter_secret" value="<?php echo $_smarty_tpl->getValue('system')['twitter_secret'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>
        <!-- X -->

        <div class="divider"></div>

        <!-- linkedin -->
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"linkedin",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Linkedin");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn registration/login via Linkedin On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="linkedin_login_enabled">
              <input type="checkbox" name="linkedin_login_enabled" id="linkedin_login_enabled" <?php if ($_smarty_tpl->getValue('system')['linkedin_login_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Linkedin App ID");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="linkedin_appid" value="<?php echo $_smarty_tpl->getValue('system')['linkedin_appid'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Linkedin App Secret");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="linkedin_secret" value="<?php echo $_smarty_tpl->getValue('system')['linkedin_secret'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>
        <!-- linkedin -->

        <div class="divider"></div>

        <!-- vk -->
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"vk",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Vkontakte");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn registration/login via Vkontakte On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="vkontakte_login_enabled">
              <input type="checkbox" name="vkontakte_login_enabled" id="vkontakte_login_enabled" <?php if ($_smarty_tpl->getValue('system')['vkontakte_login_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Vkontakte App ID");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="vkontakte_appid" value="<?php echo $_smarty_tpl->getValue('system')['vkontakte_appid'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Vkontakte Secure Key");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="vkontakte_secret" value="<?php echo $_smarty_tpl->getValue('system')['vkontakte_secret'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>
        <!-- vk -->

        <div class="divider"></div>

        <!-- wordpress -->
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"wordpress",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("WordPress");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn registration/login via WordPress On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="wordpress_login_enabled">
              <input type="checkbox" name="wordpress_login_enabled" id="wordpress_login_enabled" <?php if ($_smarty_tpl->getValue('system')['wordpress_login_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("WordPress Client ID");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="wordpress_appid" value="<?php echo $_smarty_tpl->getValue('system')['wordpress_appid'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("WordPress Client Secret");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="wordpress_secret" value="<?php echo $_smarty_tpl->getValue('system')['wordpress_secret'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>
        <!-- wordpress -->

        <div class="divider"></div>

        <!-- Sngine -->
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"developers",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Sngine");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn registration/login via other Sngine website On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="sngine_login_enabled">
              <input type="checkbox" name="sngine_login_enabled" id="sngine_login_enabled" <?php if ($_smarty_tpl->getValue('system')['sngine_login_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Sngine App ID");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="sngine_appid" value="<?php echo $_smarty_tpl->getValue('system')['sngine_appid'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Sngine App Secret");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="sngine_secret" value="<?php echo $_smarty_tpl->getValue('system')['sngine_secret'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Sngine App Domain");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="sngine_app_domain" value="<?php echo $_smarty_tpl->getValue('system')['sngine_app_domain'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Please enter your Sngine App Domain without http:// or https://");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Sngine App Name");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="sngine_app_name" value="<?php echo $_smarty_tpl->getValue('system')['sngine_app_name'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Sngine App Icon");?>

          </label>
          <div class="col-md-9">
            <?php if ($_smarty_tpl->getValue('system')['sngine_app_icon'] == '') {?>
              <div class="x-image">
                <button type="button" class="btn-close x-hidden js_x-image-remover" title='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Remove");?>
'></button>
                <div class="x-image-loader">
                  <div class="progress x-progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
                <i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
                <input type="hidden" class="js_x-uploader-input" name="sngine_app_icon" value="">
              </div>
            <?php } else { ?>
              <div class="x-image" style="background-image: url('<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('system')['sngine_app_icon'];?>
')">
                <button type="button" class="btn-close js_x-image-remover" title='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Remove");?>
'></button>
                <div class="x-image-loader">
                  <div class="progress x-progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
                <i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
                <input type="hidden" class="js_x-uploader-input" name="sngine_app_icon" value="<?php echo $_smarty_tpl->getValue('system')['sngine_app_icon'];?>
">
              </div>
            <?php }?>
          </div>
        </div>
        <!-- Sngine -->

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
  </div>
  <!-- Social -->
</div>
<!-- tabs content --><?php }
}
