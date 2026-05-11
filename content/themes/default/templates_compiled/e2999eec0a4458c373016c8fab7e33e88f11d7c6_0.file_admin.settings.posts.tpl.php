<?php
/* Smarty version 5.8.0, created on 2026-05-08 09:53:03
  from 'file:admin.settings.posts.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fdb27ff29b57_35854115',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e2999eec0a4458c373016c8fab7e33e88f11d7c6' => 
    array (
      0 => 'admin.settings.posts.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__svg_icons.tpl' => 35,
  ),
))) {
function content_69fdb27ff29b57_35854115 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><!-- card-header -->
<div class="card-header with-icon">
  <!-- panel title -->
  <i class="fa fa-cog mr10"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Settings");?>
 &rsaquo; <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Posts");?>

  <!-- panel title -->
</div>
<!-- card-header -->

<!-- Posts -->
<form class="js_ajax-forms" data-url="admin/settings.php?edit=posts">
  <div class="card-body">
    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"24_hours",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Stories");?>
</div>
        <div class="form-text d-none d-sm-block">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the stories On and Off");?>
<br>
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Stories are photos and videos that only last 24 hours");?>

        </div>
      </div>
      <div class="text-end">
        <label class="switch" for="stories_enabled">
          <input type="checkbox" name="stories_enabled" id="stories_enabled" <?php if ($_smarty_tpl->getValue('system')['stories_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Story Duration");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="stories_duration" value="<?php echo $_smarty_tpl->getValue('system')['stories_duration'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The story duration in seconds");?>

        </div>
      </div>
    </div>

    <div class="divider"></div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Newsfeed Posts Source");?>

      </label>
      <div class="col-md-9">
        <select class="form-select" name="newsfeed_source">
          <option value="default" <?php if ($_smarty_tpl->getValue('system')['newsfeed_source'] == "default") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Default");?>
 [<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Show what user is followings (Friends, Followings, Pages... etc)");?>
]</option>
          <option value="all_posts" <?php if ($_smarty_tpl->getValue('system')['newsfeed_source'] == "all_posts") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("All Posts");?>
 [<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("All posts will be shown");?>
]</option>
        </select>
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Algorithm will exclude any post from closed/secret groups and events that users not member of incase of all posts also will disable all posts privacy");?>

        </div>
      </div>
    </div>

    <div class="divider dashed"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"merge",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Newsfeed Merge");?>
</div>
        <div class="form-text d-none d-sm-block">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the newsfeed merge On and Off");?>
<br>
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Will enable the newsfeed algorithm to merge posts from recent, popular & discover sources");?>

        </div>
      </div>
      <div class="text-end">
        <label class="switch" for="newsfeed_merge_enabled">
          <input type="checkbox" name="newsfeed_merge_enabled" id="newsfeed_merge_enabled" <?php if ($_smarty_tpl->getValue('system')['newsfeed_merge_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Recent Results");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="merge_recent_results" value="<?php echo $_smarty_tpl->getValue('system')['merge_recent_results'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("How many posts to show from recent source");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Popular Results");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="merge_popular_results" value="<?php echo $_smarty_tpl->getValue('system')['merge_popular_results'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("How many posts to show from popular source");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Discover Results");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="merge_discover_results" value="<?php echo $_smarty_tpl->getValue('system')['merge_discover_results'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("How many posts to show from discover source");?>

        </div>
      </div>
    </div>

    <div class="divider dashed"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"database",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Newsfeed Caching");?>
</div>
        <div class="form-text d-none d-sm-block">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the newsfeed caching On and Off");?>
<br>
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Delivers fresh, unique content on every refresh with a smart caching algorithm");?>

        </div>
      </div>
      <div class="text-end">
        <label class="switch" for="newsfeed_caching_enabled">
          <input type="checkbox" name="newsfeed_caching_enabled" id="newsfeed_caching_enabled" <?php if ($_smarty_tpl->getValue('system')['newsfeed_caching_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider dashed"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"cache-cleaner",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enhance Newsfeed Infinite Scroll");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Ensures smooth newsfeed browsing experience by seamlessly replacing older results at the top with new ones");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="smooth_infinite_scroll">
          <input type="checkbox" name="smooth_infinite_scroll" id="smooth_infinite_scroll" <?php if ($_smarty_tpl->getValue('system')['smooth_infinite_scroll']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider dashed"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"map",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Newsfeed Country Filter");?>
</div>
        <div class="form-text d-none d-sm-block">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the newsfeed country filter On and Off");?>

        </div>
      </div>
      <div class="text-end">
        <label class="switch" for="newsfeed_location_filter_enabled">
          <input type="checkbox" name="newsfeed_location_filter_enabled" id="newsfeed_location_filter_enabled" <?php if ($_smarty_tpl->getValue('system')['newsfeed_location_filter_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"verification",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Posts Approval System");?>
</div>
        <div class="form-text d-none d-sm-block">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the approval system On and Off (If disabled all posts will be approved by default)");?>
<br>
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("If enabled, posts will be pending for approval by the admin or moderators");?>

        </div>
      </div>
      <div class="text-end">
        <label class="switch" for="posts_approval_enabled">
          <input type="checkbox" name="posts_approval_enabled" id="posts_approval_enabled" <?php if ($_smarty_tpl->getValue('system')['posts_approval_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Appoval Limit");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="posts_approval_limit" value="<?php echo $_smarty_tpl->getValue('system')['posts_approval_limit'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("After how many posts needs to be approved so the user can post without approval");?>

        </div>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"popularity",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Popular Posts");?>
</div>
        <div class="form-text d-none d-sm-block">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the popular posts On and Off");?>
<br>
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Popular posts are public posts ordered by most reactions, comments & shares");?>

        </div>
      </div>
      <div class="text-end">
        <label class="switch" for="popular_posts_enabled">
          <input type="checkbox" name="popular_posts_enabled" id="popular_posts_enabled" <?php if ($_smarty_tpl->getValue('system')['popular_posts_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Popular Interval");?>

      </label>
      <div class="col-md-9">
        <select class="form-select" name="popular_posts_interval">
          <option <?php if ($_smarty_tpl->getValue('system')['popular_posts_interval'] == "day") {?>selected<?php }?> value="day"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Last 24 Hours");?>
</option>
          <option <?php if ($_smarty_tpl->getValue('system')['popular_posts_interval'] == "week") {?>selected<?php }?> value="week"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Last 7 Days");?>
</option>
          <option <?php if ($_smarty_tpl->getValue('system')['popular_posts_interval'] == "month") {?>selected<?php }?> value="month"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Last 30 Days");?>
</option>
          <option <?php if ($_smarty_tpl->getValue('system')['popular_posts_interval'] == "year") {?>selected<?php }?> value="year"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Last 12 Months");?>
</option>
        </select>
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Select the interval of popular posts");?>

        </div>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"posts_discover",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Discover Posts");?>
</div>
        <div class="form-text d-none d-sm-block">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the discover posts On and Off");?>
<br>
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Discover posts are public posts ordered from most recent to old");?>

        </div>
      </div>
      <div class="text-end">
        <label class="switch" for="discover_posts_enabled">
          <input type="checkbox" name="discover_posts_enabled" id="discover_posts_enabled" <?php if ($_smarty_tpl->getValue('system')['discover_posts_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"memories",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Memories");?>
</div>
        <div class="form-text d-none d-sm-block">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the memories On and Off");?>
<br>
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Memories are posts from the same day on last year");?>

        </div>
      </div>
      <div class="text-end">
        <label class="switch" for="memories_enabled">
          <input type="checkbox" name="memories_enabled" id="memories_enabled" <?php if ($_smarty_tpl->getValue('system')['memories_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"wall_posts",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Wall Posts");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Users can publish posts on their friends walls");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="wall_posts_enabled">
          <input type="checkbox" name="wall_posts_enabled" id="wall_posts_enabled" <?php if ($_smarty_tpl->getValue('system')['wall_posts_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"schedule",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Schedule Posts");?>
</div>
        <div class="form-text d-none d-sm-block">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the schedule posts On and Off");?>
<br>
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("If enabled, users will be able to schedule posts to be published in the future");?>

        </div>
      </div>
      <div class="text-end">
        <label class="switch" for="posts_schedule_enabled">
          <input type="checkbox" name="posts_schedule_enabled" id="posts_schedule_enabled" <?php if ($_smarty_tpl->getValue('system')['posts_schedule_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"spy",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Post As Anonymous");?>
</div>
        <div class="form-text d-none d-sm-block">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn Anonymous mode On and Off");?>
<br>
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Note: Admins and Moderators will able to see the real post author");?>

        </div>
      </div>
      <div class="text-end">
        <label class="switch" for="anonymous_mode">
          <input type="checkbox" name="anonymous_mode" id="anonymous_mode" <?php if ($_smarty_tpl->getValue('system')['anonymous_mode']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"adult",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Adult Mode");?>
</div>
        <div class="form-text d-none d-sm-block">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Adult mode will hide content that marked for adult from users under 18 years old");?>

        </div>
      </div>
      <div class="text-end">
        <label class="switch" for="adult_mode">
          <input type="checkbox" name="adult_mode" id="adult_mode" <?php if ($_smarty_tpl->getValue('system')['adult_mode']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"collaborative",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Collaborative Posts");?>
</div>
        <div class="form-text d-none d-sm-block">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the collaborative posts On and Off");?>
<br>
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("If enabled, users will be able to collaborate on posts and share revenues in paid posts");?>

        </div>
      </div>
      <div class="text-end">
        <label class="switch" for="collaborative_posts_enabled">
          <input type="checkbox" name="collaborative_posts_enabled" id="collaborative_posts_enabled" <?php if ($_smarty_tpl->getValue('system')['collaborative_posts_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"posts_colored",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Colored Posts");?>
</div>
        <div class="form-text d-none d-sm-block">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the colored posts On and Off");?>
<br>
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Make sure you have configured");?>
 <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('control_panel')['url'];?>
/colored_posts"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Colored Posts");?>
</a>
        </div>
      </div>
      <div class="text-end">
        <label class="switch" for="colored_posts_enabled">
          <input type="checkbox" name="colored_posts_enabled" id="colored_posts_enabled" <?php if ($_smarty_tpl->getValue('system')['colored_posts_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"smile",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Feelings/Activity Posts");?>
</div>
        <div class="form-text d-none d-sm-block">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the feelings and activity posts On and Off");?>
<br>
        </div>
      </div>
      <div class="text-end">
        <label class="switch" for="activity_posts_enabled">
          <input type="checkbox" name="activity_posts_enabled" id="activity_posts_enabled" <?php if ($_smarty_tpl->getValue('system')['activity_posts_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"voice_notes",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Voice Notes in Posts");?>
</div>
        <div class="form-text d-none d-sm-block">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the voice notes in posts On and Off");?>
<br>
        </div>
      </div>
      <div class="text-end">
        <label class="switch" for="voice_notes_posts_enabled">
          <input type="checkbox" name="voice_notes_posts_enabled" id="voice_notes_posts_enabled" <?php if ($_smarty_tpl->getValue('system')['voice_notes_posts_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="form-table-row">
      <div class="avatar">
        <div style="width: 40px; height: 40px;"></div>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Voice Notes in Comments");?>
</div>
        <div class="form-text d-none d-sm-block">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the voice notes in comments On and Off");?>
<br>
        </div>
      </div>
      <div class="text-end">
        <label class="switch" for="voice_notes_comments_enabled">
          <input type="checkbox" name="voice_notes_comments_enabled" id="voice_notes_comments_enabled" <?php if ($_smarty_tpl->getValue('system')['voice_notes_comments_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Voice Notes Max Duration");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="voice_notes_durtaion" value="<?php echo $_smarty_tpl->getValue('system')['voice_notes_durtaion'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The maximum length for voice note in seconds");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Voice Notes Encoding");?>

      </label>
      <div class="col-md-9">
        <select class="form-select" name="voice_notes_encoding">
          <option value="mp3" <?php if ($_smarty_tpl->getValue('system')['voice_notes_encoding'] == "mp3") {?>selected<?php }?>>mp3</option>
          <option value="ogg" <?php if ($_smarty_tpl->getValue('system')['voice_notes_encoding'] == "ogg") {?>selected<?php }?>>ogg</option>
          <option value="wav" <?php if ($_smarty_tpl->getValue('system')['voice_notes_encoding'] == "wav") {?>selected<?php }?>>wav</option>
        </select>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"polls",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Polls");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the poll posts On and Off");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="polls_enabled">
          <input type="checkbox" name="polls_enabled" id="polls_enabled" <?php if ($_smarty_tpl->getValue('system')['polls_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"map",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Geolocation");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the post Geolocation On and Off");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="geolocation_enabled">
          <input type="checkbox" name="geolocation_enabled" id="geolocation_enabled" <?php if ($_smarty_tpl->getValue('system')['geolocation_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Geolocation Google Key");?>

      </label>
      <div class="col-md-9">
        <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
          <input type="text" class="form-control" name="geolocation_key" value="<?php echo $_smarty_tpl->getValue('system')['geolocation_key'];?>
">
        <?php } else { ?>
          <input type="password" class="form-control" value="*********">
        <?php }?>
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Check the documentation to learn how to get this key");?>

        </div>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"gif",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("GIF");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the gif posts On and Off");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="gif_enabled">
          <input type="checkbox" name="gif_enabled" id="gif_enabled" <?php if ($_smarty_tpl->getValue('system')['gif_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Giphy API Key");?>

      </label>
      <div class="col-md-9">
        <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
          <input type="text" class="form-control" name="giphy_key" value="<?php echo $_smarty_tpl->getValue('system')['giphy_key'];?>
">
        <?php } else { ?>
          <input type="password" class="form-control" value="*********">
        <?php }?>
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Check the documentation to learn how to get this key");?>

        </div>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"user_information",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Disable Profile Posts Updates");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn it on to disable changing profile picture and cover posts");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="profile_posts_updates_disabled">
          <input type="checkbox" name="profile_posts_updates_disabled" id="profile_posts_updates_disabled" <?php if ($_smarty_tpl->getValue('system')['profile_posts_updates_disabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"language",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Post Translation");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the post translation On and Off");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="post_translation_enabled">
          <input type="checkbox" name="post_translation_enabled" id="post_translation_enabled" <?php if ($_smarty_tpl->getValue('system')['post_translation_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Google Translation Key");?>

      </label>
      <div class="col-md-9">
        <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
          <input type="text" class="form-control" name="google_translation_key" value="<?php echo $_smarty_tpl->getValue('system')['google_translation_key'];?>
">
        <?php } else { ?>
          <input type="password" class="form-control" value="*********">
        <?php }?>
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Check the documentation to learn how to get this key");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Yandex Translation Key");?>

      </label>
      <div class="col-md-9">
        <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
          <input type="text" class="form-control" name="yandex_key" value="<?php echo $_smarty_tpl->getValue('system')['yandex_key'];?>
">
        <?php } else { ?>
          <input type="password" class="form-control" value="*********">
        <?php }?>
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Check the documentation to learn how to get this key");?>

        </div>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"youtube_player",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Smart YouTube Player");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Smart YouTube player will save a lot of bandwidth");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="smart_yt_player">
          <input type="checkbox" name="smart_yt_player" id="smart_yt_player" <?php if ($_smarty_tpl->getValue('system')['smart_yt_player']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"media-player",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Disable YouTube Player");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("If you disable YouTube player the default system media player will be used instead");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="disable_yt_player">
          <input type="checkbox" name="disable_yt_player" id="disable_yt_player" <?php if ($_smarty_tpl->getValue('system')['disable_yt_player']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"social_share",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Social Media Share");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the social media share for posts On and Off");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="social_share_enabled">
          <input type="checkbox" name="social_share_enabled" id="social_share_enabled" <?php if ($_smarty_tpl->getValue('system')['social_share_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider"></div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Max Post Characters");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="max_post_length" value="<?php echo $_smarty_tpl->getValue('system')['max_post_length'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The Maximum allowed post characters length (0 for unlimited)");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Max Comment Characters");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="max_comment_length" value="<?php echo $_smarty_tpl->getValue('system')['max_comment_length'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The Maximum allowed comment characters length (0 for unlimited)");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Max Posts/Hour");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="max_posts_hour" value="<?php echo $_smarty_tpl->getValue('system')['max_posts_hour'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The Maximum number of posts that user can publish per hour (0 for unlimited)");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Max Comments/Hour");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="max_comments_hour" value="<?php echo $_smarty_tpl->getValue('system')['max_comments_hour'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The Maximum number of comments that user can publish per hour (0 for unlimited)");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Default Posts Privacy");?>

      </label>
      <div class="col-md-9">
        <select class="form-select" name="default_privacy">
          <option value="public" <?php if ($_smarty_tpl->getValue('system')['default_privacy'] == "public") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Public");?>
</option>
          <option value="friends" <?php if ($_smarty_tpl->getValue('system')['default_privacy'] == "friends") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Friends");?>
</option>
          <option value="me" <?php if ($_smarty_tpl->getValue('system')['default_privacy'] == "me") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Only Me");?>
</option>
        </select>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"user_online",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Online Status on Posts");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn online indicator on Posts On and Off (User must be online and enabled the chat)");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="posts_online_status">
          <input type="checkbox" name="posts_online_status" id="posts_online_status" <?php if ($_smarty_tpl->getValue('system')['posts_online_status']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"scroll_desktop",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Desktop Infinite Scroll");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn infinite scroll on desktop screens On and Off");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="desktop_infinite_scroll">
          <input type="checkbox" name="desktop_infinite_scroll" id="desktop_infinite_scroll" <?php if ($_smarty_tpl->getValue('system')['desktop_infinite_scroll']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"scroll_mobile",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Mobile Infinite Scroll");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn infinite scroll on mobile screens On and Off");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="mobile_infinite_scroll">
          <input type="checkbox" name="mobile_infinite_scroll" id="mobile_infinite_scroll" <?php if ($_smarty_tpl->getValue('system')['mobile_infinite_scroll']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"videos",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Auto Play Videos");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn auto play videos On and Off");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="auto_play_videos">
          <input type="checkbox" name="auto_play_videos" id="auto_play_videos" <?php if ($_smarty_tpl->getValue('system')['auto_play_videos']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"fluid_vertical",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Videos Fluid Mode");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable video player fluid mode");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="fluid_videos_enabled">
          <input type="checkbox" name="fluid_videos_enabled" id="fluid_videos_enabled" <?php if ($_smarty_tpl->getValue('system')['fluid_videos_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"views",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Posts Views");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn posts views system On and Off");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="posts_views_enabled">
          <input type="checkbox" name="posts_views_enabled" id="posts_views_enabled" <?php if ($_smarty_tpl->getValue('system')['posts_views_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Views Type");?>

      </label>
      <div class="col-md-9">
        <div class="form-check form-check-inline">
          <input type="radio" name="posts_views_type" id="all_views" value="all" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['posts_views_type'] == "all") {?>checked<?php }?>>
          <label class="form-check-label" for="all_views"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("All Views");?>
</label>
        </div>
        <div class="form-check form-check-inline">
          <input type="radio" name="posts_views_type" id="unique_views" value="unique" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['posts_views_type'] == "unique") {?>checked<?php }?>>
          <label class="form-check-label" for="unique_views"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Unique Views Only");?>
</label>
        </div>
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Note: All views will count all views including the same user multiple views");?>

        </div>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"star",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Posts Reviews");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the posts reviews On and Off");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="posts_reviews_enabled">
          <input type="checkbox" name="posts_reviews_enabled" id="posts_reviews_enabled" <?php if ($_smarty_tpl->getValue('system')['posts_reviews_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="form-table-row">
      <div class="avatar">
        <div style="width: 40px; height: 40px;"></div>
      </div>
      <div>
        <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Posts Review Replacement");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enbale this to allow user to change his review");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="posts_reviews_replacement_enabled">
          <input type="checkbox" name="posts_reviews_replacement_enabled" id="posts_reviews_replacement_enabled" <?php if ($_smarty_tpl->getValue('system')['posts_reviews_replacement_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"trending",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Trending Hashtags");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the trending hashtags feature On and Off");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="trending_hashtags_enabled">
          <input type="checkbox" name="trending_hashtags_enabled" id="trending_hashtags_enabled" <?php if ($_smarty_tpl->getValue('system')['trending_hashtags_enabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Trending Interval");?>

      </label>
      <div class="col-md-9">
        <select class="form-select" name="trending_hashtags_interval">
          <option <?php if ($_smarty_tpl->getValue('system')['trending_hashtags_interval'] == "day") {?>selected<?php }?> value="day"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Last 24 Hours");?>
</option>
          <option <?php if ($_smarty_tpl->getValue('system')['trending_hashtags_interval'] == "week") {?>selected<?php }?> value="week"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Last 7 Days");?>
</option>
          <option <?php if ($_smarty_tpl->getValue('system')['trending_hashtags_interval'] == "month") {?>selected<?php }?> value="month"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Last 30 Days");?>
</option>
        </select>
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Select the interval of trending hashtags");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Hashtags Limit");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="trending_hashtags_limit" value="<?php echo $_smarty_tpl->getValue('system')['trending_hashtags_limit'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("How many hashtags you want to display");?>

        </div>
      </div>
    </div>

    <div class="divider"></div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"download",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Disable Download Images");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable this to disable download images in lightbox modal");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="download_images_disabled">
          <input type="checkbox" name="download_images_disabled" id="download_images_disabled" <?php if ($_smarty_tpl->getValue('system')['download_images_disabled']) {?>checked<?php }?>>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="form-table-row">
      <div class="avatar">
        <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"right_click",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
      </div>
      <div>
        <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Disable Mouse Right Click");?>
</div>
        <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable this to disable mouse right click on images");?>
</div>
      </div>
      <div class="text-end">
        <label class="switch" for="right_click_disabled">
          <input type="checkbox" name="right_click_disabled" id="right_click_disabled" <?php if ($_smarty_tpl->getValue('system')['right_click_disabled']) {?>checked<?php }?>>
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
<!-- Posts -->



</div><?php }
}
