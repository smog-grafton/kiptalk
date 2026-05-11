<?php
/* Smarty version 5.8.0, created on 2026-05-09 05:25:32
  from 'file:__feeds_conversation.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fec54ce7ee61_54833015',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '5ecc57e1105cf43de98ce9f0bca4c02ebe351760' => 
    array (
      0 => '__feeds_conversation.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_69fec54ce7ee61_54833015 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><li class="feeds-item <?php if (!$_smarty_tpl->getValue('conversation')['seen']) {?>unread<?php }?>" data-last-message="<?php echo $_smarty_tpl->getValue('conversation')['last_message_id'];?>
">
  <a class="data-container js_chat-start" <?php if ($_smarty_tpl->getValue('conversation')['user_id']) {?>data-uid="<?php echo $_smarty_tpl->getValue('conversation')['user_id'];?>
" <?php }?> data-cid="<?php echo $_smarty_tpl->getValue('conversation')['conversation_id'];?>
" data-name="<?php echo $_smarty_tpl->getValue('conversation')['name'];?>
" data-name-list="<?php echo $_smarty_tpl->getValue('conversation')['name_list'];?>
" data-link="<?php echo $_smarty_tpl->getValue('conversation')['link'];?>
" href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/messages/<?php echo $_smarty_tpl->getValue('conversation')['conversation_id'];?>
" <?php if ($_smarty_tpl->getValue('conversation')['picture']) {?>data-picture="<?php echo $_smarty_tpl->getValue('conversation')['picture'];?>
" <?php }?> <?php if ($_smarty_tpl->getValue('conversation')['node_id']) {?>data-chat-box="true" <?php }?> <?php if ($_smarty_tpl->getValue('conversation')['multiple_recipients']) {?> data-multiple="true" <?php }?>>
    <div class="data-avatar">
      <?php if ($_smarty_tpl->getValue('conversation')['picture']) {?>
        <img src="<?php echo $_smarty_tpl->getValue('conversation')['picture'];?>
" alt="<?php echo $_smarty_tpl->getValue('conversation')['name'];?>
">
      <?php } else { ?>
        <div class="left-avatar" style="background-image: url('<?php echo $_smarty_tpl->getValue('conversation')['picture_left'];?>
')"></div>
        <div class="right-avatar" style="background-image: url('<?php echo $_smarty_tpl->getValue('conversation')['picture_right'];?>
')"></div>
      <?php }?>
    </div>
    <div class="data-content">
      <?php if ($_smarty_tpl->getValue('conversation')['last_message']['image'] != '') {?>
        <div class="float-end">
          <img class="data-img" src="<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('conversation')['last_message']['image'];?>
" alt="">
        </div>
      <?php }?>
      <div><span class="name"><?php echo $_smarty_tpl->getValue('conversation')['name'];?>
</span></div>
      <div class="text">
        <?php if ($_smarty_tpl->getValue('conversation')['last_message']['image'] != '') {?>
          <i class="fa fa-file-image"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Photo");?>

        <?php } elseif ($_smarty_tpl->getValue('conversation')['last_message']['video'] != '') {?>
          <i class="fa fa-file-video"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Video");?>

        <?php } elseif ($_smarty_tpl->getValue('conversation')['last_message']['voice_note'] != '') {?>
          <i class="fas fa-microphone"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Voice Message");?>

        <?php } elseif ($_smarty_tpl->getValue('conversation')['last_message']['post']) {?>
          <i class="fas fa-shopping-cart"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Product");?>

        <?php } elseif ($_smarty_tpl->getValue('conversation')['last_message']['message'] != '') {?>
          <?php echo $_smarty_tpl->getValue('conversation')['last_message']['message_orginal'];?>

        <?php }?>
      </div>
      <div class="time js_moment" data-time="<?php echo $_smarty_tpl->getValue('conversation')['last_message']['time'];?>
"><?php echo $_smarty_tpl->getValue('conversation')['last_message']['time'];?>
</div>
    </div>
  </a>
</li><?php }
}
