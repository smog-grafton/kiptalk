<?php
/* Smarty version 5.8.0, created on 2026-05-08 13:38:24
  from 'file:__feeds_profile_photo.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fde75039cd85_27035231',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '02bc5f3c59ff14d537c6eb9be0abe185297fb01d' => 
    array (
      0 => '__feeds_profile_photo.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_69fde75039cd85_27035231 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><div class="col-4 mb10">
  <div class="pg_photo pointer <?php if ($_smarty_tpl->getValue('_filter') == "avatar") {?>js_profile-picture-change<?php } else { ?>js_profile-cover-change<?php }?>" data-id=<?php echo $_smarty_tpl->getValue('id');?>
 data-type=<?php echo $_smarty_tpl->getValue('type');?>
 data-image="<?php echo $_smarty_tpl->getValue('photo')['source'];?>
" style="background-image:url(<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('photo')['source'];?>
);">
  </div>
</div><?php }
}
