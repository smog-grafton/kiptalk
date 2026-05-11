<?php
/* Smarty version 5.8.0, created on 2026-05-08 21:07:01
  from 'file:admin.settings.chat.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fe50754a1f38_20885829',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cdd4e00fc3db30294cb45e776158d8264a5001ef' => 
    array (
      0 => 'admin.settings.chat.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__svg_icons.tpl' => 18,
  ),
))) {
function content_69fe50754a1f38_20885829 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><!-- card-header -->
<div class="card-header with-icon with-nav">
  <!-- panel title -->
  <div class="mb20">
    <i class="fa fa-cog mr10"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Settings");?>
 &rsaquo; <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Chat");?>

  </div>
  <!-- panel title -->

  <!-- panel nav -->
  <ul class="nav nav-tabs">
    <li class="nav-item">
      <a class="nav-link active" href="#General" data-bs-toggle="tab">
        <i class="fa-solid fa-comments fa-fw mr5"></i><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("General");?>
</strong>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#AudioVideoCalls" data-bs-toggle="tab">
        <i class="fa fa-phone fa-fw mr5"></i><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Audio/Video Calls");?>
</strong>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#ChatSocket" data-bs-toggle="tab">
        <i class="fa-solid fa-bolt fa-fw mr5"></i><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Socket.io");?>
</strong>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#Apps" data-bs-toggle="tab">
        <i class="fa-solid fa-mobile fa-fw mr5"></i><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Apps");?>
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
    <form class="js_ajax-forms" data-url="admin/settings.php?edit=chat">
      <div class="card-body">
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"chat",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Chat Enabled");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the chat system On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="chat_enabled">
              <input type="checkbox" name="chat_enabled" id="chat_enabled" <?php if ($_smarty_tpl->getValue('system')['chat_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"voice_notes",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Voice Notes");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the voice notes in chat On and Off");?>
<br>
            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="voice_notes_chat_enabled">
              <input type="checkbox" name="voice_notes_chat_enabled" id="voice_notes_chat_enabled" <?php if ($_smarty_tpl->getValue('system')['voice_notes_chat_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"chat_status",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("User Status Enabled");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the Last Seen On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="chat_status_enabled">
              <input type="checkbox" name="chat_status_enabled" id="chat_status_enabled" <?php if ($_smarty_tpl->getValue('system')['chat_status_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"chat_typing",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Typing Status Enabled");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the Typing Status On and Off");?>
 (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Needs a good server to work fine");?>
)</div>
          </div>
          <div class="text-end">
            <label class="switch" for="chat_typing_enabled">
              <input type="checkbox" name="chat_typing_enabled" id="chat_typing_enabled" <?php if ($_smarty_tpl->getValue('system')['chat_typing_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"chat_seen",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Seen Status Enabled");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the Seen Status On and Off");?>
 (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Needs a good server to work fine");?>
)</div>
          </div>
          <div class="text-end">
            <label class="switch" for="chat_seen_enabled">
              <input type="checkbox" name="chat_seen_enabled" id="chat_seen_enabled" <?php if ($_smarty_tpl->getValue('system')['chat_seen_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"delete",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Delete For Everyone");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Permanently remove the conversation for all chat members when user delete it");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="chat_permanently_delete_enabled">
              <input type="checkbox" name="chat_permanently_delete_enabled" id="chat_permanently_delete_enabled" <?php if ($_smarty_tpl->getValue('system')['chat_permanently_delete_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"language",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Chat Translation");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the chat messages translation On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="chat_translation_enabled">
              <input type="checkbox" name="chat_translation_enabled" id="chat_translation_enabled" <?php if ($_smarty_tpl->getValue('system')['chat_translation_enabled']) {?>checked<?php }?>>
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
  <!-- General -->

  <!-- Audio/Video Calls -->
  <div class="tab-pane" id="AudioVideoCalls">
    <form class="js_ajax-forms" data-url="admin/settings.php?edit=audio_video_calls">
      <div class="card-body">
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"call_audio",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Audio Call Enabled");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the audio call system On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="audio_call_enabled">
              <input type="checkbox" name="audio_call_enabled" id="audio_call_enabled" <?php if ($_smarty_tpl->getValue('system')['audio_call_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"call_video",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Video Call Enabled");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the video call system On and Off");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="video_call_enabled">
              <input type="checkbox" name="video_call_enabled" id="video_call_enabled" <?php if ($_smarty_tpl->getValue('system')['video_call_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider"></div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Calls Provider");?>

          </label>
          <div class="col-md-9">
            <div>
              <!-- Twilio -->
              <input class="x-hidden input-label" type="radio" name="audio_video_provider" value="twilio" id="av_twilio" <?php if ($_smarty_tpl->getValue('system')['audio_video_provider'] == "twilio") {?>checked<?php }?> />
              <label class="button-label" for="av_twilio">
                <div class="icon">
                  <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"twilio",'width'=>"32px",'height'=>"32px"), (int) 0, $_smarty_current_dir);
?>
                </div>
                <div class="title"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Twilio");?>
</div>
              </label>
              <!-- Twilio -->
              <!-- LiveKit -->
              <input class="x-hidden input-label" type="radio" name="audio_video_provider" value="livekit" id="av_livekit" <?php if ($_smarty_tpl->getValue('system')['audio_video_provider'] == "livekit") {?>checked<?php }?> />
              <label class="button-label" for="av_livekit">
                <div class="icon">
                  <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"livekit",'width'=>"52px",'height'=>"32px"), (int) 0, $_smarty_current_dir);
?>
                </div>
                <div class="title"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("LiveKit");?>
</div>
              </label>
              <!-- LiveKit -->
              <!-- Agora -->
              <input class="x-hidden input-label" type="radio" name="audio_video_provider" value="agora" id="av_agora" <?php if ($_smarty_tpl->getValue('system')['audio_video_provider'] == "agora") {?>checked<?php }?> />
              <label class="button-label" for="av_agora">
                <div class="icon">
                  <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"agora",'width'=>"32px",'height'=>"32px"), (int) 0, $_smarty_current_dir);
?>
                </div>
                <div class="title"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Agora");?>
</div>
              </label>
              <!-- Agora -->
            </div>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Select your default Audio/Video calls provider");?>
<br />
            </div>
          </div>
        </div>

        <div class="divider dashed"></div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Twilio Account SID");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="twilio_sid" value="<?php echo $_smarty_tpl->getValue('system')['twilio_sid'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Twilio API SID");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="twilio_apisid" value="<?php echo $_smarty_tpl->getValue('system')['twilio_apisid'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Twilio API SECRET");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="twilio_apisecret" value="<?php echo $_smarty_tpl->getValue('system')['twilio_apisecret'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>

        <div class="divider dashed"></div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("LiveKit API Key");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="livekit_api_key" value="<?php echo $_smarty_tpl->getValue('system')['livekit_api_key'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("LiveKit API Secret");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="livekit_api_secret" value="<?php echo $_smarty_tpl->getValue('system')['livekit_api_secret'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("LiveKit WebSocket URL");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="livekit_ws_url" value="<?php echo $_smarty_tpl->getValue('system')['livekit_ws_url'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>

        <div class="divider dashed"></div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Agora App ID");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="agora_call_app_id" value="<?php echo $_smarty_tpl->getValue('system')['agora_call_app_id'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Agora App Certificate");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="agora_call_app_certificate" value="<?php echo $_smarty_tpl->getValue('system')['agora_call_app_certificate'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
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
  <!-- Audio/Video Calls -->

  <!-- Socket.io -->
  <div class="tab-pane" id="ChatSocket">
    <form class="js_ajax-forms" data-url="admin/settings.php?edit=chat_socket">
      <div class="card-body">
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"socketio",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Chat Socket Enabled");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the chat socket system On and Off");?>
<br>
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("If disabled the default ajax system will be enabled");?>

            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="chat_socket_enabled">
              <input type="checkbox" name="chat_socket_enabled" id="chat_socket_enabled" <?php if ($_smarty_tpl->getValue('system')['chat_socket_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider dashed"></div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Socket Server");?>

          </label>
          <div class="col-md-9">
            <div>
              <!-- PHP -->
              <input class="x-hidden input-label" type="radio" name="chat_socket_server" value="php" id="socket_php" <?php if ($_smarty_tpl->getValue('system')['chat_socket_server'] == "php") {?>checked<?php }?> />
              <label class="button-label" for="socket_php">
                <div class="icon">
                  <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"php",'width'=>"32px",'height'=>"32px"), (int) 0, $_smarty_current_dir);
?>
                </div>
                <div class="title"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("PHP");?>
</div>
              </label>
              <!-- PHP -->
              <!-- NodeJS -->
              <input class="x-hidden input-label" type="radio" name="chat_socket_server" value="nodejs" id="socket_nodejs" <?php if ($_smarty_tpl->getValue('system')['chat_socket_server'] == "nodejs") {?>checked<?php }?> disabled />
              <label class="button-label" for="socket_nodejs">
                <div class="icon">
                  <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"nodejs",'width'=>"52px",'height'=>"32px"), (int) 0, $_smarty_current_dir);
?>
                </div>
                <div class="title"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("NodeJS");?>
</div>
              </label>
              <!-- NodeJS -->
            </div>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Select your default Socket.io server");?>
<br />
              <small><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Note: NodeJS support is currently unavailable and will be implemented in upcoming updates");?>
</small>
            </div>
          </div>
        </div>

        <!-- PHP bin path -->
        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("PHP Path");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="php_bin_path" value="<?php echo $_smarty_tpl->getValue('system')['php_bin_path'];?>
" placeholder="php">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The path to the PHP binary");?>

            </div>
          </div>
        </div>
        <!-- PHP bin path -->

        <!-- NodeJS bin path -->
        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("NodeJS Path");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="nodejs_bin_path" value="<?php echo $_smarty_tpl->getValue('system')['nodejs_bin_path'];?>
" placeholder="node" disabled>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The path to the NodeJS binary");?>

            </div>
          </div>
        </div>
        <!-- NodeJS bin path -->

        <div class="divider dashed"></div>

        <div class="form-table-row">
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Chat Socket Proxied");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the chat socket server proxied On and Off");?>

            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="chat_socket_proxied">
              <input type="checkbox" name="chat_socket_proxied" id="chat_socket_proxied" <?php if ($_smarty_tpl->getValue('system')['chat_socket_proxied']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Socket Port");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="chat_socket_port" value="<?php echo $_smarty_tpl->getValue('system')['chat_socket_port'];?>
" placeholder="3000">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The port number for the chat socket server (default: 3000)");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("SSL Certificate Path");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="chat_socket_ssl_crt" value="<?php echo $_smarty_tpl->getValue('system')['chat_socket_ssl_crt'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The path to the SSL certificate (.crt)");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("SSL Certificate Key Path");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="chat_socket_ssl_key" value="<?php echo $_smarty_tpl->getValue('system')['chat_socket_ssl_key'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The path to the SSL certificate key (.key)");?>

            </div>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"verification",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("SSL Verify Peer");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable SSL certificate verification");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="chat_socket_ssl_verify_peer">
              <input type="checkbox" name="chat_socket_ssl_verify_peer" id="chat_socket_ssl_verify_peer" <?php if ($_smarty_tpl->getValue('system')['chat_socket_ssl_verify_peer']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"ssl-sign",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("SSL Allow Self Signed");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Allow self-signed SSL certificates");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="chat_socket_ssl_allow_self_signed">
              <input type="checkbox" name="chat_socket_ssl_allow_self_signed" id="chat_socket_ssl_allow_self_signed" <?php if ($_smarty_tpl->getValue('system')['chat_socket_ssl_allow_self_signed']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <!-- success -->
        <div class="alert alert-success mt15 mb0 x-hidden" style="font-size: 13px; background: #000; border-color: #000;"></div>
        <!-- success -->

        <!-- error -->
        <div class="alert alert-danger mt15 mb0 x-hidden"></div>
        <!-- error -->
      </div>
      <div class="card-footer d-flex justify-content-between align-items-center">
        <div>
          <button type="button" class="btn btn-warning btn-sm rounded-pill js_admin-tester" style="padding: 8px 12px;" data-handle="chat_socket_status" title="<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Check Status");?>
">
            <i class="fa fa-bolt fa-fw"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Status");?>

          </button>
          <button type="button" class="btn btn-success btn-sm rounded-pill js_admin-tester" style="padding: 8px 12px;" data-handle="chat_socket_start" title="<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Start");?>
">
            <i class="fa fa-play fa-fw"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Start");?>

          </button>
          <button type="button" class="btn btn-danger btn-sm rounded-pill js_admin-tester" style="padding: 8px 12px;" data-handle="chat_socket_stop" title="<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Stop");?>
">
            <i class="fa fa-stop fa-fw"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Stop");?>

          </button>
        </div>
        <div>
          <button type="button" class="btn btn-danger js_admin-tester" data-handle="socket_certificate">
            <i class="fa fa-bolt mr10"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Check Certificate");?>

          </button>
          <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Save Changes");?>
</button>
        </div>
      </div>
    </form>
  </div>
  <!-- Socket.io -->

  <!-- Apps -->
  <div class="tab-pane" id="Apps">
    <form class="js_ajax-forms" data-url="admin/settings.php?edit=chat_apps">
      <div class="card-body">
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"mobile",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Redirect to Mobile Apps");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the chat icon off on mobile devices if you have the mobile apps installed");?>

            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="redirect_to_mobile_apps">
              <input type="checkbox" name="redirect_to_mobile_apps" id="redirect_to_mobile_apps" <?php if ($_smarty_tpl->getValue('system')['redirect_to_mobile_apps']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Google Play Store Link");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="messaging_app_android_link" value="<?php echo $_smarty_tpl->getValue('system')['messaging_app_android_link'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The messaging app link on Google Play Store");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Apple App Store Link");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="messaging_app_ios_link" value="<?php echo $_smarty_tpl->getValue('system')['messaging_app_ios_link'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The messaging app link on Apple App Store");?>

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
  <!-- Socket.io -->
</div><?php }
}
