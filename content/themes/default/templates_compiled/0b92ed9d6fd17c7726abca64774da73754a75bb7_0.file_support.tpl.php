<?php
/* Smarty version 5.8.0, created on 2026-05-08 14:51:32
  from 'file:support.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fdf874790613_14056471',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '0b92ed9d6fd17c7726abca64774da73754a75bb7' => 
    array (
      0 => 'support.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:_head.tpl' => 1,
    'file:_header.tpl' => 1,
    'file:__svg_icons.tpl' => 1,
    'file:_footer.tpl' => 1,
  ),
))) {
function content_69fdf874790613_14056471 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
$_smarty_tpl->renderSubTemplate('file:_head.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
$_smarty_tpl->renderSubTemplate('file:_header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>

<!-- page header -->
<div class="page-header">
  <img class="floating-img d-none d-md-block" src="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->getValue('system')['theme'];?>
/images/headers/undraw_active-support_v6g0.svg">
  <div class="circle-2"></div>
  <div class="circle-3"></div>
  <div class="inner">
    <h2><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Support Center");?>
</h2>
    <p class="text-xlg"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Fast Track Your Issue to Our Experts");?>
</p>
  </div>
</div>
<!-- page header -->

<!-- page content -->
<div class="<?php if ($_smarty_tpl->getValue('system')['fluid_design']) {?>container-fluid<?php } else { ?>container<?php }?> sg-offcanvas" style="margin-top: -25px;">

  <div class="position-relative">
    <!-- tabs -->
    <div class="content-tabs rounded-sm shadow-sm clearfix">
      <ul>
        <li class="active">
          <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/support/tickets"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Support Tickets");?>
</a>
        </li>
      </ul>
      <?php if (!$_smarty_tpl->getValue('user')->_is_admin && !$_smarty_tpl->getValue('user')->_is_moderator) {?>
        <div class="mt10 float-end">
          <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/support/tickets/new" class="btn btn-md btn-primary d-none d-lg-block">
            <i class="fa fa-plus-circle mr5"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Create Ticket");?>

          </a>
          <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/support/tickets/new" class="btn btn-sm btn-icon btn-primary d-block d-lg-none">
            <i class="fa fa-plus-circle"></i>
          </a>
        </div>
      <?php }?>
    </div>
    <!-- tabs -->
  </div>

  <div class="row">

    <!-- left panel -->
    <div class="col-md-4 col-lg-3 sg-offcanvas-sidebar">
      <?php if ($_smarty_tpl->getValue('view') == "ticket") {?>
        <div class="card">
          <div class="card-header with-icon">
            <i class="fa-solid fa-ticket mr5"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Ticket Details");?>

          </div>
          <div class="card-body plr30">
            <!-- requester -->
            <div>
              <div class="mb5"><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Requester");?>
</strong></div>
              <div>
                <a target="_blank" href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('ticket')['requester_username'];?>
">
                  <img class="tbl-image" src="<?php echo $_smarty_tpl->getValue('ticket')['requester_picture'];?>
">
                  <?php echo $_smarty_tpl->getValue('ticket')['requester_fullname'];?>

                </a>
              </div>
            </div>
            <!-- requester -->
            <div class="divider mtb10"></div>
            <!-- agent -->
            <div>
              <div class="mb5"><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Agent");?>
</strong></div>
              <div>
                <?php if ($_smarty_tpl->getValue('ticket')['agent_id']) {?>
                  <?php if ($_smarty_tpl->getValue('user')->_is_admin || $_smarty_tpl->getValue('user')->_is_moderator) {?>
                    <a target="_blank" href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('ticket')['agent_username'];?>
">
                      <img class="tbl-image" src="<?php echo $_smarty_tpl->getValue('ticket')['agent_picture'];?>
">
                      <?php echo $_smarty_tpl->getValue('ticket')['agent_fullname'];?>

                    </a>
                  <?php } else { ?>
                    <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Support Agent");?>

                  <?php }?>
                <?php } else { ?>
                  <span class="badge bg-light text-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Unassigned");?>
</span>
                <?php }?>
              </div>
            </div>
            <!-- agent -->
            <div class="divider mtb10"></div>
            <!-- status -->
            <div>
              <div class="mb5"><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Status");?>
</strong></div>
              <div>
                <?php if ($_smarty_tpl->getValue('ticket')['status'] == "opened") {?>
                  <span class="badge bg-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Opened");?>
</span>
                <?php } elseif ($_smarty_tpl->getValue('ticket')['status'] == "in_progress") {?>
                  <span class="badge bg-info"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("In Progress");?>
</span>
                <?php } elseif ($_smarty_tpl->getValue('ticket')['status'] == "pending") {?>
                  <span class="badge bg-warning"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Pending");?>
</span>
                <?php } elseif ($_smarty_tpl->getValue('ticket')['status'] == "solved") {?>
                  <span class="badge bg-success"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Solved");?>
</span>
                <?php } elseif ($_smarty_tpl->getValue('ticket')['status'] == "closed") {?>
                  <span class="badge bg-danger"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Closed");?>
</span>
                <?php }?>
              </div>
            </div>
            <!-- status -->
            <div class="divider mtb10"></div>
            <!-- last update -->
            <div>
              <div class="mb5"><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Last Update");?>
</strong></div>
              <div>
                <span class="js_moment" data-time="<?php echo $_smarty_tpl->getValue('ticket')['updated_at'];?>
"><?php echo $_smarty_tpl->getValue('ticket')['updated_at'];?>
</span>
              </div>
            </div>
            <!-- last update -->
            <div class="divider mtb10"></div>
            <!-- created at -->
            <div>
              <div class="mb5"><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Created At");?>
</strong></div>
              <div>
                <span class="js_moment" data-time="<?php echo $_smarty_tpl->getValue('ticket')['created_at'];?>
"><?php echo $_smarty_tpl->getValue('ticket')['created_at'];?>
</span>
              </div>
            </div>
            <!-- created at -->
          </div>
        </div>
      <?php } else { ?>
        <!-- categories -->
        <div class="card">
          <div class="card-body with-nav">
            <ul class="side-nav">
              <li <?php if ($_smarty_tpl->getValue('view') == '' || $_smarty_tpl->getValue('view') == "tickets" && !$_smarty_tpl->getValue('status') && !$_smarty_tpl->getValue('unassigned')) {?>class="active" <?php }?>>
                <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/support/tickets">
                  <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("All");?>
<span class="badge bg-secondary float-end"><?php echo $_smarty_tpl->getValue('tickets_stats')['total'];?>
</span>
                </a>
              </li>
              <?php if ($_smarty_tpl->getValue('user')->_is_admin) {?>
                <li <?php if ($_smarty_tpl->getValue('unassigned')) {?>class="active" <?php }?>>
                  <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/support/tickets?unassigned=true">
                    <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Unassigned");?>
<span class="badge bg-light text-danger float-end"><?php echo $_smarty_tpl->getValue('tickets_stats')['unassigned'];?>
</span>
                  </a>
                </li>
              <?php }?>
              <li <?php if ($_smarty_tpl->getValue('status') == "in_progress") {?>class="active" <?php }?>>
                <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/support/tickets?status=in_progress">
                  <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("In Progress");?>
<span class="badge bg-light text-info float-end"><?php echo $_smarty_tpl->getValue('tickets_stats')['in_progress'];?>
</span>
                </a>
              </li>
              <li>
                <div class="divider"></div>
              </li>
              <li <?php if ($_smarty_tpl->getValue('status') == "opened") {?>class="active" <?php }?>>
                <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/support/tickets?status=opened">
                  <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Open");?>
<span class="badge bg-light text-primary float-end"><?php echo $_smarty_tpl->getValue('tickets_stats')['opened'];?>
</span>
                </a>
              </li>
              <li <?php if ($_smarty_tpl->getValue('status') == "pending") {?>class="active" <?php }?>>
                <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/support/tickets?status=pending">
                  <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Pending");?>
<span class="badge bg-light text-warning float-end"><?php echo $_smarty_tpl->getValue('tickets_stats')['pending'];?>
</span>
                </a>
              </li>
              <li <?php if ($_smarty_tpl->getValue('status') == "solved") {?>class="active" <?php }?>>
                <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/support/tickets?status=solved">
                  <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Solved");?>
<span class="badge bg-light text-success float-end"><?php echo $_smarty_tpl->getValue('tickets_stats')['solved'];?>
</span>
                </a>
              </li>
              <li <?php if ($_smarty_tpl->getValue('status') == "closed") {?>class="active" <?php }?>>
                <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/support/tickets?status=closed">
                  <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Closed");?>
<span class="badge bg-light text-danger float-end"><?php echo $_smarty_tpl->getValue('tickets_stats')['closed'];?>
</span>
                </a>
              </li>
            </ul>
          </div>
        </div>
        <!-- categories -->
      <?php }?>
    </div>
    <!-- left panel -->

    <!-- content panel -->
    <div class="col-md-8 col-lg-9 sg-offcanvas-mainbar">

      <?php if ($_smarty_tpl->getValue('view') == '' || $_smarty_tpl->getValue('view') == "tickets" || $_smarty_tpl->getValue('view') == "find") {?>

        <div class="card">
          <div class="card-header with-icon">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"support",'class'=>"main-icon mr5",'width'=>"24px",'height'=>"24px"), (int) 0, $_smarty_current_dir);
?>
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Tickets");?>
 <?php if ($_smarty_tpl->getValue('view') == "find") {?> &rsaquo; <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Search");
}?>
          </div>
          <div class="card-body">

            <!-- search form -->
            <div class="mb20">
              <form class="d-flex flex-row align-items-center flex-wrap" action="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/support/tickets/find" method="get">
                <div class="form-group mb0">
                  <div class="input-group">
                    <input type="text" class="form-control" name="query" value="<?php echo $_smarty_tpl->getValue('query');?>
">
                    <button type="submit" class="btn btn-sm btn-light"><i class="fas fa-search mr5"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Search");?>
</button>
                  </div>
                </div>
              </form>
              <div class="form-text small">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Search by Subject or TicketID");?>

              </div>
            </div>
            <!-- search form -->

            <div class="table-responsive">
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("ID");?>
</th>
                    <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Requester");?>
</th>
                    <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Subject");?>
</th>
                    <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Agent");?>
</th>
                    <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Status");?>
</th>
                    <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Last Update");?>
</th>
                  </tr>
                </thead>
                <tbody>
                  <?php if ($_smarty_tpl->getValue('tickets')) {?>
                    <?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('tickets'), 'ticket');
$foreach0DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('ticket')->value) {
$foreach0DoElse = false;
?>
                      <tr>
                        <td><?php echo $_smarty_tpl->getValue('ticket')['ticket_id'];?>
</td>
                        <td>
                          <a target="_blank" href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('ticket')['requester_username'];?>
">
                            <img class="tbl-image" src="<?php echo $_smarty_tpl->getValue('ticket')['requester_picture'];?>
">
                            <?php echo $_smarty_tpl->getValue('ticket')['requester_fullname'];?>

                          </a>
                        </td>
                        <td>
                          <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/support/tickets/<?php echo $_smarty_tpl->getValue('ticket')['ticket_id'];?>
" title="<?php echo $_smarty_tpl->getValue('ticket')['subject'];?>
"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('truncate')($_smarty_tpl->getValue('ticket')['subject'],30);?>
</a>
                        </td>
                        <td>
                          <?php if ($_smarty_tpl->getValue('ticket')['agent_id']) {?>
                            <?php if ($_smarty_tpl->getValue('user')->_is_admin || $_smarty_tpl->getValue('user')->_is_moderator) {?>
                              <a target="_blank" href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('ticket')['agent_username'];?>
">
                                <img class="tbl-image" src="<?php echo $_smarty_tpl->getValue('ticket')['agent_picture'];?>
">
                                <?php echo $_smarty_tpl->getValue('ticket')['agent_fullname'];?>

                              </a>
                            <?php } else { ?>
                              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Support Agent");?>

                            <?php }?>
                          <?php } else { ?>
                            <span class="badge bg-light text-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Unassigned");?>
</span>
                          <?php }?>
                        </td>
                        <td>
                          <?php if ($_smarty_tpl->getValue('ticket')['status'] == "opened") {?>
                            <span class="badge bg-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Opened");?>
</span>
                          <?php } elseif ($_smarty_tpl->getValue('ticket')['status'] == "in_progress") {?>
                            <span class="badge bg-info"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("In Progress");?>
</span>
                          <?php } elseif ($_smarty_tpl->getValue('ticket')['status'] == "pending") {?>
                            <span class="badge bg-warning"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Pending");?>
</span>
                          <?php } elseif ($_smarty_tpl->getValue('ticket')['status'] == "solved") {?>
                            <span class="badge bg-success"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Solved");?>
</span>
                          <?php } elseif ($_smarty_tpl->getValue('ticket')['status'] == "closed") {?>
                            <span class="badge bg-danger"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Closed");?>
</span>
                          <?php }?>
                        </td>
                        <td>
                          <span class="js_moment" data-time="<?php echo $_smarty_tpl->getValue('ticket')['updated_at'];?>
"><?php echo $_smarty_tpl->getValue('ticket')['updated_at'];?>
</span>
                        </td>
                      </tr>
                    <?php
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
            <?php echo $_smarty_tpl->getValue('pager');?>

          </div>
        </div>

      <?php } elseif ($_smarty_tpl->getValue('view') == "ticket") {?>

        <div class="posts-filter pb10">
          <span><?php echo $_smarty_tpl->getValue('ticket')['subject'];?>
</span>
          <?php if ($_smarty_tpl->getValue('user')->_is_admin || $_smarty_tpl->getValue('user')->_is_moderator) {?>
            <div class="float-end">
              <button class="btn btn-sm btn-secondary" data-toggle="modal" data-url="support/ticket.php?do=update&ticket_id=<?php echo $_smarty_tpl->getValue('ticket')['ticket_id'];?>
">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Update");?>

              </button>
            </div>
          <?php }?>
        </div>
        <!-- ticket -->
        <div class="forum-thread">
          <div class="row">
            <div class="col-12 col-sm-2 text-center">
              <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('ticket')['requester_username'];?>
"><img class="avatar" src="<?php echo $_smarty_tpl->getValue('ticket')['requester_picture'];?>
"></a>
              <h6 class="mt10">
                <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('ticket')['requester_username'];?>
"><?php echo $_smarty_tpl->getValue('ticket')['requester_fullname'];?>
</a>
              </h6>
              <div class="mb5">
                <i class="fa fa-user"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Member");?>

              </div>
            </div>
            <div class="col-12 col-sm-10">
              <div class="time clearfix">
                <!-- time -->
                <small><i class="far fa-clock"></i> <span class="js_moment" data-time="<?php echo $_smarty_tpl->getValue('ticket')['created_at'];?>
"><?php echo $_smarty_tpl->getValue('ticket')['created_at'];?>
</span></small>
                <!-- time -->
              </div>
              <div class="text">
                <?php echo $_smarty_tpl->getValue('ticket')['parsed_text'];?>

              </div>
            </div>
          </div>
        </div>
        <!-- ticket -->

        <!-- replies -->
        <?php if ($_smarty_tpl->getValue('ticket')['replies']) {?>
          <?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('ticket')['replies'], 'reply');
$foreach1DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('reply')->value) {
$foreach1DoElse = false;
?>
            <div class="forum-thread">
              <div class="row">
                <div class="col-12 col-sm-2 text-center">
                  <?php if ($_smarty_tpl->getValue('user')->_is_admin || $_smarty_tpl->getValue('user')->_is_moderator) {?>
                    <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('reply')['user_name'];?>
"><img class="avatar" src="<?php echo $_smarty_tpl->getValue('reply')['user_picture'];?>
"></a>
                  <?php } else { ?>
                    <img class="avatar" src="<?php echo $_smarty_tpl->getValue('reply')['user_picture'];?>
">
                  <?php }?>
                  <h6 class="mt10">
                    <?php if ($_smarty_tpl->getValue('user')->_is_admin || $_smarty_tpl->getValue('user')->_is_moderator) {?>
                      <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('reply')['user_name'];?>
"><?php echo $_smarty_tpl->getValue('reply')['user_fullname'];?>
</a>
                    <?php } else { ?>
                      <?php echo $_smarty_tpl->getValue('reply')['user_fullname'];?>

                    <?php }?>
                  </h6>
                  <div class="mb5">
                    <?php if ($_smarty_tpl->getValue('user')->_is_admin || $_smarty_tpl->getValue('user')->_is_moderator) {?>
                      <?php if ($_smarty_tpl->getValue('reply')['user_group'] == 1) {?>
                        <i class="fa fa-shield-alt"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Admin");?>

                      <?php } elseif ($_smarty_tpl->getValue('reply')['user_group'] == 2) {?>
                        <i class="fab fa-black-tie"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Moderator");?>

                      <?php } else { ?>
                        <i class="fa fa-user"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Member");?>

                      <?php }?>
                    <?php }?>
                  </div>
                </div>
                <div class="col-12 col-sm-10">
                  <div class="time clearfix">
                    <!-- time -->
                    <small><i class="far fa-clock"></i> <span class="js_moment" data-time="<?php echo $_smarty_tpl->getValue('reply')['created_at'];?>
"><?php echo $_smarty_tpl->getValue('reply')['created_at'];?>
</span></small>
                    <!-- time -->
                  </div>
                  <div class="text">
                    <?php echo $_smarty_tpl->getValue('reply')['parsed_text'];?>

                  </div>
                </div>
              </div>
            </div>
          <?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
        <?php }?>
        <!-- replies -->

        <!-- reply form -->
        <div class="card mt20">
          <div class="card-header with-icon">
            <i class="fa-solid fa-comment-dots mr5"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Post Reply");?>

          </div>
          <div class="js_ajax-forms-html" data-url="support/ticket.php?do=reply&id=<?php echo $_smarty_tpl->getValue('ticket')['ticket_id'];?>
">
            <div class="card-body">
              <textarea name="text" class="form-control js_wysiwyg"></textarea>
              <!-- error -->
              <div class="alert alert-danger mt15 mb0 x-hidden"></div>
              <!-- error -->
            </div>
            <div class="card-footer text-end">
              <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Submit");?>
</button>
            </div>
          </div>
        </div>

      <?php } elseif ($_smarty_tpl->getValue('view') == "new") {?>

        <div class="card">
          <div class="card-header with-icon">
            <i class="fa-solid fa-ticket mr5"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Create New Ticket");?>

          </div>
          <div class="js_ajax-forms-html" data-url="support/ticket.php?do=create">
            <div class="card-body">
              <div class="row form-group">
                <label class="col-md-2 form-label">
                  <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Subject");?>

                </label>
                <div class="col-md-10">
                  <input class="form-control" name="subject">
                </div>
              </div>

              <div class="row form-group">
                <label class="col-md-2 form-label">
                  <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Content");?>

                </label>
                <div class="col-md-10">
                  <textarea name="text" class="form-control js_wysiwyg"></textarea>
                </div>
              </div>

              <!-- error -->
              <div class="alert alert-danger mt15 mb0 x-hidden"></div>
              <!-- error -->
            </div>
            <div class="card-footer text-end">
              <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Submit");?>
</button>
            </div>
          </div>
        </div>

      <?php }?>

    </div>
    <!-- content panel -->

  </div>

</div>
<!-- page content -->

<?php $_smarty_tpl->renderSubTemplate('file:_footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
}
}
