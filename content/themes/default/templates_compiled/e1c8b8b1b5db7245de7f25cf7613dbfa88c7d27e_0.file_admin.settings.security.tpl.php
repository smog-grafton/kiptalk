<?php
/* Smarty version 5.8.0, created on 2026-05-08 09:54:08
  from 'file:admin.settings.security.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fdb2c0154589_96580899',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e1c8b8b1b5db7245de7f25cf7613dbfa88c7d27e' => 
    array (
      0 => 'admin.settings.security.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__svg_icons.tpl' => 10,
  ),
))) {
function content_69fdb2c0154589_96580899 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><!-- card-header -->
<div class="card-header with-icon">
  <!-- panel title -->
  <i class="fa fa-cog mr10"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Settings");?>
 &rsaquo; <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Security");?>

  <!-- panel title -->
</div>
<!-- card-header -->

<!-- Security -->
<form class="js_ajax-forms" data-url="admin/settings.php?edit=security">
  <div class="card-body">
    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"spy",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Unusual Login Detection");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable unusual login detection, System will not allow user to login with same session from different device or location");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="unusual_login_enabled">
          <input type="checkbox" name="unusual_login_enabled" id="unusual_login_enabled" <?php if ($_smarty_tpl->getValue('system')['unusual_login_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"firewall",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Brute Force Detection");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable brute force attack detection, System will block the user account if hacker try to login with invalid password too many times to guess the correct account password");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="brute_force_detection_enabled">
          <input type="checkbox" name="brute_force_detection_enabled" id="brute_force_detection_enabled" <?php if ($_smarty_tpl->getValue('system')['brute_force_detection_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bad Login Limit");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="brute_force_bad_login_limit" value="<?php echo $_smarty_tpl->getValue('system')['brute_force_bad_login_limit'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Number of bad login attempts till account get blocked");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Lockout Time");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="brute_force_lockout_time" value="<?php echo $_smarty_tpl->getValue('system')['brute_force_lockout_time'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Number of minutes the account will still locked out");?>

        </div>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"fingerprint",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Two-Factor Authentication");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable two-factor authentication to log in with a code from your email/phone as well as a password");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="two_factor_enabled">
          <input type="checkbox" name="two_factor_enabled" id="two_factor_enabled" <?php if ($_smarty_tpl->getValue('system')['two_factor_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-sm-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Two-Factor Authentication Via");?>

      </label>
      <div class="col-md-9">
        <div class="form-check form-check-inline">
          <input type="radio" name="two_factor_type" id="two_factor_email" value="email" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['two_factor_type'] == "email") {?>checked<?php }?>>
          <label class="form-check-label" for="two_factor_email"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Email");?>
</label>
        </div>
        <div class="form-check form-check-inline">
          <input type="radio" name="two_factor_type" id="two_factor_sms" value="sms" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['two_factor_type'] == "sms") {?>checked<?php }?>>
          <label class="form-check-label" for="two_factor_sms"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("SMS");?>
</label>
        </div>
        <div class="form-check form-check-inline">
          <input type="radio" name="two_factor_type" id="two_factor_google" value="google" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['two_factor_type'] == "google") {?>checked<?php }?>>
          <label class="form-check-label" for="two_factor_google"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Google Authenticator");?>
</label>
        </div>
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Select Email, SMS or Google Authenticator to send log in code to user");?>
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
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"password",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Password Complexity System");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("This system will require a powerful password including letters, numbers and special characters");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="password_complexity_enabled">
          <input type="checkbox" name="password_complexity_enabled" id="password_complexity_enabled" <?php if ($_smarty_tpl->getValue('system')['password_complexity_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"reserved",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Reserved Usernames Enabled");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable/Disable Reserved Usernames");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="reserved_usernames_enabled">
          <input type="checkbox" name="reserved_usernames_enabled" id="reserved_usernames_enabled" <?php if ($_smarty_tpl->getValue('system')['reserved_usernames_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Reserved Usernames");?>

      </label>
      <div class="col-md-9">
        <textarea class="js_tagify x-hidden" name="reserved_usernames" rows="3"><?php echo $_smarty_tpl->getValue('system')['reserved_usernames'];?>
</textarea>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"censored",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Censored Words Enabled");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable/Disable Words to be censored");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="censored_words_enabled">
          <input type="checkbox" name="censored_words_enabled" id="censored_words_enabled" <?php if ($_smarty_tpl->getValue('system')['censored_words_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Censored Words");?>

      </label>
      <div class="col-md-9">
        <textarea class="js_tagify x-hidden" name="censored_words" rows="3"><?php echo $_smarty_tpl->getValue('system')['censored_words'];?>
</textarea>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"block",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Censored Domains Enabled");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable/Disable Domains to be censored (will not be fetched)");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="censored_domains_enabled">
          <input type="checkbox" name="censored_domains_enabled" id="censored_domains_enabled" <?php if ($_smarty_tpl->getValue('system')['censored_domains_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Censored Domains");?>

      </label>
      <div class="col-md-9">
        <textarea class="js_tagify x-hidden" name="censored_domains" rows="3"><?php echo $_smarty_tpl->getValue('system')['censored_domains'];?>
</textarea>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"html",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("HTML Enabled");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable/Disable HTML code in Rich Text Editor (blogs and forums)");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="html_richtext_enabled">
          <input type="checkbox" name="html_richtext_enabled" id="html_richtext_enabled" <?php if ($_smarty_tpl->getValue('system')['html_richtext_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"google_recaptcha",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("reCAPTCHA Enabled");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn reCAPTCHA On and Off");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="reCAPTCHA_enabled">
          <input type="checkbox" name="reCAPTCHA_enabled" id="reCAPTCHA_enabled" <?php if ($_smarty_tpl->getValue('system')['reCAPTCHA_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("reCAPTCHA Site Key");?>

      </label>
      <div class="col-md-9">
        <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
          <input type="text" class="form-control" name="reCAPTCHA_site_key" value="<?php echo $_smarty_tpl->getValue('system')['reCAPTCHA_site_key'];?>
">
        <?php } else { ?>
          <input type="password" class="form-control" value="*********">
        <?php }?>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("reCAPTCHA Secret Key");?>

      </label>
      <div class="col-md-9">
        <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
          <input type="text" class="form-control" name="reCAPTCHA_secret_key" value="<?php echo $_smarty_tpl->getValue('system')['reCAPTCHA_secret_key'];?>
">
        <?php } else { ?>
          <input type="password" class="form-control" value="*********">
        <?php }?>
      </div>
    </div>

    <div class="divider dashed"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"cloudflare",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turnstile Enabled");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn Cloudflare Turnstile On and Off");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="turnstile_enabled">
          <input type="checkbox" name="turnstile_enabled" id="turnstile_enabled" <?php if ($_smarty_tpl->getValue('system')['turnstile_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turnstile Site Key");?>

      </label>
      <div class="col-md-9">
        <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
          <input type="text" class="form-control" name="turnstile_site_key" value="<?php echo $_smarty_tpl->getValue('system')['turnstile_site_key'];?>
">
        <?php } else { ?>
          <input type="password" class="form-control" value="*********">
        <?php }?>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turnstile Secret Key");?>

      </label>
      <div class="col-md-9">
        <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
          <input type="text" class="form-control" name="turnstile_secret_key" value="<?php echo $_smarty_tpl->getValue('system')['turnstile_secret_key'];?>
">
        <?php } else { ?>
          <input type="password" class="form-control" value="*********">
        <?php }?>
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
<!-- Security --><?php }
}
