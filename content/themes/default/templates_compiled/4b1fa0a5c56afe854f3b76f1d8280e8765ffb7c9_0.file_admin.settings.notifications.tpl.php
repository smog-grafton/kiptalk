<?php
/* Smarty version 5.8.0, created on 2026-05-08 21:06:51
  from 'file:admin.settings.notifications.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fe506bc589e3_56472556',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4b1fa0a5c56afe854f3b76f1d8280e8765ffb7c9' => 
    array (
      0 => 'admin.settings.notifications.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__svg_icons.tpl' => 7,
  ),
))) {
function content_69fe506bc589e3_56472556 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><!-- card-header -->
<div class="card-header with-icon with-nav">
  <!-- panel title -->
  <div class="mb20">
    <i class="fa fa-bell mr10"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Settings");?>
 &rsaquo; <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Notifications");?>

  </div>
  <!-- panel title -->

  <!-- panel nav -->
  <ul class="nav nav-tabs">
    <li class="nav-item">
      <a class="nav-link active" href="#Website" data-bs-toggle="tab">
        <i class="fa fa-bell fa-fw mr5"></i><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Website Notifications");?>
</strong>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#Email" data-bs-toggle="tab">
        <i class="fa fa-envelope fa-fw mr5"></i><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Email Notifications");?>
</strong>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#Push" data-bs-toggle="tab">
        <i class="fas fa-broadcast-tower fa-fw mr5"></i><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Push Notifications");?>
</strong>
      </a>
    </li>
  </ul>
  <!-- panel nav -->
</div>
<!-- card-header -->

<!-- tabs content -->
<div class="tab-content">
  <!-- Website Notifications -->
  <div class="tab-pane active" id="Website">
    <form class="js_ajax-forms" data-url="admin/settings.php?edit=website_notifications">
      <div class="card-body">

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"profile_notifications",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Profile Visit Notification");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the profile visit notification On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="profile_notification_enabled">
              <input type="checkbox" name="profile_notification_enabled" id="profile_notification_enabled" <?php if ($_smarty_tpl->getValue('system')['profile_notification_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"browser_notifications",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Browser Notifications");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the browser notifications On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="browser_notifications_enabled">
              <input type="checkbox" name="browser_notifications_enabled" id="browser_notifications_enabled" <?php if ($_smarty_tpl->getValue('system')['browser_notifications_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"noty_notifications",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Noty Notifications");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the noty notifications On and Off");?>
 (<a target="_blank" href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->getValue('system')['theme'];?>
/images/screenshots/noty_notification.png"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("preview");?>
</a>)
            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="noty_notifications_enabled">
              <input type="checkbox" name="noty_notifications_enabled" id="noty_notifications_enabled" <?php if ($_smarty_tpl->getValue('system')['noty_notifications_enabled']) {?>checked<?php }?>>
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
      </div>
      <div class="card-footer text-end">
        <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Save Changes");?>
</button>
      </div>
    </form>
  </div>
  <!-- Website Notifications -->

  <!-- Email Notifications -->
  <div class="tab-pane" id="Email">
    <form class="js_ajax-forms" data-url="admin/settings.php?edit=email_notifications">
      <div class="card-body">

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"newsletter",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Email Notifications");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable/Disable email notifications system");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="email_notifications">
              <input type="checkbox" name="email_notifications" id="email_notifications" <?php if ($_smarty_tpl->getValue('system')['email_notifications']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Email User When");?>

          </label>
          <div class="col-md-9">
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="email_post_likes" id="email_post_likes" <?php if ($_smarty_tpl->getValue('system')['email_post_likes']) {?>checked<?php }?>>
              <label class="form-check-label" for="email_post_likes"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Someone reacted to his post");?>
</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="email_post_comments" id="email_post_comments" <?php if ($_smarty_tpl->getValue('system')['email_post_comments']) {?>checked<?php }?>>
              <label class="form-check-label" for="email_post_comments"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Someone commented on his post");?>
</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="email_post_shares" id="email_post_shares" <?php if ($_smarty_tpl->getValue('system')['email_post_shares']) {?>checked<?php }?>>
              <label class="form-check-label" for="email_post_shares"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Someone shared his post");?>
</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="email_wall_posts" id="email_wall_posts" <?php if ($_smarty_tpl->getValue('system')['email_wall_posts']) {?>checked<?php }?>>
              <label class="form-check-label" for="email_wall_posts"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Someone posted on his timeline");?>
</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="email_mentions" id="email_mentions" <?php if ($_smarty_tpl->getValue('system')['email_mentions']) {?>checked<?php }?>>
              <label class="form-check-label" for="email_mentions"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Someone mentioned him");?>
</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="email_profile_visits" id="email_profile_visits" <?php if ($_smarty_tpl->getValue('system')['email_profile_visits']) {?>checked<?php }?>>
              <label class="form-check-label" for="email_profile_visits"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Someone visited his profile");?>
</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="email_friend_requests" id="email_friend_requests" <?php if ($_smarty_tpl->getValue('system')['email_friend_requests']) {?>checked<?php }?>>
              <label class="form-check-label" for="email_friend_requests"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Someone sent him or accepted his friend requset");?>
</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="email_user_verification" id="email_user_verification" <?php if ($_smarty_tpl->getValue('system')['email_user_verification']) {?>checked<?php }?>>
              <label class="form-check-label" for="email_user_verification"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Admin approved/declined my verification requests");?>
</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="email_user_post_approval" id="email_user_post_approval" <?php if ($_smarty_tpl->getValue('system')['email_user_post_approval']) {?>checked<?php }?>>
              <label class="form-check-label" for="email_user_post_approval"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Admin approved my pending posts");?>
</label>
            </div>
          </div>
        </div>

        <div class="divider dashed"></div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Email Admin When");?>

          </label>
          <div class="col-md-9">
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="email_admin_verifications" id="email_admin_verifications" <?php if ($_smarty_tpl->getValue('system')['email_admin_verifications']) {?>checked<?php }?>>
              <label class="form-check-label" for="email_admin_verifications"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Verification request sent by user/page");?>
</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="email_admin_post_approval" id="email_admin_post_approval" <?php if ($_smarty_tpl->getValue('system')['email_admin_post_approval']) {?>checked<?php }?>>
              <label class="form-check-label" for="email_admin_post_approval"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Post published and needs approval");?>
</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="email_admin_user_approval" id="email_admin_user_approval" <?php if ($_smarty_tpl->getValue('system')['email_admin_user_approval']) {?>checked<?php }?>>
              <label class="form-check-label" for="email_admin_user_approval"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("New user needs approval");?>
</label>
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
  <!-- Email Notifications -->

  <!-- Push Notifications -->
  <div class="tab-pane" id="Push">
    <form class="js_ajax-forms" data-url="admin/settings.php?edit=push_notifications">
      <div class="card-body">
        <div class="heading-small mb20">
          <i class="fa-solid fa-desktop mr5"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Web Apps");?>

        </div>
        <div class="pl-md-4">
          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"onesignal",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("OneSignal Push Notifications");?>
 </div>
              <div class="form-text d-none d-sm-block">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the OneSignal push notification for Web Apps and Web-View Apps");?>

              </div>
            </div>
            <div class="text-end">
              <label class="switch" for="onesignal_notification_enabled">
                <input type="checkbox" name="onesignal_notification_enabled" id="onesignal_notification_enabled" <?php if ($_smarty_tpl->getValue('system')['onesignal_notification_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("OneSignal APP ID");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="onesignal_app_id" value="<?php echo $_smarty_tpl->getValue('system')['onesignal_app_id'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("OneSignal REST API Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="onesignal_api_key" value="<?php echo $_smarty_tpl->getValue('system')['onesignal_api_key'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>
        </div>

        <div class="divider dashed"></div>

        <div class="heading-small mb20">
          <i class="fa-solid fa-comments mr5"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Messaging Apps");?>

        </div>
        <div class="pl-md-4">
          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"onesignal",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("OneSignal Push Notifications");?>
 </div>
              <div class="form-text d-none d-sm-block">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the OneSignal push notification for Native Messenger Apps");?>

              </div>
            </div>
            <div class="text-end">
              <label class="switch" for="onesignal_messenger_notification_enabled">
                <input type="checkbox" name="onesignal_messenger_notification_enabled" id="onesignal_messenger_notification_enabled" <?php if ($_smarty_tpl->getValue('system')['onesignal_messenger_notification_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("OneSignal APP ID");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="onesignal_messenger_app_id" value="<?php echo $_smarty_tpl->getValue('system')['onesignal_messenger_app_id'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("OneSignal REST API Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="onesignal_messenger_api_key" value="<?php echo $_smarty_tpl->getValue('system')['onesignal_messenger_api_key'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>
        </div>

        <div class="divider dashed"></div>

        <div class="heading-small mb20">
          <i class="fa-solid fa-mobile mr5"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Timeline Apps");?>

        </div>
        <div class="pl-md-4">
          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"onesignal",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("OneSignal Push Notifications");?>
 </div>
              <div class="form-text d-none d-sm-block">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the OneSignal push notification for Native Timeline Apps");?>

              </div>
            </div>
            <div class="text-end">
              <label class="switch" for="onesignal_timeline_notification_enabled">
                <input type="checkbox" name="onesignal_timeline_notification_enabled" id="onesignal_timeline_notification_enabled" <?php if ($_smarty_tpl->getValue('system')['onesignal_timeline_notification_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("OneSignal APP ID");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="onesignal_timeline_app_id" value="<?php echo $_smarty_tpl->getValue('system')['onesignal_timeline_app_id'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("OneSignal REST API Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="onesignal_timeline_api_key" value="<?php echo $_smarty_tpl->getValue('system')['onesignal_timeline_api_key'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
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
  <!-- Push Notifications -->
</div><?php }
}
