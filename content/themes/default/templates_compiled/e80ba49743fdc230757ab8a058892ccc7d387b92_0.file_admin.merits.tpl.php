<?php
/* Smarty version 5.8.0, created on 2026-05-08 21:39:09
  from 'file:admin.merits.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fe57fd961826_87175648',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e80ba49743fdc230757ab8a058892ccc7d387b92' => 
    array (
      0 => 'admin.merits.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__svg_icons.tpl' => 1,
    'file:__categories.recursive_rows.tpl' => 1,
    'file:__categories.recursive_options.tpl' => 2,
  ),
))) {
function content_69fe57fd961826_87175648 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><div class="card">
  <?php if ($_smarty_tpl->getValue('sub_view') == '') {?>

    <!-- card-header -->
    <div class="card-header with-icon with-nav">
      <!-- panel title -->
      <div class="mb20">
        <i class="fa fa-star mr5"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Merits System");?>

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
          <a class="nav-link" href="#Notifications" data-bs-toggle="tab">
            <i class="fa fa-bell fa-fw mr5"></i><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Notifications");?>
</strong>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#Widgets" data-bs-toggle="tab">
            <i class="fa fa-dice-d6 fa-fw mr5"></i><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Widgets");?>
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
        <form class="js_ajax-forms" data-url="admin/settings.php?edit=merits_settings">
          <div class="card-body">
            <div class="form-table-row">
              <div class="avatar">
                <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"merits",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
              </div>
              <div>
                <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Merits");?>
</div>
                <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the merits system on or off");?>
</div>
              </div>
              <div class="text-end">
                <label class="switch" for="merits_enabled">
                  <input type="checkbox" name="merits_enabled" id="merits_enabled" <?php if ($_smarty_tpl->getValue('system')['merits_enabled']) {?>checked<?php }?>>
                  <span class="slider round"></span>
                </label>
              </div>
            </div>

            <div class="row form-group">
              <label class="col-md-3 form-label">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Max Merits Per Peroid");?>

              </label>
              <div class="col-md-9">
                <input type="text" class="form-control" name="merits_peroid_max" value="<?php echo $_smarty_tpl->getValue('system')['merits_peroid_max'];?>
">
                <div class="form-text">
                  <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The maximum number of merits that user can have in a merits cycle");?>

                </div>
              </div>
            </div>

            <div class="row form-group">
              <label class="col-md-3 form-label">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Max Sent Merits Per User");?>

              </label>
              <div class="col-md-9">
                <input type="text" class="form-control" name="merits_send_peroid_max" value="<?php echo $_smarty_tpl->getValue('system')['merits_send_peroid_max'];?>
">
                <div class="form-text">
                  <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The maximum number of merits that can be sent to the same user from same user in a merits cycle");?>

                </div>
              </div>
            </div>

            <div class="row form-group">
              <label class="col-md-3 form-label">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Periodicity");?>

              </label>
              <div class="col-md-9">
                <select class="form-select" name="merits_peroid">
                  <option <?php if ($_smarty_tpl->getValue('system')['merits_peroid'] == "1") {?>selected<?php }?> value="1"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Monthly");?>
</option>
                  <option <?php if ($_smarty_tpl->getValue('system')['merits_peroid'] == "3") {?>selected<?php }?> value="3"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Quarterly");?>
</option>
                  <option <?php if ($_smarty_tpl->getValue('system')['merits_peroid'] == "6") {?>selected<?php }?> value="6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Half Yearly");?>
</option>
                  <option <?php if ($_smarty_tpl->getValue('system')['merits_peroid'] == "12") {?>selected<?php }?> value="12"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Yearly");?>
</option>
                </select>
                <div class="form-text">
                  <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Select the peroid of the merits system");?>

                </div>
              </div>
            </div>

            <div class="row form-group">
              <label class="col-md-3 form-label">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Cycle Reset");?>

              </label>
              <div class="col-md-9">
                <select class="form-select" name="merits_peroid_reset">
                  <option <?php if ($_smarty_tpl->getValue('system')['merits_peroid_reset'] == "1") {?>selected<?php }?> value="1"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Firt of the month");?>
</option>
                  <option <?php if ($_smarty_tpl->getValue('system')['merits_peroid_reset'] == "15") {?>selected<?php }?> value="15"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Middle of the month");?>
</option>
                </select>
                <div class="form-text">
                  <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Start day for every cycle for the merits system");?>

                </div>
              </div>
            </div>

            <div class="divider dashed"></div>

            <div class="row form-group">
              <label class="col-md-3 form-label">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Cycle Start Date");?>

              </label>
              <div class="col-md-9">
                <?php if ($_smarty_tpl->getValue('system')['merits_enabled']) {?>
                  <?php echo $_smarty_tpl->getValue('cycle_dates')['start_date'];?>

                <?php } else { ?>
                  <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("N/A");?>

                <?php }?>
              </div>
            </div>

            <div class="row form-group">
              <label class="col-md-3 form-label">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Cycle End Date");?>

              </label>
              <div class="col-md-9">
                <?php if ($_smarty_tpl->getValue('system')['merits_enabled']) {?>
                  <?php echo $_smarty_tpl->getValue('cycle_dates')['end_date'];?>

                <?php } else { ?>
                  <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("N/A");?>

                <?php }?>
              </div>
            </div>

            <div class="row form-group">
              <label class="col-md-3 form-label">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Cycle Reset Date");?>

              </label>
              <div class="col-md-9">
                <?php if ($_smarty_tpl->getValue('system')['merits_enabled']) {?>
                  <?php echo $_smarty_tpl->getValue('cycle_dates')['reset_date'];?>

                <?php } else { ?>
                  <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("N/A");?>

                <?php }?>
              </div>
            </div>

            <div class="row form-group">
              <label class="col-md-3 form-label">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Cycle Reminder Date");?>

              </label>
              <div class="col-md-9">
                <?php if ($_smarty_tpl->getValue('system')['merits_enabled']) {?>
                  <?php echo $_smarty_tpl->getValue('cycle_dates')['reminder_date'];?>

                <?php } else { ?>
                  <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("N/A");?>

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
      </div>
      <!-- General -->

      <!-- Notifications -->
      <div class="tab-pane" id="Notifications">
        <form class="js_ajax-forms" data-url="admin/settings.php?edit=merits_notifications">
          <div class="card-body">
            <div class="form-table-row">
              <div>
                <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Merits Credit Recharge");?>
</div>
                <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Notify when new amounts of merits have been added to users accounts");?>
</div>
              </div>
              <div class="text-end">
                <label class="switch" for="merits_notifications_recharge">
                  <input type="checkbox" name="merits_notifications_recharge" id="merits_notifications_recharge" <?php if ($_smarty_tpl->getValue('system')['merits_notifications_recharge']) {?>checked<?php }?>>
                  <span class="slider round"></span>
                </label>
              </div>
            </div>

            <div class="form-table-row">
              <div>
                <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Merits Remainder");?>
</div>
                <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Remainder to use remaining merits 7 days before each cycle reset");?>
</div>
              </div>
              <div class="text-end">
                <label class="switch" for="merits_notifications_reminder">
                  <input type="checkbox" name="merits_notifications_reminder" id="merits_notifications_reminder" <?php if ($_smarty_tpl->getValue('system')['merits_notifications_reminder']) {?>checked<?php }?>>
                  <span class="slider round"></span>
                </label>
              </div>
            </div>

            <div class="form-table-row">
              <div>
                <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Recipient Merits Notification");?>
</div>
                <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Notify the recipients when they receive a badge");?>
</div>
              </div>
              <div class="text-end">
                <label class="switch" for="merits_notifications_recipient">
                  <input type="checkbox" name="merits_notifications_recipient" id="merits_notifications_recipient" <?php if ($_smarty_tpl->getValue('system')['merits_notifications_recipient']) {?>checked<?php }?>>
                  <span class="slider round"></span>
                </label>
              </div>
            </div>

            <div class="form-table-row">
              <div>
                <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Sender Merits Notification");?>
</div>
                <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Notify the sender when their badge has been received");?>
</div>
              </div>
              <div class="text-end">
                <label class="switch" for="merits_notifications_sender">
                  <input type="checkbox" name="merits_notifications_sender" id="merits_notifications_sender" <?php if ($_smarty_tpl->getValue('system')['merits_notifications_sender']) {?>checked<?php }?>>
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
      <!-- Notifications -->

      <!-- Widgets -->
      <div class="tab-pane" id="Widgets">
        <form class="js_ajax-forms" data-url="admin/settings.php?edit=merits_widgets">
          <div class="card-body">
            <div class="form-table-row">
              <div>
                <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Merits Newsfeed Carosel");?>
</div>
                <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Show at top of newsfeed a carousel of badge categories, including a link to the ranking section");?>
</div>
              </div>
              <div class="text-end">
                <label class="switch" for="merits_widgets_newsfeed">
                  <input type="checkbox" name="merits_widgets_newsfeed" id="merits_widgets_newsfeed" <?php if ($_smarty_tpl->getValue('system')['merits_widgets_newsfeed']) {?>checked<?php }?>>
                  <span class="slider round"></span>
                </label>
              </div>
            </div>

            <div class="form-table-row">
              <div>
                <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Personal Balance Widget");?>
</div>
                <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Post in the right column the personal balance of available badges with a link that pops up to start giving these badges to other users");?>
</div>
              </div>
              <div class="text-end">
                <label class="switch" for="merits_widgets_balance">
                  <input type="checkbox" name="merits_widgets_balance" id="merits_widgets_balance" <?php if ($_smarty_tpl->getValue('system')['merits_widgets_balance']) {?>checked<?php }?>>
                  <span class="slider round"></span>
                </label>
              </div>
            </div>

            <div class="form-table-row">
              <div>
                <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Top Winners Widget");?>
</div>
                <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Post in right column with a carousel the recent winners");?>
</div>
              </div>
              <div class="text-end">
                <label class="switch" for="merits_widgets_winners">
                  <input type="checkbox" name="merits_widgets_winners" id="merits_widgets_winners" <?php if ($_smarty_tpl->getValue('system')['merits_widgets_winners']) {?>checked<?php }?>>
                  <span class="slider round"></span>
                </label>
              </div>
            </div>

            <div class="form-table-row">
              <div>
                <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Badge Statistics Widget");?>
</div>
                <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Post annual badge statistics under each user profile picture, the total number of earned badges, badges that have been sent by the user, and the amount of left badges to give in current cycle");?>
</div>
              </div>
              <div class="text-end">
                <label class="switch" for="merits_widgets_statistics">
                  <input type="checkbox" name="merits_widgets_statistics" id="merits_widgets_statistics" <?php if ($_smarty_tpl->getValue('system')['merits_widgets_statistics']) {?>checked<?php }?>>
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
      <!-- Widgets -->
    </div>

  <?php } elseif ($_smarty_tpl->getValue('sub_view') == "categories") {?>

    <div class="card-header with-icon">
      <div class="float-end">
        <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('control_panel')['url'];?>
/merits/add_category" class="btn btn-md btn-primary">
          <i class="fa fa-plus"></i><span class="ml5 d-none d-lg-inline-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Add New Category");?>
</span>
        </a>
      </div>
      <i class="fa fa-star mr5"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Merits System");?>
 &rsaquo; <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Categories");?>

    </div>

    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-striped table-bordered table-hover js_treegrid">
          <thead>
            <tr>
              <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Title");?>
</th>
              <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Image");?>
</th>
              <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Description");?>
</th>
              <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Order");?>
</th>
              <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Actions");?>
</th>
            </tr>
          </thead>
          <tbody>
            <?php if ($_smarty_tpl->getValue('rows')) {?>
              <?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('rows'), 'row');
$foreach0DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('row')->value) {
$foreach0DoElse = false;
?>
                <?php $_smarty_tpl->renderSubTemplate('file:__categories.recursive_rows.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_url'=>"merits",'_handle'=>"merit_category",'_has_image'=>true), (int) 0, $_smarty_current_dir);
?>
              <?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
            <?php } else { ?>
              <tr>
                <td colspan="5" class="text-center">
                  <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("No data to show");?>

                </td>
              </tr>
            <?php }?>
          </tbody>
        </table>
      </div>
    </div>

  <?php } elseif ($_smarty_tpl->getValue('sub_view') == "add_category") {?>

    <div class="card-header with-icon">

      <div class="float-end">
        <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('control_panel')['url'];?>
/merits/categories" class="btn btn-md btn-light">
          <i class="fa fa-arrow-circle-left"></i><span class="ml5 d-none d-lg-inline-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Go Back");?>
</span>
        </a>
      </div>
      <i class="fa fa-star mr5"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Merits System");?>
 &rsaquo; <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Categories");?>
 &rsaquo; <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Add New Category");?>

    </div>

    <form class="js_ajax-forms" data-url="admin/merits.php?do=add_category">
      <div class="card-body">
        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Name");?>

          </label>
          <div class="col-md-9">
            <input class="form-control" name="category_name">
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Description");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="category_description" rows="3"></textarea>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Parent Category");?>

          </label>
          <div class="col-md-9">
            <select class="form-select" name="category_parent_id">
              <option value="0"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Set as a Parent Category");?>
</option>
              <?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('categories'), 'category');
$foreach1DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('category')->value) {
$foreach1DoElse = false;
?>
                <?php $_smarty_tpl->renderSubTemplate('file:__categories.recursive_options.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
              <?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
            </select>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Image");?>

          </label>
          <div class="col-md-9">
            <div class="x-image">
              <button type="button" class="btn-close x-hidden js_x-image-remover" title='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Remove");?>
'></button>
              <div class="x-image-loader">
                <div class="progress x-progress">
                  <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>
              <i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
              <input type="hidden" class="js_x-uploader-input" name="category_image" value="">
            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Order");?>

          </label>
          <div class="col-md-9">
            <input class="form-control" name="category_order">
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

  <?php } elseif ($_smarty_tpl->getValue('sub_view') == "edit_category") {?>

    <div class="card-header with-icon">
      <div class="float-end">
        <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('control_panel')['url'];?>
/merits/categories" class="btn btn-md btn-light">
          <i class="fa fa-arrow-circle-left"></i><span class="ml5 d-none d-lg-inline-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Go Back");?>
</span>
        </a>
      </div>
      <i class="fa fa-star mr5"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Merits System");?>
 &rsaquo; <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Categories");?>
 &rsaquo; <?php echo $_smarty_tpl->getValue('data')['category_name'];?>

    </div>

    <form class="js_ajax-forms" data-url="admin/merits.php?do=edit_category&id=<?php echo $_smarty_tpl->getValue('data')['category_id'];?>
">
      <div class="card-body">
        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Name");?>

          </label>
          <div class="col-md-9">
            <input class="form-control" name="category_name" value="<?php echo $_smarty_tpl->getValue('data')['category_name'];?>
">
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Description");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="category_description" rows="3"><?php echo $_smarty_tpl->getValue('data')['category_description'];?>
</textarea>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Parent Category");?>

          </label>
          <div class="col-md-9">
            <select class="form-select" name="category_parent_id">
              <option value="0"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Set as a Parent Category");?>
</option>
              <?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('data')["categories"], 'category');
$foreach2DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('category')->value) {
$foreach2DoElse = false;
?>
                <?php $_smarty_tpl->renderSubTemplate('file:__categories.recursive_options.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('data_category'=>$_smarty_tpl->getValue('data')['category_parent_id']), (int) 0, $_smarty_current_dir);
?>
              <?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
            </select>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Image");?>

          </label>
          <div class="col-md-9">
            <?php if ($_smarty_tpl->getValue('data')['category_image'] == '') {?>
              <div class="x-image">
                <button type="button" class="btn-close x-hidden js_x-image-remover" title='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Remove");?>
'></button>
                <div class="x-image-loader">
                  <div class="progress x-progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
                <i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
                <input type="hidden" class="js_x-uploader-input" name="category_image" value="">
              </div>
            <?php } else { ?>
              <div class="x-image" style="background-image: url('<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('data')['category_image'];?>
')">
                <button type="button" class="btn-close js_x-image-remover" title='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Remove");?>
'></button>
                <div class="x-image-loader">
                  <div class="progress x-progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
                <i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
                <input type="hidden" class="js_x-uploader-input" name="category_image" value="<?php echo $_smarty_tpl->getValue('data')['category_image'];?>
">
              </div>
            <?php }?>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Order");?>

          </label>
          <div class="col-md-9">
            <input class="form-control" name="category_order" value="<?php echo $_smarty_tpl->getValue('data')['category_order'];?>
">
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

  <?php }?>
</div><?php }
}
