<?php
/* Smarty version 5.8.0, created on 2026-05-10 06:17:18
  from 'file:__feeds_video.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_6a0022eeaa5963_67289312',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '73403487248fbb17ba5c8e635d293ecc9c1a5500' => 
    array (
      0 => '__feeds_video.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_6a0022eeaa5963_67289312 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><div class="col-6 col-md-4 col-lg-3">
  <a class="pg_video" href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php if ($_smarty_tpl->getValue('_is_reel')) {?>reels<?php } else { ?>posts<?php }?>/<?php echo $_smarty_tpl->getValue('video')['post_id'];?>
">
    <video>
      <?php if (( !true || empty($_smarty_tpl->getValue('video')['source_240p'])) && ( !true || empty($_smarty_tpl->getValue('video')['source_360p'])) && ( !true || empty($_smarty_tpl->getValue('video')['source_480p'])) && ( !true || empty($_smarty_tpl->getValue('video')['source_720p'])) && ( !true || empty($_smarty_tpl->getValue('video')['source_1080p'])) && ( !true || empty($_smarty_tpl->getValue('video')['source_1440p'])) && ( !true || empty($_smarty_tpl->getValue('video')['source_2160p']))) {?>
        <source src="<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('video')['source'];?>
" type="video/mp4">
      <?php }?>
      <?php if ($_smarty_tpl->getValue('video')['source_240p']) {?>
        <source src="<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('video')['source_240p'];?>
" type="video/mp4" label="240p" res="240">
      <?php }?>
      <?php if ($_smarty_tpl->getValue('video')['source_360p']) {?>
        <source src="<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('video')['source_360p'];?>
" type="video/mp4" label="360p" res="360">
      <?php }?>
      <?php if ($_smarty_tpl->getValue('video')['source_480p']) {?>
        <source src="<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('video')['source_480p'];?>
" type="video/mp4" label="480p" res="480">
      <?php }?>
      <?php if ($_smarty_tpl->getValue('video')['source_720p']) {?>
        <source src="<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('video')['source_720p'];?>
" type="video/mp4" label="720p" res="720">
      <?php }?>
      <?php if ($_smarty_tpl->getValue('video')['source_1080p']) {?>
        <source src="<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('video')['source_1080p'];?>
" type="video/mp4" label="1080p" res="1080">
      <?php }?>
      <?php if ($_smarty_tpl->getValue('video')['source_1440p']) {?>
        <source src="<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('video')['source_1440p'];?>
" type="video/mp4" label="1440p" res="1440">
      <?php }?>
      <?php if ($_smarty_tpl->getValue('video')['source_2160p']) {?>
        <source src="<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('video')['source_2160p'];?>
" type="video/mp4" label="2160p" res="2160">
      <?php }?>
    </video>
    <div class="play-button"><i class="fa fa-play fa-2x"></i></div>
  </a>
</div><?php }
}
