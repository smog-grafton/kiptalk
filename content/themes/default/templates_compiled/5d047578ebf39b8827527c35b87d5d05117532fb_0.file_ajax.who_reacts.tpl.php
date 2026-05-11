<?php
/* Smarty version 5.8.0, created on 2026-05-09 06:08:57
  from 'file:ajax.who_reacts.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fecf795b5b95_64479707',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '5d047578ebf39b8827527c35b87d5d05117532fb' => 
    array (
      0 => 'ajax.who_reacts.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__reaction_emojis.tpl' => 1,
    'file:__feeds_user.tpl' => 1,
  ),
))) {
function content_69fecf795b5b95_64479707 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><div class="modal-header with-nav">
  <div class="modal-title">
    <!-- panel nav -->
    <ul class="nav nav-tabs">
      <li class="nav-item">
        <a class="nav-link <?php if ($_smarty_tpl->getValue('reaction_type') == "all") {?>active<?php }?>" href="#" data-toggle="modal" data-url="posts/who_reacts.php?<?php echo $_smarty_tpl->getValue('get');?>
=<?php echo $_smarty_tpl->getValue('id');?>
&reaction_type=all">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("All");?>

        </a>
      </li>
      <?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('system')['reactions_enabled'], 'reaction');
$foreach0DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('reaction')->value) {
$foreach0DoElse = false;
?>
        <li class="nav-item">
          <a class="nav-link <?php if ($_smarty_tpl->getValue('reaction_type') == $_smarty_tpl->getValue('reaction')['reaction']) {?>active<?php }?>" href="#" data-toggle="modal" data-url="posts/who_reacts.php?<?php echo $_smarty_tpl->getValue('get');?>
=<?php echo $_smarty_tpl->getValue('id');?>
&reaction_type=<?php echo $_smarty_tpl->getValue('reaction')['reaction'];?>
">
            <div style="height: 19px;">
              <div class="inline-emoji no_animation">
                <?php $_smarty_tpl->renderSubTemplate('file:__reaction_emojis.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_reaction'=>$_smarty_tpl->getValue('reaction')['reaction']), (int) 0, $_smarty_current_dir);
?>
              </div>
            </div>
          </a>
        </li>
      <?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
    </ul>
    <!-- panel nav -->
  </div>
  <!-- close -->
  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
  <!-- close -->
</div>
<div class="modal-body">
  <?php if ($_smarty_tpl->getValue('users')) {?>
    <ul>
      <?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('users'), '_user');
$foreach1DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('_user')->value) {
$foreach1DoElse = false;
?>
        <?php $_smarty_tpl->renderSubTemplate('file:__feeds_user.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('_tpl'=>"list",'_connection'=>$_smarty_tpl->getValue('_user')["connection"],'_reaction'=>$_smarty_tpl->getValue('_user')["reaction"]), (int) 0, $_smarty_current_dir);
?>
      <?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
    </ul>

    <?php if ($_smarty_tpl->getSmarty()->getModifierCallback('count')($_smarty_tpl->getValue('users')) >= $_smarty_tpl->getValue('system')['max_results']) {?>
      <!-- see-more -->
      <div class="alert alert-info see-more js_see-more" data-get="<?php echo $_smarty_tpl->getValue('handle');?>
_reactions" data-filter="<?php echo $_smarty_tpl->getValue('reaction_type');?>
" data-id="<?php echo $_smarty_tpl->getValue('id');?>
">
        <span><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("See More");?>
</span>
        <div class="loader loader_small x-hidden"></div>
      </div>
      <!-- see-more -->
    <?php }?>
  <?php } else { ?>
    <p class="text-center text-muted">
      <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("No reactions yet");?>

    </p>
  <?php }?>
</div><?php }
}
