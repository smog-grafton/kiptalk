<?php
/* Smarty version 5.8.0, created on 2026-05-08 09:52:52
  from 'file:admin.settings.system.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fdb274a69778_21788820',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'bd7eddb35b5b8c58bb97b8bae286b6563c8203e9' => 
    array (
      0 => 'admin.settings.system.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__svg_icons.tpl' => 36,
  ),
))) {
function content_69fdb274a69778_21788820 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><!-- card-header -->
<div class="card-header with-icon with-nav">
  <!-- panel title -->
  <div class="mb20">
    <i class="fa fa-cog mr10"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Settings");?>
 &rsaquo; <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("System");?>

  </div>
  <!-- panel title -->

  <!-- panel nav -->
  <ul class="nav nav-tabs">
    <li class="nav-item">
      <a class="nav-link active" href="#General" data-bs-toggle="tab">
        <i class="fa fa-server fa-fw mr5"></i><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("General");?>
</strong>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#SEO" data-bs-toggle="tab">
        <i class="fa fa-sitemap fa-fw mr5"></i><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("SEO");?>
</strong>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#Modules" data-bs-toggle="tab">
        <i class="fa fa-dice-d6 fa-fw mr5"></i><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Modules");?>
</strong>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#Features" data-bs-toggle="tab">
        <i class="fa fa-microchip fa-fw mr5"></i><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Features");?>
</strong>
      </a>
    </li>
  </ul>
  <!-- panel nav -->
</div>
<!-- card-header -->

<!-- tab-content -->
<div class="tab-content">
  <!-- General -->
  <div class="tab-pane active" id="General">
    <form class="js_ajax-forms" data-url="admin/settings.php?edit=general">
      <div class="card-body">
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"website_live",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Website Live");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the entire website On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="system_live">
              <input type="checkbox" name="system_live" id="system_live" <?php if ($_smarty_tpl->getValue('system')['system_live']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Shutdown Message");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="system_message" rows="3"><?php echo $_smarty_tpl->getValue('system')['system_message'];?>
</textarea>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The text that is presented when the site is closed");?>

            </div>
          </div>
        </div>

        <div class="divider dashed"></div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("System Email");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="system_email" value="<?php echo $_smarty_tpl->getValue('system')['system_email'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The contact email that all messages send to");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("System Datetime Format");?>

          </label>
          <div class="col-md-9">
            <select class="form-select" name="system_datetime_format">
              <option <?php if ($_smarty_tpl->getValue('system')['system_datetime_format'] == "d/m/Y H:i") {?>selected<?php }?> value="d/m/Y H:i">d/m/Y H:i (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Example");?>
: 30/05/2023 01:30 PM)</option>
              <option <?php if ($_smarty_tpl->getValue('system')['system_datetime_format'] == "m/d/Y H:i") {?>selected<?php }?> value="m/d/Y H:i">m/d/Y H:i (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Example");?>
: 05/30/2023 01:30 PM)</option>
            </select>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Select the datetime format of the datetime picker");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("System Distance Unit");?>

          </label>
          <div class="col-md-9">
            <select class="form-select" name="system_distance">
              <option <?php if ($_smarty_tpl->getValue('system')['system_distance'] == "mile") {?>selected<?php }?> value="mile"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Mile");?>
</option>
              <option <?php if ($_smarty_tpl->getValue('system')['system_distance'] == "kilometer") {?>selected<?php }?> value="kilometer"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Kilometer");?>
</option>
            </select>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Select the distance measure unit of your website");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("System Currency");?>

          </label>
          <div class="col-md-9">
            <select class="form-select" name="system_currency">
              <?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('system_currencies'), 'currency');
$foreach0DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('currency')->value) {
$foreach0DoElse = false;
?>
                <option <?php if ($_smarty_tpl->getValue('currency')['default']) {?>selected<?php }?> value="<?php echo $_smarty_tpl->getValue('currency')['currency_id'];?>
">
                  <?php echo $_smarty_tpl->getValue('currency')['name'];?>
 (<?php echo $_smarty_tpl->getValue('currency')['code'];?>
)
                </option>
              <?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
            </select>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("You can add, edit or delete currencies from");?>
 <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('control_panel')['url'];?>
/currencies"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Currencies");?>
</a>
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

  <!-- SEO -->
  <div class="tab-pane" id="SEO">
    <form class="js_ajax-forms" data-url="admin/settings.php?edit=seo">
      <div class="card-body">
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"website_public",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Website Public");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Make the website public to allow non logged users to view website content");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="system_public">
              <input type="checkbox" name="system_public" id="system_public" <?php if ($_smarty_tpl->getValue('system')['system_public']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"newsfeed",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Newsfeed Public");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Make the newsfeed available for visitors in landing page");?>
<br>
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable this will make your website public and list only public posts");?>

            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="newsfeed_public">
              <input type="checkbox" name="newsfeed_public" id="newsfeed_public" <?php if ($_smarty_tpl->getValue('system')['newsfeed_public']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"directory",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Directory");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable the directory for better SEO results");?>
<br>
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Make the website public to allow non logged users to view website content");?>

            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="directory_enabled">
              <input type="checkbox" name="directory_enabled" id="directory_enabled" <?php if ($_smarty_tpl->getValue('system')['directory_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider"></div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Website Title");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="system_title" value="<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')($_smarty_tpl->getValue('system')['system_title']);?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Title of your website");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Website Description");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="system_description" rows="3"><?php echo $_smarty_tpl->getValue('system')['system_description'];?>
</textarea>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Description of your website");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Website Keywords");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="system_keywords" rows="3"><?php echo $_smarty_tpl->getValue('system')['system_keywords'];?>
</textarea>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Example: social, social site");?>

            </div>
          </div>
        </div>

        <div class="divider"></div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Directory Description");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="system_description_directory" rows="3"><?php echo $_smarty_tpl->getValue('system')['system_description_directory'];?>
</textarea>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Description of your Directory");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Pages Description");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="system_description_pages" rows="3"><?php echo $_smarty_tpl->getValue('system')['system_description_pages'];?>
</textarea>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Description of your pages module");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Groups Description");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="system_description_groups" rows="3"><?php echo $_smarty_tpl->getValue('system')['system_description_groups'];?>
</textarea>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Description of your groups module");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Events Description");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="system_description_events" rows="3"><?php echo $_smarty_tpl->getValue('system')['system_description_events'];?>
</textarea>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Description of your events module");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Watch Description");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="system_description_watch" rows="3"><?php echo $_smarty_tpl->getValue('system')['system_description_watch'];?>
</textarea>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Description of your watch module");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Blogs Description");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="system_description_blogs" rows="3"><?php echo $_smarty_tpl->getValue('system')['system_description_blogs'];?>
</textarea>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Description of your blogs module");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Marketplace Description");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="system_description_marketplace" rows="3"><?php echo $_smarty_tpl->getValue('system')['system_description_marketplace'];?>
</textarea>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Description of your marketplace module");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Funding Description");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="system_description_funding" rows="3"><?php echo $_smarty_tpl->getValue('system')['system_description_funding'];?>
</textarea>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Description of your funding module");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Offers Description");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="system_description_offers" rows="3"><?php echo $_smarty_tpl->getValue('system')['system_description_offers'];?>
</textarea>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Description of your offer module");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Jobs Description");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="system_description_jobs" rows="3"><?php echo $_smarty_tpl->getValue('system')['system_description_jobs'];?>
</textarea>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Description of your jobs module");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Courses Description");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="system_description_courses" rows="3"><?php echo $_smarty_tpl->getValue('system')['system_description_courses'];?>
</textarea>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Description of your courses module");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Forums Description");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="system_description_forums" rows="3"><?php echo $_smarty_tpl->getValue('system')['system_description_forums'];?>
</textarea>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Description of your forums module");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Movies Description");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="system_description_movies" rows="3"><?php echo $_smarty_tpl->getValue('system')['system_description_movies'];?>
</textarea>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Description of your movies module");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Games Description");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="system_description_games" rows="3"><?php echo $_smarty_tpl->getValue('system')['system_description_games'];?>
</textarea>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Description of your games module");?>

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
  <!-- SEO -->

  <!-- Modules -->
  <div class="tab-pane" id="Modules">
    <form class="js_ajax-forms" data-url="admin/settings.php?edit=modules">
      <div class="card-body">
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"pages",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Pages");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the pages On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="pages_enabled">
              <input type="checkbox" name="pages_enabled" id="pages_enabled" <?php if ($_smarty_tpl->getValue('system')['pages_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"star",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Pages Reviews");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the pages reviews On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="pages_reviews_enabled">
              <input type="checkbox" name="pages_reviews_enabled" id="pages_reviews_enabled" <?php if ($_smarty_tpl->getValue('system')['pages_reviews_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <div style="width: 40px; height: 40px;"></div>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Pages Review Replacement");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enbale this to allow user to change his review");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="pages_reviews_replacement_enabled">
              <input type="checkbox" name="pages_reviews_replacement_enabled" id="pages_reviews_replacement_enabled" <?php if ($_smarty_tpl->getValue('system')['pages_reviews_replacement_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"user_information",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Pages Business ID (PBID)");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the page business ID On and Off");?>
<br>
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("PBID is a unique ID for each page consists of 16 digits from country code and category id and page id");?>

            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="pages_pbid_enabled">
              <input type="checkbox" name="pages_pbid_enabled" id="pages_pbid_enabled" <?php if ($_smarty_tpl->getValue('system')['pages_pbid_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"map",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Pages Country Filter");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the pages country filter On and Off");?>

            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="pages_location_filter_enabled">
              <input type="checkbox" name="pages_location_filter_enabled" id="pages_location_filter_enabled" <?php if ($_smarty_tpl->getValue('system')['pages_location_filter_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"groups",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Groups");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the groups On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="groups_enabled">
              <input type="checkbox" name="groups_enabled" id="groups_enabled" <?php if ($_smarty_tpl->getValue('system')['groups_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"star",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Groups Reviews");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the groups reviews On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="groups_reviews_enabled">
              <input type="checkbox" name="groups_reviews_enabled" id="groups_reviews_enabled" <?php if ($_smarty_tpl->getValue('system')['groups_reviews_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <div style="width: 40px; height: 40px;"></div>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Groups Review Replacement");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enbale this to allow user to change his review");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="groups_reviews_replacement_enabled">
              <input type="checkbox" name="groups_reviews_replacement_enabled" id="groups_reviews_replacement_enabled" <?php if ($_smarty_tpl->getValue('system')['groups_reviews_replacement_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"map",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Groups Country Filter");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the groups country filter On and Off");?>

            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="groups_location_filter_enabled">
              <input type="checkbox" name="groups_location_filter_enabled" id="groups_location_filter_enabled" <?php if ($_smarty_tpl->getValue('system')['groups_location_filter_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"events",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Events");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the events On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="events_enabled">
              <input type="checkbox" name="events_enabled" id="events_enabled" <?php if ($_smarty_tpl->getValue('system')['events_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <div style="width: 40px; height: 40px;"></div>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Pages Events");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Allow pages to create events");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="pages_events_enabled">
              <input type="checkbox" name="pages_events_enabled" id="pages_events_enabled" <?php if ($_smarty_tpl->getValue('system')['pages_events_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"star",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Events Reviews");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the events reviews On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="events_reviews_enabled">
              <input type="checkbox" name="events_reviews_enabled" id="events_reviews_enabled" <?php if ($_smarty_tpl->getValue('system')['events_reviews_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <div style="width: 40px; height: 40px;"></div>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Events Review Replacement");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enbale this to allow user to change his review");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="events_reviews_replacement_enabled">
              <input type="checkbox" name="events_reviews_replacement_enabled" id="events_reviews_replacement_enabled" <?php if ($_smarty_tpl->getValue('system')['events_reviews_replacement_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"map",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Events Country Filter");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the events country filter On and Off");?>

            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="events_location_filter_enabled">
              <input type="checkbox" name="events_location_filter_enabled" id="events_location_filter_enabled" <?php if ($_smarty_tpl->getValue('system')['events_location_filter_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"reels",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Reels");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the reels On and Off");?>

            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="reels_enabled">
              <input type="checkbox" name="reels_enabled" id="reels_enabled" <?php if ($_smarty_tpl->getValue('system')['reels_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"watch",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Watch");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the watch videos On and Off");?>
<br>
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Watch module will show all public videos at one place");?>

            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="watch_enabled">
              <input type="checkbox" name="watch_enabled" id="watch_enabled" <?php if ($_smarty_tpl->getValue('system')['watch_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"blogs",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Blogs");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the blogs On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="blogs_enabled">
              <input type="checkbox" name="blogs_enabled" id="blogs_enabled" <?php if ($_smarty_tpl->getValue('system')['blogs_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"widget",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Blogs Widget");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enbale latest blogs carousel widget to be displayed on the home page");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="blogs_widget_enabled">
              <input type="checkbox" name="blogs_widget_enabled" id="blogs_widget_enabled" <?php if ($_smarty_tpl->getValue('system')['blogs_widget_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"offers",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Offers");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the offers On and Off");?>
<br>
            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="offers_enabled">
              <input type="checkbox" name="offers_enabled" id="offers_enabled" <?php if ($_smarty_tpl->getValue('system')['offers_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"jobs",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Jobs");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the jobs On and Off");?>
<br>
            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="jobs_enabled">
              <input type="checkbox" name="jobs_enabled" id="jobs_enabled" <?php if ($_smarty_tpl->getValue('system')['jobs_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"courses",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Courses");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the courses On and Off");?>
<br>
            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="courses_enabled">
              <input type="checkbox" name="courses_enabled" id="courses_enabled" <?php if ($_smarty_tpl->getValue('system')['courses_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"forums",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Forums");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the forums On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="forums_enabled">
              <input type="checkbox" name="forums_enabled" id="forums_enabled" <?php if ($_smarty_tpl->getValue('system')['forums_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"user_online",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Online Users");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Show forums online users");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="forums_online_enabled">
              <input type="checkbox" name="forums_online_enabled" id="forums_online_enabled" <?php if ($_smarty_tpl->getValue('system')['forums_online_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"stats",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Statistics");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Show forums statistics");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="forums_statistics_enabled">
              <input type="checkbox" name="forums_statistics_enabled" id="forums_statistics_enabled" <?php if ($_smarty_tpl->getValue('system')['forums_statistics_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"movies",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Movies");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the movies On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="movies_enabled">
              <input type="checkbox" name="movies_enabled" id="movies_enabled" <?php if ($_smarty_tpl->getValue('system')['movies_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"games",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Games");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the games On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="games_enabled">
              <input type="checkbox" name="games_enabled" id="games_enabled" <?php if ($_smarty_tpl->getValue('system')['games_enabled']) {?>checked<?php }?>>
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
  <!-- Modules -->

  <!-- Features -->
  <div class="tab-pane" id="Features">
    <form class="js_ajax-forms" data-url="admin/settings.php?edit=features">
      <div class="card-body">
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"language",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Auto Language Detection");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("If enabled sytem will detect user language automatically");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="auto_language_detection">
              <input type="checkbox" name="auto_language_detection" id="auto_language_detection" <?php if ($_smarty_tpl->getValue('system')['auto_language_detection']) {?>checked<?php }?>>
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
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Fliter by Geolocation");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("If enabled user will able to filter people, products ... etc by Geolocation");?>
<br>
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("System will use your browser's geolocation feature to detect the user's current location (latitude and longitude)");?>

            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="location_finder_enabled">
              <input type="checkbox" name="location_finder_enabled" id="location_finder_enabled" <?php if ($_smarty_tpl->getValue('system')['location_finder_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"contat_us",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Contact Us");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the contact us page On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="contact_enabled">
              <input type="checkbox" name="contact_enabled" id="contact_enabled" <?php if ($_smarty_tpl->getValue('system')['contact_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"support",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Support Center");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the support tickets center On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="support_center_enabled">
              <input type="checkbox" name="support_center_enabled" id="support_center_enabled" <?php if ($_smarty_tpl->getValue('system')['support_center_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"dark_light",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("DayTime Messages");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the DayTime Messages (Good Morning, Afternoon, Evening) On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="daytime_msg_enabled">
              <input type="checkbox" name="daytime_msg_enabled" id="daytime_msg_enabled" <?php if ($_smarty_tpl->getValue('system')['daytime_msg_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Morning Message");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="system_morning_message" rows="3"><?php echo $_smarty_tpl->getValue('system')['system_morning_message'];?>
</textarea>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Afternoon Message");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="system_afternoon_message" rows="3"><?php echo $_smarty_tpl->getValue('system')['system_afternoon_message'];?>
</textarea>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Evening Message");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="system_evening_message" rows="3"><?php echo $_smarty_tpl->getValue('system')['system_evening_message'];?>
</textarea>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"poke",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Pokes");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable users to poke each others");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="pokes_enabled">
              <input type="checkbox" name="pokes_enabled" id="pokes_enabled" <?php if ($_smarty_tpl->getValue('system')['pokes_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"gifts",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Gifts");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable users to send gifts to each others");?>
<br>
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Make sure you have configured");?>
 <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('control_panel')['url'];?>
/gifts"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Gifts");?>
</a>
            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="gifts_enabled">
              <input type="checkbox" name="gifts_enabled" id="gifts_enabled" <?php if ($_smarty_tpl->getValue('system')['gifts_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"points",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Gifts with Points");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable users to send gifts with points to each others");?>
<br>
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Make sure you have configured");?>
 <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('control_panel')['url'];?>
/points"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Points System");?>
</a>
            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="gifts_points_enabled">
              <input type="checkbox" name="gifts_points_enabled" id="gifts_points_enabled" <?php if ($_smarty_tpl->getValue('system')['gifts_points_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"cookie",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Cookie Consent");?>
 (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("GDPR");?>
)</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the cookie consent notification On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="cookie_consent_enabled">
              <input type="checkbox" name="cookie_consent_enabled" id="cookie_consent_enabled" <?php if ($_smarty_tpl->getValue('system')['cookie_consent_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"adblock",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Adblock Detector");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the Adblock auto detector notification On and Off");?>
, <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("(Note: Admin is exception)");?>
<br>
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Red block message will appear to make user disable adblock from his browser");?>
<br>
            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="adblock_detector_enabled">
              <input type="checkbox" name="adblock_detector_enabled" id="adblock_detector_enabled" <?php if ($_smarty_tpl->getValue('system')['adblock_detector_enabled']) {?>checked<?php }?>>
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
  <!-- Features -->
</div>
<!-- tab-content --><?php }
}
