<?php
/* Smarty version 5.8.0, created on 2026-05-08 16:24:21
  from 'file:settings.information.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fe0e3551da71_06740776',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3f07a1b6a690dd6df531431df801e3705ba61609' => 
    array (
      0 => 'settings.information.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__svg_icons.tpl' => 9,
  ),
))) {
function content_69fe0e3551da71_06740776 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><div class="card-header with-icon">
  <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"user_information",'class'=>"main-icon mr15",'width'=>"24px",'height'=>"24px"), (int) 0, $_smarty_current_dir);
?>
  <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Download Your Information");?>

</div>
<form class="js_ajax-forms" data-url="users/information.php">
  <div class="card-body">
    <div class="alert alert-info">
      <div class="text">
        <strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Download Your Information");?>
</strong><br>
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("You can download all of it at once, or you can select only the types of information you want");?>

      </div>
    </div>
    <div class="h5 mb20 text-center">
      <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Select which information you would like to download");?>

    </div>
    <!-- download options -->
    <div class="text-center">
      <!-- Information -->
      <input class="x-hidden input-label" type="checkbox" name="download_information" id="download_information" />
      <label class="button-label" for="download_information">
        <div class="icon">
          <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"user_information",'class'=>"main-icon",'width'=>"32px",'height'=>"32px"), (int) 0, $_smarty_current_dir);
?>
        </div>
        <div class="title"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Info");?>
</div>
      </label>
      <!-- Information -->
      <!-- Friends -->
      <?php if ($_smarty_tpl->getValue('system')['friends_enabled']) {?>
        <input class="x-hidden input-label" type="checkbox" name="download_friends" id="download_friends" />
        <label class="button-label" for="download_friends">
          <div class="icon">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"friends",'class'=>"main-icon",'width'=>"32px",'height'=>"32px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div class="title"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Friends");?>
</div>
        </label>
      <?php }?>
      <!-- Friends -->
      <!-- Followings -->
      <input class="x-hidden input-label" type="checkbox" name="download_followings" id="download_followings" />
      <label class="button-label" for="download_followings">
        <div class="icon">
          <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"followings",'class'=>"main-icon",'width'=>"32px",'height'=>"32px"), (int) 0, $_smarty_current_dir);
?>
        </div>
        <div class="title"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Followings");?>
</div>
      </label>
      <!-- Followings -->
      <!-- Followers -->
      <input class="x-hidden input-label" type="checkbox" name="download_followers" id="download_followers" />
      <label class="button-label" for="download_followers">
        <div class="icon">
          <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"followers",'class'=>"main-icon",'width'=>"32px",'height'=>"32px"), (int) 0, $_smarty_current_dir);
?>
        </div>
        <div class="title"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Followers");?>
</div>
      </label>
      <!-- Followers -->
    </div>
    <div class="text-center">
      <!-- Pages -->
      <input class="x-hidden input-label" type="checkbox" name="download_pages" id="download_pages" />
      <label class="button-label" for="download_pages">
        <div class="icon">
          <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"pages",'class'=>"main-icon",'width'=>"32px",'height'=>"32px"), (int) 0, $_smarty_current_dir);
?>
        </div>
        <div class="title"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Pages");?>
</div>
      </label>
      <!-- Pages -->
      <!-- Groups -->
      <input class="x-hidden input-label" type="checkbox" name="download_groups" id="download_groups" />
      <label class="button-label" for="download_groups">
        <div class="icon">
          <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"groups",'class'=>"main-icon",'width'=>"32px",'height'=>"32px"), (int) 0, $_smarty_current_dir);
?>
        </div>
        <div class="title"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Groups");?>
</div>
      </label>
      <!-- Groups -->
      <!-- Events -->
      <input class="x-hidden input-label" type="checkbox" name="download_events" id="download_events" />
      <label class="button-label" for="download_events">
        <div class="icon">
          <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"events",'class'=>"main-icon",'width'=>"32px",'height'=>"32px"), (int) 0, $_smarty_current_dir);
?>
        </div>
        <div class="title"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Events");?>
</div>
      </label>
      <!-- Events -->
      <!-- Posts -->
      <input class="x-hidden input-label" type="checkbox" name="download_posts" id="download_posts" />
      <label class="button-label" for="download_posts">
        <div class="icon">
          <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"newsfeed",'class'=>"main-icon",'width'=>"32px",'height'=>"32px"), (int) 0, $_smarty_current_dir);
?>
        </div>
        <div class="title"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Posts");?>
</div>
      </label>
      <!-- Posts -->
    </div>
    <!-- download options -->

    <!-- error -->
    <div class="alert alert-danger mb0 mt20 x-hidden"></div>
    <!-- error -->

  </div>
  <div class="card-footer text-end">
    <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Request");?>
</button>
  </div>
</form><?php }
}
