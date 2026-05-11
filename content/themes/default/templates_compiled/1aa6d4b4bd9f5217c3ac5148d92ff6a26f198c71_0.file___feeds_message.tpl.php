<?php
/* Smarty version 5.8.0, created on 2026-05-09 05:25:32
  from 'file:__feeds_message.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fec54ceb2878_58447135',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1aa6d4b4bd9f5217c3ac5148d92ff6a26f198c71' => 
    array (
      0 => '__feeds_message.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_69fec54ceb2878_58447135 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><li>
  <div class="conversation clearfix <?php if (((true && ($_smarty_tpl->hasVariable('is_me') && null !== ($_smarty_tpl->getValue('is_me') ?? null))) && $_smarty_tpl->getValue('is_me')) || $_smarty_tpl->getValue('message')['user_id'] == $_smarty_tpl->getValue('user')->_data['user_id']) {?>right<?php }?>" id="<?php echo $_smarty_tpl->getValue('message')['message_id'];?>
">
    <?php if ((!(true && ($_smarty_tpl->hasVariable('is_me') && null !== ($_smarty_tpl->getValue('is_me') ?? null))) || !$_smarty_tpl->getValue('is_me')) && $_smarty_tpl->getValue('message')['user_id'] != $_smarty_tpl->getValue('user')->_data['user_id']) {?>
      <div class="conversation-user">
        <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('message')['user_name'];?>
">
          <img src="<?php echo $_smarty_tpl->getValue('message')['user_picture'];?>
" alt="">
        </a>
      </div>
    <?php }?>
    <div class="conversation-body <?php if ($_smarty_tpl->getValue('system')['chat_translation_enabled']) {?>js_chat-translator<?php }?>">
      <!-- message -->
      <?php if (!$_smarty_tpl->getSmarty()->getModifierCallback('is_empty')($_smarty_tpl->getValue('message')['message'])) {?>
        <!-- text -->
        <div class="clearfix">
          <span class="text <?php if (((true && ($_smarty_tpl->hasVariable('is_me') && null !== ($_smarty_tpl->getValue('is_me') ?? null))) && $_smarty_tpl->getValue('is_me')) || $_smarty_tpl->getValue('message')['user_id'] == $_smarty_tpl->getValue('user')->_data['user_id']) {?>js_chat-color-me<?php }?>">
            <?php echo $_smarty_tpl->getValue('message')['message'];?>

          </span>
        </div>
        <!-- text -->
      <?php }?>
      <?php if ($_smarty_tpl->getValue('message')['image']) {?>
        <!-- image -->
        <div class="<?php if ($_smarty_tpl->getValue('message')['message'] != '') {?>mt5<?php }?>">
          <span class="text-link js_lightbox-nodata " data-image="<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('message')['image'];?>
">
            <img class="img-fluid img-wrapper" src="<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('message')['image'];?>
">
          </span>
        </div>
        <!-- image -->
      <?php }?>
      <?php if ($_smarty_tpl->getValue('message')['video']) {?>
        <!-- video -->
        <div class="<?php if ($_smarty_tpl->getValue('message')['message'] != '') {?>mt5<?php }?>">
          <video class="video-wrapper" src="<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('message')['video'];?>
" controls></video>
        </div>
        <!-- video -->
      <?php }?>
      <?php if ($_smarty_tpl->getValue('message')['voice_note']) {?>
        <!-- voice note -->
        <div class="<?php if ($_smarty_tpl->getValue('message')['message'] != '') {?>mt5<?php }?>">
          <audio class="js_audio" id="audio-<?php echo $_smarty_tpl->getValue('message')['message_id'];?>
" controls preload="auto" style="width: 100%; min-width: 120px;">
            <source src="<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('message')['voice_note'];?>
" type="audio/mpeg">
            <source src="<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('message')['voice_note'];?>
" type="audio/mp3">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your browser does not support HTML5 audio");?>

          </audio>
        </div>
        <!-- voice note -->
      <?php }?>
      <?php if ($_smarty_tpl->getValue('message')['post']) {?>
        <!-- product -->
        <div>
          <a class="chat-product" href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/posts/<?php echo $_smarty_tpl->getValue('message')['post']['post_id'];?>
">
            <div class="chat-product-image">
              <img src="<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('message')['post']['photos'][0]['source'];?>
">
            </div>
            <div class="chat-product-info">
              <div class="chat-product-title"><?php echo $_smarty_tpl->getValue('message')['post']['product']['name'];?>
</div>
              <div class="chat-product-price"><?php echo $_smarty_tpl->getValue('message')['post']['product']['price_formatted'];?>
</div>
            </div>
          </a>
        </div>
        <!-- product -->
      <?php }?>
      <!-- message -->

      <!-- message time -->
      <div class="time js_moment" data-time="<?php echo $_smarty_tpl->getValue('message')['time'];?>
">
        <?php echo $_smarty_tpl->getValue('message')['time'];?>

      </div>
      <!-- message time -->

      <?php if ($_smarty_tpl->getValue('system')['chat_translation_enabled']) {?>
        <!-- message translation -->
        <div class="translate">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Tap to translate");?>

        </div>
        <!-- message translation -->
      <?php }?>

      <!-- seen status -->
      <?php if ($_smarty_tpl->getValue('conversation')['last_seen_message_id'] == $_smarty_tpl->getValue('message')['message_id']) {?>
        <div class="seen">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Seen by");?>
 <span class="js_seen-name-list"><?php echo $_smarty_tpl->getValue('conversation')['seen_name_list'];?>
</span>
        </div>
      <?php }?>
      <!-- seen status -->
    </div>
  </div>
</li><?php }
}
