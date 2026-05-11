<?php
/* Smarty version 5.8.0, created on 2026-05-08 10:34:11
  from 'file:__feeds_comment.text.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fdbc233e70e3_81392409',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ecdf2bd779fa85d087697dcf9ced0118ab8f7afd' => 
    array (
      0 => '__feeds_comment.text.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_69fdbc233e70e3_81392409 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><div class="comment-replace">
  <div class="comment-text js_readmore" dir="auto"><?php echo $_smarty_tpl->getValue('_comment')['text'];?>
</div>
  <div class="comment-text-plain x-hidden"><?php echo $_smarty_tpl->getValue('_comment')['text_plain'];?>
</div>
  <?php if ($_smarty_tpl->getValue('_comment')['image'] != '') {?>
    <span class="text-link js_lightbox-nodata" data-image="<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('_comment')['image'];?>
">
      <img alt="" class="img-fluid" src="<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('_comment')['image'];?>
">
    </span>
  <?php }?>
  <?php if ($_smarty_tpl->getValue('_comment')['voice_note'] != '') {?>
    <audio class="js_audio" id="audio-<?php echo $_smarty_tpl->getValue('_comment')['comment_id'];?>
" controls preload="auto" style="width: 100%; min-width: 200px;">
      <source src="<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('_comment')['voice_note'];?>
" type="audio/mpeg">
      <source src="<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('_comment')['voice_note'];?>
" type="audio/mp3">
      <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your browser does not support HTML5 audio");?>

    </audio>
  <?php }?>
</div><?php }
}
