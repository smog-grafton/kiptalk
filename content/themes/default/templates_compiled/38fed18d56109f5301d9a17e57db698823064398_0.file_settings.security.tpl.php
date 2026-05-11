<?php
/* Smarty version 5.8.0, created on 2026-05-08 16:00:26
  from 'file:settings.security.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fe089a69c736_35234270',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '38fed18d56109f5301d9a17e57db698823064398' => 
    array (
      0 => 'settings.security.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__svg_icons.tpl' => 3,
  ),
))) {
function content_69fe089a69c736_35234270 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
if ($_smarty_tpl->getValue('sub_view') == "password") {?>
  <div class="card-header with-icon">
    <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"security",'class'=>"main-icon mr15",'width'=>"24px",'height'=>"24px"), (int) 0, $_smarty_current_dir);
?>
    <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Change Password");?>

  </div>
  <form class="js_ajax-forms" data-url="users/settings.php?edit=password">
    <div class="card-body">
      <div class="alert alert-warning">
        <div class="icon">
          <i class="fa fa-exclamation-triangle fa-2x"></i>
        </div>
        <div class="text pt5">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Changing password will log you out from all other sessions");?>

        </div>
      </div>

      <div class="form-group">
        <label class="form-label"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Confirm Current Password");?>
</label>
        <input type="password" class="form-control" name="current">
      </div>

      <div class="row">
        <div class="form-group col-md-6">
          <label class="form-label"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your New Password");?>
</label>
          <input type="password" class="form-control" name="new">
        </div>
        <div class="form-group col-md-6">
          <label class="form-label"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Confirm New Password");?>
</label>
          <input type="password" class="form-control" name="confirm">
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

<?php } elseif ($_smarty_tpl->getValue('sub_view') == "sessions") {?>
  <div class="card-header with-icon">
    <div class="float-end">
      <button class="btn btn-md btn-danger js_session-delete-all">
        <i class="fa fa-sign-out-alt"></i><span class="ml5 d-none d-lg-inline-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Log Out Of All Sessions");?>
</span>
      </button>
    </div>
    <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"security",'class'=>"main-icon mr15",'width'=>"24px",'height'=>"24px"), (int) 0, $_smarty_current_dir);
echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Manage Sessions");?>

  </div>
  <div class="card-body">
    <div class="table-responsive">
      <table class="table table-bordered table-hover">
        <thead>
          <tr>
            <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("ID");?>
</th>
            <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Browser");?>
</th>
            <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("OS");?>
</th>
            <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Date");?>
</th>
            <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("IP");?>
</th>
            <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Actions");?>
</th>
          </tr>
        </thead>
        <tbody>
          <?php if ($_smarty_tpl->getValue('sessions')) {?>
            <?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('sessions'), 'session');
$_smarty_tpl->getVariable('session')->iteration = 0;
$foreach0DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('session')->value) {
$foreach0DoElse = false;
$_smarty_tpl->getVariable('session')->iteration++;
$foreach0Backup = clone $_smarty_tpl->getVariable('session');
?>
              <tr>
                <td><?php echo $_smarty_tpl->getVariable('session')->iteration;?>
</td>
                <td>
                  <?php echo $_smarty_tpl->getValue('session')['user_browser'];?>
 <?php if ($_smarty_tpl->getValue('session')['session_id'] == $_smarty_tpl->getValue('user')->_data['active_session_id']) {?><span class="badge rounded-pill badge-lg bg-success"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Active Session");?>
</span><?php }?>
                </td>
                <td><?php echo $_smarty_tpl->getValue('session')['user_os'];?>
</td>
                <td>
                  <span class="js_moment" data-time="<?php echo $_smarty_tpl->getValue('session')['session_date'];?>
"><?php echo $_smarty_tpl->getValue('session')['session_date'];?>
</span>
                </td>
                <td><?php echo $_smarty_tpl->getValue('session')['user_ip'];?>
</td>
                <td>
                  <button data-bs-toggle="tooltip" title='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("End Session");?>
' class="btn btn-sm btn-icon btn-rounded btn-danger js_session-deleter" data-id="<?php echo $_smarty_tpl->getValue('session')['session_id'];?>
" <?php if ($_smarty_tpl->getValue('session')['session_id'] == $_smarty_tpl->getValue('user')->_data['active_session_id']) {?> onclick="localStorage.clear();" <?php }?>>
                    <i class="fa fa-trash-alt"></i>
                  </button>
                </td>
              </tr>
            <?php
$_smarty_tpl->setVariable('session', $foreach0Backup);
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
          <?php } else { ?>
            <tr>
              <td colspan="6" class="text-center">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("No data to show");?>

              </td>
            </tr>
          <?php }?>
        </tbody>
      </table>
    </div>
  </div>

<?php } elseif ($_smarty_tpl->getValue('sub_view') == "two-factor") {?>
  <div class="card-header with-icon">
    <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"security",'class'=>"main-icon mr15",'width'=>"24px",'height'=>"24px"), (int) 0, $_smarty_current_dir);
echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Two-Factor Authentication");?>

  </div>
  <form class="js_ajax-forms" data-url="users/settings.php?edit=two-factor">
    <div class="card-body">
      <div class="alert alert-info">
        <div class="text">
          <strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Two-Factor Authentication");?>
</strong><br>
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Log in with a code from your");?>

          <?php if ($_smarty_tpl->getValue('system')['two_factor_type'] == "email") {
echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("email");
}?>
          <?php if ($_smarty_tpl->getValue('system')['two_factor_type'] == "sms") {
echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("phone");
}?>
          <?php if ($_smarty_tpl->getValue('system')['two_factor_type'] == "google") {
echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Google Authenticator App");
}?>
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("as well as a password");?>

        </div>
      </div>
      <?php if (!$_smarty_tpl->getValue('user')->_data['user_two_factor_enabled'] && $_smarty_tpl->getValue('system')['two_factor_type'] == "google") {?>
        <div class="heading-small mb20">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Configuring your authenticator");?>

        </div>
        <div class="pl-md-4">
          <ol class="mtb20">
            <li class="mb5">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("You need to download Google Authenticator app for");?>
 <a target="_blank" href="https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2&hl=en"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Android");?>
</a> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("or");?>
 <a target="_blank" href="https://itunes.apple.com/eg/app/google-authenticator/id388497605?mt=8"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("IOS");?>
</a>
            </li>
            <li>
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("In your app, add a new account using the details below");?>
:
            </li>
          </ol>

          <div class="row text-center">
            <div class="form-group col-md-6">
              <h6><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Scanning the QR code");?>
</h6>
              <img src="<?php echo $_smarty_tpl->getValue('two_factor_QR');?>
">
            </div>
            <div class="form-group col-md-6">
              <h6><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Manually by entering this token");?>
</h6>
              <h3>
                <span class="badge bg-warning pt10 plr20"><?php echo $_smarty_tpl->getValue('two_factor_gsecret');?>
</span>
              </h3>
            </div>
          </div>
        </div>
        <div class="heading-small mb20">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Activate your authenticator");?>

        </div>
        <div class="pl-md-4">
          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Verification Code");?>

            </label>
            <div class="col-md-9">
              <input name="gcode" type="text" class="form-control" placeholder="######" required autofocus>
              <div class="form-text">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enter the code shown on your app");?>

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
      <?php } else { ?>
        <div class="form-table-row">
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Two-Factor Authentication");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable two-factor authentication to log in with a code from your email/phone as well as a password");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="two_factor_enabled">
              <input type="checkbox" name="two_factor_enabled" id="two_factor_enabled" <?php if ($_smarty_tpl->getValue('user')->_data['user_two_factor_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <!-- success -->
        <div class="alert alert-success mt15 mb0 x-hidden"></div>
        <!-- success -->

        <!-- error -->
        <div class="alert alert-danger mt15 mb0 x-hidden"></div>
        <!-- error -->
      <?php }?>
    </div>
    <div class="card-footer text-end">
      <input type="hidden" name="type" value="<?php echo $_smarty_tpl->getValue('system')['two_factor_type'];?>
">
      <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Save Changes");?>
</button>
    </div>
  </form>

<?php }
}
}
