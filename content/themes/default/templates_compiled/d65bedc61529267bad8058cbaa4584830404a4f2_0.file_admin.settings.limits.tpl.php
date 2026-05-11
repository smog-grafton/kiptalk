<?php
/* Smarty version 5.8.0, created on 2026-05-08 21:13:01
  from 'file:admin.settings.limits.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fe51dd77c434_34828815',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd65bedc61529267bad8058cbaa4584830404a4f2' => 
    array (
      0 => 'admin.settings.limits.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_69fe51dd77c434_34828815 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><!-- card-header -->
<div class="card-header with-icon">
  <!-- panel title -->
  <i class="fa fa-cog mr10"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Settings");?>
 &rsaquo; <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Limits");?>

  <!-- panel title -->
</div>
<!-- card-header -->

<!-- Limits -->
<form class="js_ajax-forms" data-url="admin/settings.php?edit=limits">
  <div class="card-body">
    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Data Heartbeat");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="data_heartbeat" value="<?php echo $_smarty_tpl->getValue('system')['data_heartbeat'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The update interval to check for new data (in seconds)");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Chat Heartbeat");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="chat_heartbeat" value="<?php echo $_smarty_tpl->getValue('system')['chat_heartbeat'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The update interval to check for new messages (in seconds)");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Offline After");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="offline_time" value="<?php echo $_smarty_tpl->getValue('system')['offline_time'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The amount of time to be considered online since the last user's activity (in seconds)");?>
<br>
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The maximim value is one day = 86400 seconds");?>

        </div>
      </div>
    </div>

    <div class="divider"></div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Newsfeed Results");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="newsfeed_results" value="<?php echo $_smarty_tpl->getValue('system')['newsfeed_results'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The number of posts in the newsfeed");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Pages Results");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="pages_results" value="<?php echo $_smarty_tpl->getValue('system')['pages_results'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The number of results in the pages module");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Groups Results");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="groups_results" value="<?php echo $_smarty_tpl->getValue('system')['groups_results'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The number of results in the groups module");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Events Results");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="events_results" value="<?php echo $_smarty_tpl->getValue('system')['events_results'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The number of results in the events module");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Blogs Results");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="blogs_results" value="<?php echo $_smarty_tpl->getValue('system')['blogs_results'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The number of results in the blogs module");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Marketplace Results");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="marketplace_results" value="<?php echo $_smarty_tpl->getValue('system')['marketplace_results'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The number of results in the marketplace module");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Funding Results");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="funding_results" value="<?php echo $_smarty_tpl->getValue('system')['funding_results'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The number of results in the funding module");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Offers Results");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="offers_results" value="<?php echo $_smarty_tpl->getValue('system')['offers_results'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The number of results in the offers module");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Jobs Results");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="jobs_results" value="<?php echo $_smarty_tpl->getValue('system')['jobs_results'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The number of results in the jobs module");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Courses Results");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="courses_results" value="<?php echo $_smarty_tpl->getValue('system')['courses_results'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The number of results in the courses module");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Games Results");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="games_results" value="<?php echo $_smarty_tpl->getValue('system')['games_results'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The number of results in the games module");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Search Results");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="search_results" value="<?php echo $_smarty_tpl->getValue('system')['search_results'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The number of results in the search module");?>

        </div>
      </div>
    </div>

    <div class="divider"></div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Minimum Results");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="min_results" value="<?php echo $_smarty_tpl->getValue('system')['min_results'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The Min number of results per request");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Maximum Results");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="max_results" value="<?php echo $_smarty_tpl->getValue('system')['max_results'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The Max number of results per request");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Minimum Even Results");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="min_results_even" value="<?php echo $_smarty_tpl->getValue('system')['min_results_even'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The Min even number of results per request");?>

        </div>
      </div>
    </div>

    <div class="row form-group">
      <label class="col-md-3 form-label">
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Maximum Even Results");?>

      </label>
      <div class="col-md-9">
        <input type="text" class="form-control" name="max_results_even" value="<?php echo $_smarty_tpl->getValue('system')['max_results_even'];?>
">
        <div class="form-text">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The Max even number of results per request");?>

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
<!-- Limits --><?php }
}
