<?php
/* Smarty version 5.8.0, created on 2026-05-08 21:07:51
  from 'file:admin.settings.uploads.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fe50a78ec809_26717661',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '5dce2cfe86d0d9c05eab69f71a26cbcb8a9dd780' => 
    array (
      0 => 'admin.settings.uploads.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__svg_icons.tpl' => 22,
  ),
))) {
function content_69fe50a78ec809_26717661 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><!-- card-header -->
<div class="card-header with-icon with-nav">
  <!-- panel title -->
  <div class="mb20">
    <i class="fa fa-cog mr10"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Settings");?>
 &rsaquo; <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Uploads");?>

  </div>
  <!-- panel title -->

  <!-- panel nav -->
  <ul class="nav nav-tabs">
    <li class="nav-item">
      <a class="nav-link active" href="#General" data-bs-toggle="tab">
        <i class="fa fa-upload fa-fw mr5"></i><strong class="pr5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("General");?>
</strong>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#Cloud" data-bs-toggle="tab">
        <i class="fas fa-cloud-upload-alt fa-fw mr5"></i><strong class="pr5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Cloud Hosting");?>
</strong>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#FTP" data-bs-toggle="tab">
        <i class="fa fa-server fa-fw mr5"></i><strong class="pr5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("FTP");?>
</strong>
      </a>
    </li>
  </ul>
  <!-- panel nav -->
</div>
<!-- card-header -->

<!-- tabs content -->
<div class="tab-content">
  <!-- General -->
  <div class="tab-pane active" id="General">
    <form class="js_ajax-forms" data-url="admin/settings.php?edit=uploads">
      <div class="card-body">
        <div class="alert alert-warning">
          <div class="icon">
            <i class="fa fa-exclamation-triangle fa-2x"></i>
          </div>
          <div class="text">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your server max upload size");?>
 = <?php echo $_smarty_tpl->getValue('max_upload_size');?>
<br>
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("You can't upload files larger than");?>
 <?php echo $_smarty_tpl->getValue('max_upload_size');?>
 - <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("To upload larger files, contact your hosting provider");?>

          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Uploads Directory");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="uploads_directory" value="<?php echo $_smarty_tpl->getValue('system')['uploads_directory'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The path of uploads local directory");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Uploads Prefix");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="uploads_prefix" value="<?php echo $_smarty_tpl->getValue('system')['uploads_prefix'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Add a prefix to the uploaded files (No spaces or special characters only like 'mysite' or 'my_site')");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Uploads CDN Endpoint");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="uploads_cdn_url" value="<?php echo $_smarty_tpl->getValue('system')['uploads_cdn_url'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your CDN URL like AWS CloudFront");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Maximum Total Upload Size");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="max_daily_upload_size" value="<?php echo $_smarty_tpl->getValue('system')['max_daily_upload_size'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The Maximum total size of uploaded files per day per user");?>
 <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("in kilobytes (1M = 1024KB)");?>
 (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("0 = Unlimited");?>
)
            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Chunk Upload Size");?>

          </label>
          <div class="col-md-9">
            <select class="form-control" name="chunk_upload_size">
              <option value="10" <?php if ($_smarty_tpl->getValue('system')['chunk_upload_size'] == 10) {?>selected<?php }?>>10 MB</option>
              <option value="20" <?php if ($_smarty_tpl->getValue('system')['chunk_upload_size'] == 20) {?>selected<?php }?>>20 MB</option>
              <option value="50" <?php if ($_smarty_tpl->getValue('system')['chunk_upload_size'] == 50) {?>selected<?php }?>>50 MB</option>
              <option value="100" <?php if ($_smarty_tpl->getValue('system')['chunk_upload_size'] == 100) {?>selected<?php }?>>100 MB</option>
              <option value="200" <?php if ($_smarty_tpl->getValue('system')['chunk_upload_size'] == 200) {?>selected<?php }?>>200 MB</option>
            </select>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The size of each chunk of the uploaded file in megabytes");?>
<br>
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("This is useful for large files to avoid server timeouts");?>

            </div>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"photos",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Photo Upload");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable photo upload to share & upload photos to the site");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="photos_enabled">
              <input type="checkbox" name="photos_enabled" id="photos_enabled" <?php if ($_smarty_tpl->getValue('system')['photos_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <div style="width: 40px; height: 40px;"></div>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Photo Upload in Comments");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable photo upload in comments");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="comments_photos_enabled">
              <input type="checkbox" name="comments_photos_enabled" id="comments_photos_enabled" <?php if ($_smarty_tpl->getValue('system')['comments_photos_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <div style="width: 40px; height: 40px;"></div>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Photo Upload in Chat");?>
 </div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable photo upload in chat");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="chat_photos_enabled">
              <input type="checkbox" name="chat_photos_enabled" id="chat_photos_enabled" <?php if ($_smarty_tpl->getValue('system')['chat_photos_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <div style="width: 40px; height: 40px;"></div>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Photo Upload in Blogs and Forums");?>
 </div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable photo upload in blogs and forums threads");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="tinymce_photos_enabled">
              <input type="checkbox" name="tinymce_photos_enabled" id="tinymce_photos_enabled" <?php if ($_smarty_tpl->getValue('system')['tinymce_photos_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Max Photo Size");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="max_photo_size" value="<?php echo $_smarty_tpl->getValue('system')['max_photo_size'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The Maximum size of uploaded photo in posts");?>
 <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("in kilobytes (1M = 1024KB)");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Photo Quality");?>

          </label>
          <div class="col-md-9">
            <select class="form-select" name="uploads_quality">
              <option value="high" <?php if ($_smarty_tpl->getValue('system')['uploads_quality'] == "high") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("High quality photos with low compression");?>
</option>
              <option value="medium" <?php if ($_smarty_tpl->getValue('system')['uploads_quality'] == "medium") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Medium quality photos with medium compression");?>
</option>
              <option value="low" <?php if ($_smarty_tpl->getValue('system')['uploads_quality'] == "low") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Low quality photos with high compression");?>
</option>
            </select>
          </div>
        </div>

        <div class="divider dashed"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"heif",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Support HEIF/HEIC Images");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable support for HEIF/HEIC images");?>
<br>
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Note: PHP Imagick extension is required to support HEIF/HEIC images");?>

            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="allow_heif_images">
              <input type="checkbox" name="allow_heif_images" id="allow_heif_images" <?php if ($_smarty_tpl->getValue('system')['allow_heif_images']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="divider dashed"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"gif",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Animated Images for Avatars/Covers");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable user to upload animated images for avarats and covers");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="allow_animated_images">
              <input type="checkbox" name="allow_animated_images" id="allow_animated_images" <?php if ($_smarty_tpl->getValue('system')['allow_animated_images']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"resolution",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Cover Photo Resolution Limit");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable cover photo limit (Minimum width 1296px & Minimum height 360px)");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="limit_cover_photo">
              <input type="checkbox" name="limit_cover_photo" id="limit_cover_photo" <?php if ($_smarty_tpl->getValue('system')['limit_cover_photo']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"crop",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Cover Photo Crop");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable cover photo crop");?>
 (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Note: If disabled, the cover position will used instead");?>
)</div>
          </div>
          <div class="text-end">
            <label class="switch" for="cover_crop_enabled">
              <input type="checkbox" name="cover_crop_enabled" id="cover_crop_enabled" <?php if ($_smarty_tpl->getValue('system')['cover_crop_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Max Cover Photo Size");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="max_cover_size" value="<?php echo $_smarty_tpl->getValue('system')['max_cover_size'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The Maximum size of cover photo");?>
 <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("in kilobytes (1 M = 1024 KB)");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Max Profile Photo Size");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="max_avatar_size" value="<?php echo $_smarty_tpl->getValue('system')['max_avatar_size'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The Maximum size of profile photo");?>
 <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("in kilobytes (1 M = 1024 KB)");?>

            </div>
          </div>
        </div>

        <div class="divider dashed"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"watermark",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Watermark Images");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable it to add watermark icon to all uploaded photos (except: profile pictures and cover images)");?>

            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="watermark_enabled">
              <input type="checkbox" name="watermark_enabled" id="watermark_enabled" <?php if ($_smarty_tpl->getValue('system')['watermark_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Watermark Type");?>

          </label>
          <div class="col-md-9">
            <div class="form-check form-check-inline">
              <input type="radio" name="watermark_type" id="watermark_icon" value="icon" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['watermark_type'] == "icon") {?>checked<?php }?>>
              <label class="form-check-label" for="watermark_icon"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Icon");?>
</label>
            </div>
            <div class="form-check form-check-inline">
              <input type="radio" name="watermark_type" id="watermark_username" value="username" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['watermark_type'] == "username") {?>checked<?php }?>>
              <label class="form-check-label" for="watermark_username"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Username");?>
</label>
            </div>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Note: The username watermark will be repeated diagonally across the image");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Watermark Opacity");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="watermark_opacity" value="<?php echo $_smarty_tpl->getValue('system')['watermark_opacity'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The opacity level of the watermark icon (value between 0 - 1)");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Watermark Icon");?>

          </label>
          <div class="col-md-9">
            <?php if ($_smarty_tpl->getValue('system')['watermark_icon'] == '') {?>
              <div class="x-image">
                <button type="button" class="btn-close x-hidden js_x-image-remover" title='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Remove");?>
'>

                </button>
                <div class="x-image-loader">
                  <div class="progress x-progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
                <i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
                <input type="hidden" class="js_x-uploader-input" name="watermark_icon" value="">
              </div>
            <?php } else { ?>
              <div class="x-image" style="background-image: url('<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('system')['watermark_icon'];?>
')">
                <button type="button" class="btn-close js_x-image-remover" title='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Remove");?>
'>

                </button>
                <div class="x-image-loader">
                  <div class="progress x-progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
                <i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
                <input type="hidden" class="js_x-uploader-input" name="watermark_icon" value="<?php echo $_smarty_tpl->getValue('system')['watermark_icon'];?>
">
              </div>
            <?php }?>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Upload your watermark icon (PNG is recommended)");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Watermark Icon Position");?>

          </label>
          <div class="col-md-9">
            <select class="form-select" name="watermark_position">
              <option <?php if ($_smarty_tpl->getValue('system')['watermark_position'] == "top left") {?>selected<?php }?> value="top left"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Top Left");?>
</option>
              <option <?php if ($_smarty_tpl->getValue('system')['watermark_position'] == "top right") {?>selected<?php }?> value="top right"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Top Right");?>
</option>
              <option <?php if ($_smarty_tpl->getValue('system')['watermark_position'] == "top") {?>selected<?php }?> value="top"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Top");?>
</option>
              <option <?php if ($_smarty_tpl->getValue('system')['watermark_position'] == "bottom left") {?>selected<?php }?> value="bottom left"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bottom Left");?>
</option>
              <option <?php if ($_smarty_tpl->getValue('system')['watermark_position'] == "bottom right") {?>selected<?php }?> value="bottom right"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bottom Right");?>
</option>
              <option <?php if ($_smarty_tpl->getValue('system')['watermark_position'] == "bottom") {?>selected<?php }?> value="bottom"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bottom");?>
</option>
              <option <?php if ($_smarty_tpl->getValue('system')['watermark_position'] == "left") {?>selected<?php }?> value="left"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Left");?>
</option>
              <option <?php if ($_smarty_tpl->getValue('system')['watermark_position'] == "right") {?>selected<?php }?> value="right"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Right");?>
</option>
            </select>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Select the position (the anchor point) of your watermark icon");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Watermark Icon X Offset");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="watermark_xoffset" value="<?php echo $_smarty_tpl->getValue('system')['watermark_xoffset'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Horizontal offset in pixels");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Watermark Icon Y Offset");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="watermark_yoffset" value="<?php echo $_smarty_tpl->getValue('system')['watermark_yoffset'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Vertical offset in pixels");?>

            </div>
          </div>
        </div>

        <div class="divider dashed"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"adult",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Adult Images Detection");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable it to detect the adult images and system will blur or delete them");?>

            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="adult_images_enabled">
              <input type="checkbox" name="adult_images_enabled" id="adult_images_enabled" <?php if ($_smarty_tpl->getValue('system')['adult_images_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Adult Images Action");?>

          </label>
          <div class="col-md-9">
            <div class="form-check form-check-inline">
              <input type="radio" name="adult_images_action" id="action_blue" value="blur" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['adult_images_action'] == "blur") {?>checked<?php }?>>
              <label class="form-check-label" for="action_blue"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Blur");?>
</label>
            </div>
            <div class="form-check form-check-inline">
              <input type="radio" name="adult_images_action" id="action_delete" value="delete" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['adult_images_action'] == "delete") {?>checked<?php }?>>
              <label class="form-check-label" for="action_delete"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Delete");?>
</label>
            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Google Vision API Key");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="adult_images_api_key" value="<?php echo $_smarty_tpl->getValue('system')['adult_images_api_key'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Cloud Vision API Key");?>

            </div>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"videos",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Video Upload");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable video upload to share & upload videos to the site");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="videos_enabled">
              <input type="checkbox" name="videos_enabled" id="videos_enabled" <?php if ($_smarty_tpl->getValue('system')['videos_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <div style="width: 40px; height: 40px;"></div>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Video Upload in Chat");?>
 </div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable video upload in chat");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="chat_videos_enabled">
              <input type="checkbox" name="chat_videos_enabled" id="chat_videos_enabled" <?php if ($_smarty_tpl->getValue('system')['chat_videos_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Max video size");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="max_video_size" value="<?php echo $_smarty_tpl->getValue('system')['max_video_size'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The Maximum size of uploaded video in posts");?>
 <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("in kilobytes (1M = 1024KB)");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Video extensions");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="video_extensions" value="<?php echo $_smarty_tpl->getValue('system')['video_extensions'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Allowed video extensions (separated with comma ',')");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Video Minimum Duration");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="video_minimum_duration" value="<?php echo $_smarty_tpl->getValue('system')['video_minimum_duration'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The Minimum duration of the video in seconds (0 for unlimited)");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Video Maximum Duration");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="video_maximum_duration" value="<?php echo $_smarty_tpl->getValue('system')['video_maximum_duration'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The Maximum duration of the video in seconds (0 for unlimited)");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Reel Minimum Duration");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="reels_minimum_duration" value="<?php echo $_smarty_tpl->getValue('system')['reels_minimum_duration'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The Minimum duration of the reel in seconds (0 for unlimited)");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Reel Maximum Duration");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="reels_maximum_duration" value="<?php echo $_smarty_tpl->getValue('system')['reels_maximum_duration'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The Maximum duration of the reel in seconds (0 for unlimited)");?>

            </div>
          </div>
        </div>

        <div class="divider dashed"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"ffmpeg",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("FFMPEG Enabled");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable FFMPEG to convert and optimize videos to mp4");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="ffmpeg_enabled">
              <input type="checkbox" name="ffmpeg_enabled" id="ffmpeg_enabled" <?php if ($_smarty_tpl->getValue('system')['ffmpeg_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("FFMPEG Binary Path");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="ffmpeg_path" value="<?php echo $_smarty_tpl->getValue('system')['ffmpeg_path'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Example: Linux(/usr/bin/ffmpeg) or Windows(C:\\ffmpeg\bin\ffmpeg.exe)");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("FFMPEG Conversion Speed");?>

          </label>
          <div class="col-md-9">
            <select class="form-select" name="ffmpeg_speed">
              <option value="ultrafast" <?php if ($_smarty_tpl->getValue('system')['ffmpeg_speed'] == "ultrafast") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Ultrafast");?>
</option>
              <option value="superfast" <?php if ($_smarty_tpl->getValue('system')['ffmpeg_speed'] == "superfast") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Superfast");?>
</option>
              <option value="veryfast" <?php if ($_smarty_tpl->getValue('system')['ffmpeg_speed'] == "veryfast") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Veryfast");?>
</option>
              <option value="faster" <?php if ($_smarty_tpl->getValue('system')['ffmpeg_speed'] == "faster") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Faster");?>
</option>
              <option value="fast" <?php if ($_smarty_tpl->getValue('system')['ffmpeg_speed'] == "fast") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Fast");?>
</option>
              <option value="medium" <?php if ($_smarty_tpl->getValue('system')['ffmpeg_speed'] == "medium") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Medium");?>
</option>
              <option value="slow" <?php if ($_smarty_tpl->getValue('system')['ffmpeg_speed'] == "slow") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Slow");?>
</option>
              <option value="slower" <?php if ($_smarty_tpl->getValue('system')['ffmpeg_speed'] == "slower") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Slower");?>
</option>
              <option value="veryslow" <?php if ($_smarty_tpl->getValue('system')['ffmpeg_speed'] == "veryslow") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Veryslow");?>
</option>
            </select>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Slow speed gives you better compression and quality and vice versa");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Video Resolutions");?>

          </label>
          <div class="col-md-9">
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="ffmpeg_240p_enabled" id="ffmpeg_240p_enabled" <?php if ($_smarty_tpl->getValue('system')['ffmpeg_240p_enabled']) {?>checked<?php }?>>
              <label class="form-check-label" for="ffmpeg_240p_enabled"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("240p Resolution");?>
</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="ffmpeg_360p_enabled" id="ffmpeg_360p_enabled" <?php if ($_smarty_tpl->getValue('system')['ffmpeg_360p_enabled']) {?>checked<?php }?>>
              <label class="form-check-label" for="ffmpeg_360p_enabled"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("360p Resolution");?>
</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="ffmpeg_480p_enabled" id="ffmpeg_480p_enabled" <?php if ($_smarty_tpl->getValue('system')['ffmpeg_480p_enabled']) {?>checked<?php }?>>
              <label class="form-check-label" for="ffmpeg_480p_enabled"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("480p Resolution");?>
</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="ffmpeg_720p_enabled" id="ffmpeg_720p_enabled" <?php if ($_smarty_tpl->getValue('system')['ffmpeg_720p_enabled']) {?>checked<?php }?>>
              <label class="form-check-label" for="ffmpeg_720p_enabled"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("720p Resolution");?>
</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="ffmpeg_1080p_enabled" id="ffmpeg_1080p_enabled" <?php if ($_smarty_tpl->getValue('system')['ffmpeg_1080p_enabled']) {?>checked<?php }?>>
              <label class="form-check-label" for="ffmpeg_1080p_enabled"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("1080p Resolution");?>
</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="ffmpeg_1440p_enabled" id="ffmpeg_1440p_enabled" <?php if ($_smarty_tpl->getValue('system')['ffmpeg_1440p_enabled']) {?>checked<?php }?>>
              <label class="form-check-label" for="ffmpeg_1440p_enabled"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("1440p Resolution");?>
</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" name="ffmpeg_2160p_enabled" id="ffmpeg_2160p_enabled" <?php if ($_smarty_tpl->getValue('system')['ffmpeg_2160p_enabled']) {?>checked<?php }?>>
              <label class="form-check-label" for="ffmpeg_2160p_enabled"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("2160p Resolution");?>
</label>
            </div>
            <span class="form-text mt10">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Select the resolutions you want to convert your videos to");?>

            </span>
          </div>
        </div>

        <div class="divider dashed"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"watermark",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Watermark Videos");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable it to add watermark icon to all uploaded videos (Note: FFmpeg must be enabled)");?>

            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="watermark_videos_enabled">
              <input type="checkbox" name="watermark_videos_enabled" id="watermark_videos_enabled" <?php if ($_smarty_tpl->getValue('system')['watermark_videos_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Watermark Icon");?>

          </label>
          <div class="col-md-9">
            <?php if ($_smarty_tpl->getValue('system')['watermark_videos_icon'] == '') {?>
              <div class="x-image">
                <button type="button" class="btn-close x-hidden js_x-image-remover" title='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Remove");?>
'>

                </button>
                <div class="x-image-loader">
                  <div class="progress x-progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
                <i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
                <input type="hidden" class="js_x-uploader-input" name="watermark_videos_icon" value="">
              </div>
            <?php } else { ?>
              <div class="x-image" style="background-image: url('<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('system')['watermark_videos_icon'];?>
')">
                <button type="button" class="btn-close js_x-image-remover" title='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Remove");?>
'>

                </button>
                <div class="x-image-loader">
                  <div class="progress x-progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
                <i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
                <input type="hidden" class="js_x-uploader-input" name="watermark_videos_icon" value="<?php echo $_smarty_tpl->getValue('system')['watermark_videos_icon'];?>
">
              </div>
            <?php }?>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Upload your watermark icon (PNG is recommended)");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Watermark Position");?>

          </label>
          <div class="col-md-9">
            <select class="form-select" name="watermark_videos_position">
              <option <?php if ($_smarty_tpl->getValue('system')['watermark_videos_position'] == "top_left") {?>selected<?php }?> value="top_left"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Top Left");?>
</option>
              <option <?php if ($_smarty_tpl->getValue('system')['watermark_videos_position'] == "top_right") {?>selected<?php }?> value="top_right"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Top Right");?>
</option>
              <option <?php if ($_smarty_tpl->getValue('system')['watermark_videos_position'] == "center") {?>selected<?php }?> value="center"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Center");?>
</option>
              <option <?php if ($_smarty_tpl->getValue('system')['watermark_videos_position'] == "bottom_left") {?>selected<?php }?> value="bottom_left"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bottom Left");?>
</option>
              <option <?php if ($_smarty_tpl->getValue('system')['watermark_videos_position'] == "bottom_right") {?>selected<?php }?> value="bottom_right"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bottom Right");?>
</option>
            </select>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Select the position (the anchor point) of your watermark icon");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Watermark Opacity");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="watermark_videos_opacity" value="<?php echo $_smarty_tpl->getValue('system')['watermark_videos_opacity'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The opacity level of the watermark icon (value between 0 - 1)");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Watermark X Offset");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="watermark_videos_xoffset" value="<?php echo $_smarty_tpl->getValue('system')['watermark_videos_xoffset'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Horizontal offset in pixels");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Watermark Y Offset");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="watermark_videos_yoffset" value="<?php echo $_smarty_tpl->getValue('system')['watermark_videos_yoffset'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Vertical offset in pixels");?>

            </div>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"audios",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Audio Upload");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable audio upload to share & upload sounds to the site");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="audio_enabled">
              <input type="checkbox" name="audio_enabled" id="audio_enabled" <?php if ($_smarty_tpl->getValue('system')['audio_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Max audio size");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="max_audio_size" value="<?php echo $_smarty_tpl->getValue('system')['max_audio_size'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The Maximum size of uploaded audio in posts");?>
 <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("in kilobytes (1M = 1024KB)");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Audio extensions");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="audio_extensions" value="<?php echo $_smarty_tpl->getValue('system')['audio_extensions'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Allowed audio extensions (separated with comma ',')");?>

            </div>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"files",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("File Upload");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable file upload to share & upload files to the site");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="file_enabled">
              <input type="checkbox" name="file_enabled" id="file_enabled" <?php if ($_smarty_tpl->getValue('system')['file_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"security",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6 mb5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Mask Uploaded File Path");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable it to mask the uploaded file path");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="mask_file_path_enabled">
              <input type="checkbox" name="mask_file_path_enabled" id="mask_file_path_enabled" <?php if ($_smarty_tpl->getValue('system')['mask_file_path_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Max file size");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="max_file_size" value="<?php echo $_smarty_tpl->getValue('system')['max_file_size'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The Maximum size of uploaded file in posts");?>
 <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("in kilobytes (1M = 1024KB)");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("File extensions");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="file_extensions" value="<?php echo $_smarty_tpl->getValue('system')['file_extensions'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Allowed file extensions (separated with comma ',')");?>

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
        <button type="button" class="btn btn-danger js_admin-tester" data-handle="ffmpeg">
          <i class="fa fa-bolt mr10"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Test Connection (FFMPEG)");?>

        </button>
        <button type="button" class="btn btn-danger js_admin-tester" data-handle="google_vision">
          <i class="fa fa-bolt mr10"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Test Connection (Vision API)");?>

        </button>
        <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Save Changes");?>
</button>
      </div>
    </form>
  </div>
  <!-- General -->

  <!-- Cloud -->
  <div class="tab-pane" id="Cloud">
    <div class="card-body">

      <div class="alert alert-primary">
        <div class="icon">
          <i class="fas fa-cloud-upload-alt fa-2x"></i>
        </div>
        <div class="text">
          <strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Cloud Hosting");?>
</strong><br>
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Before enabling cloud hosting, make sure you upload the whole 'uploads' folder to your bucket");?>
.<br>
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Before disabling cloud hosting, make sure you download the whole 'uploads' folder to your server");?>
.
        </div>
      </div>

      <!-- S3 -->
      <form class="js_ajax-forms" data-url="admin/settings.php?edit=s3">
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"aws_s3",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Amazon S3 Storage");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable Amazon S3 storage");?>
 (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Note: Enable this will disable all other options");?>
)
            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="s3_enabled">
              <input type="checkbox" name="s3_enabled" id="s3_enabled" <?php if ($_smarty_tpl->getValue('system')['s3_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bucket Name");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="s3_bucket" value="<?php echo $_smarty_tpl->getValue('system')['s3_bucket'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Amazon S3 bucket name");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bucket Region");?>

          </label>
          <div class="col-md-9">
            <select class="form-select" name="s3_region">
              <option value="us-east-2" <?php if ($_smarty_tpl->getValue('system')['s3_region'] == "us-east-2") {?>selected<?php }?>>US East (Ohio) us-east-2</option>
              <option value="us-east-1" <?php if ($_smarty_tpl->getValue('system')['s3_region'] == "us-east-1") {?>selected<?php }?>>US East (N. Virginia) us-east-1</option>
              <option value="us-west-1" <?php if ($_smarty_tpl->getValue('system')['s3_region'] == "us-west-1") {?>selected<?php }?>>US West (N. California) us-west-1</option>
              <option value="us-west-2" <?php if ($_smarty_tpl->getValue('system')['s3_region'] == "us-west-2") {?>selected<?php }?>>US West (Oregon) us-west-2</option>
              <option value="ap-east-1" <?php if ($_smarty_tpl->getValue('system')['s3_region'] == "ap-east-1") {?>selected<?php }?>>Asia Pacific (Hong Kong) ap-east-1</option>
              <option value="ap-south-1" <?php if ($_smarty_tpl->getValue('system')['s3_region'] == "ap-south-1") {?>selected<?php }?>>Asia Pacific (Mumbai) ap-south-1</option>
              <option value="ap-northeast-3" <?php if ($_smarty_tpl->getValue('system')['s3_region'] == "ap-northeast-3") {?>selected<?php }?>>Asia Pacific (Osaka-Local) ap-northeast-3</option>
              <option value="ap-northeast-2" <?php if ($_smarty_tpl->getValue('system')['s3_region'] == "ap-northeast-2") {?>selected<?php }?>>Asia Pacific (Seoul) ap-northeast-2</option>
              <option value="ap-southeast-1" <?php if ($_smarty_tpl->getValue('system')['s3_region'] == "ap-southeast-1") {?>selected<?php }?>>Asia Pacific (Singapore) ap-southeast-1</option>
              <option value="ap-southeast-2" <?php if ($_smarty_tpl->getValue('system')['s3_region'] == "ap-southeast-2") {?>selected<?php }?>>Asia Pacific (Sydney) ap-southeast-2</option>
              <option value="ap-northeast-1" <?php if ($_smarty_tpl->getValue('system')['s3_region'] == "ap-northeast-1") {?>selected<?php }?>>Asia Pacific (Tokyo) ap-northeast-1</option>
              <option value="ca-central-1" <?php if ($_smarty_tpl->getValue('system')['s3_region'] == "ca-central-1") {?>selected<?php }?>>Canada (Central) ca-central-1</option>
              <option value="eu-central-1" <?php if ($_smarty_tpl->getValue('system')['s3_region'] == "eu-central-1") {?>selected<?php }?>>EU (Frankfurt) eu-central-1</option>
              <option value="eu-west-1" <?php if ($_smarty_tpl->getValue('system')['s3_region'] == "eu-west-1") {?>selected<?php }?>>EU (Ireland) eu-west-1</option>
              <option value="eu-west-2" <?php if ($_smarty_tpl->getValue('system')['s3_region'] == "eu-west-2") {?>selected<?php }?>>EU (London) eu-west-2</option>
              <option value="eu-west-3" <?php if ($_smarty_tpl->getValue('system')['s3_region'] == "eu-west-3") {?>selected<?php }?>>EU (Paris) eu-west-3</option>
              <option value="eu-north-1" <?php if ($_smarty_tpl->getValue('system')['s3_region'] == "eu-north-1") {?>selected<?php }?>>Europe (Stockholm) eu-north-1</option>
              <option value="me-south-1" <?php if ($_smarty_tpl->getValue('system')['s3_region'] == "me-south-1") {?>selected<?php }?>>Middle East (Bahrain) me-south-1</option>
              <option value="sa-east-1" <?php if ($_smarty_tpl->getValue('system')['s3_region'] == "sa-east-1") {?>selected<?php }?>>South America (São Paulo) sa-east-1</option>
            </select>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Amazon S3 bucket region");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Access Key ID");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="s3_key" value="<?php echo $_smarty_tpl->getValue('system')['s3_key'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Amazon S3 Access Key ID");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Access Key Secret");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="s3_secret" value="<?php echo $_smarty_tpl->getValue('system')['s3_secret'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Amazon S3 Access Key Secret");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label"></label>
          <div class="col-md-9">
            <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Save Changes");?>
</button>
            <button type="button" class="btn btn-danger js_admin-tester" data-handle="s3">
              <i class="fa fa-bolt mr10"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Test Connection");?>

            </button>
          </div>
        </div>

        <!-- success -->
        <div class="alert alert-success mt15 mb0 x-hidden"></div>
        <!-- success -->

        <!-- error -->
        <div class="alert alert-danger mt15 mb0 x-hidden"></div>
        <!-- error -->
      </form>
      <!-- S3 -->

      <div class="divider"></div>

      <!-- Google -->
      <form class="js_ajax-forms" data-url="admin/settings.php?edit=google_cloud">
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"google_cloud",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Google Cloud");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable Google Cloud storage");?>
 (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Note: Enable this will disable all other options");?>
)
            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="google_cloud_enabled">
              <input type="checkbox" name="google_cloud_enabled" id="google_cloud_enabled" <?php if ($_smarty_tpl->getValue('system')['google_cloud_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bucket Name");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="google_cloud_bucket" value="<?php echo $_smarty_tpl->getValue('system')['google_cloud_bucket'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Google Cloud bucket name");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Google Cloud File");?>

          </label>
          <div class="col-md-9">
            <textarea name="google_cloud_file" id="google_cloud_file"><?php echo $_smarty_tpl->getValue('system')['google_cloud_file'];?>
</textarea>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your service account keys JSON");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label"></label>
          <div class="col-md-9">
            <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Save Changes");?>
</button>
            <button type="button" class="btn btn-danger js_admin-tester" data-handle="google_cloud">
              <i class="fa fa-bolt mr10"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Test Connection");?>

            </button>
          </div>
        </div>

        <!-- success -->
        <div class="alert alert-success mt15 mb0 x-hidden"></div>
        <!-- success -->

        <!-- error -->
        <div class="alert alert-danger mt15 mb0 x-hidden"></div>
        <!-- error -->
      </form>
      <!-- Google -->

      <div class="divider"></div>

      <!-- DigitalOcean -->
      <form class="js_ajax-forms" data-url="admin/settings.php?edit=digitalocean">
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"digitalocean",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("DigitalOcean Space");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable DigitalOcean storage");?>
 (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Note: Enable this will disable all other options");?>
)
            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="digitalocean_enabled">
              <input type="checkbox" name="digitalocean_enabled" id="digitalocean_enabled" <?php if ($_smarty_tpl->getValue('system')['digitalocean_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Space Name");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="digitalocean_space_name" value="<?php echo $_smarty_tpl->getValue('system')['digitalocean_space_name'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your DigitalOcean space name");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Space Region");?>

          </label>
          <div class="col-md-9">
            <select class="form-select" name="digitalocean_space_region">
              <option value="nyc3" <?php if ($_smarty_tpl->getValue('system')['digitalocean_space_region'] == "nyc3") {?>selected<?php }?>>New York City 3, United States</option>
              <option value="ams3" <?php if ($_smarty_tpl->getValue('system')['digitalocean_space_region'] == "ams3") {?>selected<?php }?>>Amsterdam 3, Netherlands</option>
              <option value="sfo2" <?php if ($_smarty_tpl->getValue('system')['digitalocean_space_region'] == "sfo2") {?>selected<?php }?>>San Francisco 2, United States</option>
              <option value="sfo3" <?php if ($_smarty_tpl->getValue('system')['digitalocean_space_region'] == "sfo3") {?>selected<?php }?>>San Francisco 3, United States</option>
              <option value="sgp1" <?php if ($_smarty_tpl->getValue('system')['digitalocean_space_region'] == "sgp1") {?>selected<?php }?>>Singapore, Singapore</option>
              <option value="lon1" <?php if ($_smarty_tpl->getValue('system')['digitalocean_space_region'] == "lon1") {?>selected<?php }?>>London, United Kingdom</option>
              <option value="fra1" <?php if ($_smarty_tpl->getValue('system')['digitalocean_space_region'] == "fra1") {?>selected<?php }?>>Paris, France</option>
              <option value="tor1" <?php if ($_smarty_tpl->getValue('system')['digitalocean_space_region'] == "tor1") {?>selected<?php }?>>Toronto, Canada</option>
              <option value="blr1" <?php if ($_smarty_tpl->getValue('system')['digitalocean_space_region'] == "blr1") {?>selected<?php }?>>Bangalore, India</option>
              <option value="syd1" <?php if ($_smarty_tpl->getValue('system')['digitalocean_space_region'] == "syd1") {?>selected<?php }?>>Sydney, Australia</option>
            </select>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your DigitalOcean space region");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Access Key ID");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="digitalocean_key" value="<?php echo $_smarty_tpl->getValue('system')['digitalocean_key'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your DigitalOcean Access Key ID");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Access Key Secret");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="digitalocean_secret" value="<?php echo $_smarty_tpl->getValue('system')['digitalocean_secret'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your DigitalOcean Access Key Secret");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label"></label>
          <div class="col-md-9">
            <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Save Changes");?>
</button>
            <button type="button" class="btn btn-danger js_admin-tester" data-handle="digitalocean">
              <i class="fa fa-bolt mr10"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Test Connection");?>

            </button>
          </div>
        </div>

        <!-- success -->
        <div class="alert alert-success mb20 x-hidden"></div>
        <!-- success -->

        <!-- error -->
        <div class="alert alert-danger mt15 mb0 x-hidden"></div>
        <!-- error -->
      </form>
      <!-- DigitalOcean -->

      <div class="divider"></div>

      <!-- Wasabi -->
      <form class="js_ajax-forms" data-url="admin/settings.php?edit=wasabi">
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"wasabi",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Wasabi");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable Wasabi storage");?>
 (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Note: Enable this will disable all other options");?>
)
            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="wasabi_enabled">
              <input type="checkbox" name="wasabi_enabled" id="wasabi_enabled" <?php if ($_smarty_tpl->getValue('system')['wasabi_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bucket Name");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="wasabi_bucket" value="<?php echo $_smarty_tpl->getValue('system')['wasabi_bucket'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Wasabi bucket name");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bucket Region");?>

          </label>
          <div class="col-md-9">
            <select class="form-select" name="wasabi_region">
              <option value="us-east-1" <?php if ($_smarty_tpl->getValue('system')['wasabi_region'] == "us-east-1") {?>selected<?php }?>>us-east-1</option>
              <option value="us-east-2" <?php if ($_smarty_tpl->getValue('system')['wasabi_region'] == "us-east-2") {?>selected<?php }?>>us-east-2</option>
              <option value="us-central-1" <?php if ($_smarty_tpl->getValue('system')['wasabi_region'] == "us-central-1") {?>selected<?php }?>>us-central-1</option>
              <option value="us-west-1" <?php if ($_smarty_tpl->getValue('system')['wasabi_region'] == "us-west-1") {?>selected<?php }?>>us-west-1</option>
              <option value="ca-central-1" <?php if ($_smarty_tpl->getValue('system')['wasabi_region'] == "ca-central-1") {?>selected<?php }?>>ca-central-1</option>
              <option value="eu-central-1" <?php if ($_smarty_tpl->getValue('system')['wasabi_region'] == "eu-central-1") {?>selected<?php }?>>eu-central-1</option>
              <option value="eu-central-2" <?php if ($_smarty_tpl->getValue('system')['wasabi_region'] == "eu-central-2") {?>selected<?php }?>>eu-central-2</option>
              <option value="eu-west-1" <?php if ($_smarty_tpl->getValue('system')['wasabi_region'] == "eu-west-1") {?>selected<?php }?>>eu-west-1</option>
              <option value="eu-west-2" <?php if ($_smarty_tpl->getValue('system')['wasabi_region'] == "eu-west-2") {?>selected<?php }?>>eu-west-2</option>
              <option value="ap-northeast-1" <?php if ($_smarty_tpl->getValue('system')['wasabi_region'] == "ap-northeast-1") {?>selected<?php }?>>ap-northeast-1</option>
              <option value="ap-northeast-2" <?php if ($_smarty_tpl->getValue('system')['wasabi_region'] == "ap-northeast-2") {?>selected<?php }?>>ap-northeast-2</option>
              <option value="ap-southeast-1" <?php if ($_smarty_tpl->getValue('system')['wasabi_region'] == "ap-southeast-1") {?>selected<?php }?>>ap-southeast-1</option>
              <option value="ap-southeast-2" <?php if ($_smarty_tpl->getValue('system')['wasabi_region'] == "ap-southeast-2") {?>selected<?php }?>>ap-southeast-2</option>
            </select>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Wasabi bucket region");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Access Key ID");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="wasabi_key" value="<?php echo $_smarty_tpl->getValue('system')['wasabi_key'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Wasabi Access Key ID");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Access Key Secret");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="wasabi_secret" value="<?php echo $_smarty_tpl->getValue('system')['wasabi_secret'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Wasabi Access Key Secret");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label"></label>
          <div class="col-md-9">
            <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Save Changes");?>
</button>
            <button type="button" class="btn btn-danger js_admin-tester" data-handle="wasabi">
              <i class="fa fa-bolt mr10"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Test Connection");?>

            </button>
          </div>
        </div>

        <!-- success -->
        <div class="alert alert-success mt15 mb0 x-hidden"></div>
        <!-- success -->

        <!-- error -->
        <div class="alert alert-danger mt15 mb0 x-hidden"></div>
        <!-- error -->
      </form>
      <!-- Wasabi -->

      <div class="divider"></div>

      <!-- Backblaze -->
      <form class="js_ajax-forms" data-url="admin/settings.php?edit=backblaze">
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"backblaze",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Backblaze");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable Backblaze storage");?>
 (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Note: Enable this will disable all other options");?>
)
            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="backblaze_enabled">
              <input type="checkbox" name="backblaze_enabled" id="backblaze_enabled" <?php if ($_smarty_tpl->getValue('system')['backblaze_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bucket Name");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="backblaze_bucket" value="<?php echo $_smarty_tpl->getValue('system')['backblaze_bucket'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Backblaze bucket name");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bucket Region");?>

          </label>
          <div class="col-md-9">
            <select class="form-select" name="backblaze_region">
              <option value="eu-central-003" <?php if ($_smarty_tpl->getValue('system')['backblaze_region'] == "eu-central-003") {?>selected<?php }?>>eu-central-003</option>
              <option value="us-west-004" <?php if ($_smarty_tpl->getValue('system')['backblaze_region'] == "us-west-004") {?>selected<?php }?>>us-west-004</option>
              <option value="us-east-005" <?php if ($_smarty_tpl->getValue('system')['backblaze_region'] == "us-east-005") {?>selected<?php }?>>us-east-005</option>
            </select>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Backblaze bucket region");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Access Key ID");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="backblaze_key" value="<?php echo $_smarty_tpl->getValue('system')['backblaze_key'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Backblaze Access Key ID");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Access Key Secret");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="backblaze_secret" value="<?php echo $_smarty_tpl->getValue('system')['backblaze_secret'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Backblaze Access Key Secret");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label"></label>
          <div class="col-md-9">
            <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Save Changes");?>
</button>
            <button type="button" class="btn btn-danger js_admin-tester" data-handle="backblaze">
              <i class="fa fa-bolt mr10"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Test Connection");?>

            </button>
          </div>
        </div>

        <!-- success -->
        <div class="alert alert-success mt15 mb0 x-hidden"></div>
        <!-- success -->

        <!-- error -->
        <div class="alert alert-danger mt15 mb0 x-hidden"></div>
        <!-- error -->
      </form>
      <!-- Backblaze -->

      <div class="divider"></div>

      <!-- Yandex Cloud -->
      <form class="js_ajax-forms" data-url="admin/settings.php?edit=yandex_cloud">
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"yandex",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Yandex Cloud");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable Yandex Cloud Storage");?>
 (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Note: Enable this will disable all other options");?>
)
            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="yandex_cloud_enabled">
              <input type="checkbox" name="yandex_cloud_enabled" id="yandex_cloud_enabled" <?php if ($_smarty_tpl->getValue('system')['yandex_cloud_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bucket Name");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="yandex_cloud_bucket" value="<?php echo $_smarty_tpl->getValue('system')['yandex_cloud_bucket'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Yandex Cloud bucket name");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bucket Region");?>

          </label>
          <div class="col-md-9">
            <select class="form-select" name="yandex_cloud_region">
              <option value="ru-central1" <?php if ($_smarty_tpl->getValue('system')['yandex_cloud_region'] == "ru-central1") {?>selected<?php }?>>ru-central1</option>
              <option value="kz1" <?php if ($_smarty_tpl->getValue('system')['yandex_cloud_region'] == "kz1") {?>selected<?php }?>>kz1</option>
            </select>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Yandex Cloud bucket region");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Access Key ID");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="yandex_cloud_key" value="<?php echo $_smarty_tpl->getValue('system')['yandex_cloud_key'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Yandex Cloud Access Key ID");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Access Key Secret");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="yandex_cloud_secret" value="<?php echo $_smarty_tpl->getValue('system')['yandex_cloud_secret'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Yandex Cloud Access Key Secret");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label"></label>
          <div class="col-md-9">
            <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Save Changes");?>
</button>
            <button type="button" class="btn btn-danger js_admin-tester" data-handle="yandex_cloud">
              <i class="fa fa-bolt mr10"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Test Connection");?>

            </button>
          </div>
        </div>

        <!-- success -->
        <div class="alert alert-success mt15 mb0 x-hidden"></div>
        <!-- success -->

        <!-- error -->
        <div class="alert alert-danger mt15 mb0 x-hidden"></div>
        <!-- error -->
      </form>
      <!-- Yandex Cloud -->

      <div class="divider"></div>

      <!-- Cloudflare R2 -->
      <form class="js_ajax-forms" data-url="admin/settings.php?edit=cloudflare_r2">
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"cloudflare",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Cloudflare R2");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable Cloudflare R2 storage");?>
 (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Note: Enable this will disable all other options");?>
)
            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="cloudflare_r2_enabled">
              <input type="checkbox" name="cloudflare_r2_enabled" id="cloudflare_r2_enabled" <?php if ($_smarty_tpl->getValue('system')['cloudflare_r2_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bucket Name");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="cloudflare_r2_bucket" value="<?php echo $_smarty_tpl->getValue('system')['cloudflare_r2_bucket'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Cloudflare R2 bucket name");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Access Key ID");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="cloudflare_r2_key" value="<?php echo $_smarty_tpl->getValue('system')['cloudflare_r2_key'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Cloudflare R2 Access Key ID");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Access Key Secret");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="cloudflare_r2_secret" value="<?php echo $_smarty_tpl->getValue('system')['cloudflare_r2_secret'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Cloudflare R2 Access Key Secret");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Endpoint");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="cloudflare_r2_endpoint" value="<?php echo $_smarty_tpl->getValue('system')['cloudflare_r2_endpoint'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Cloudflare R2 Endpoint");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Custom Domain");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="cloudflare_r2_custom_domain" value="<?php echo $_smarty_tpl->getValue('system')['cloudflare_r2_custom_domain'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Cloudflare R2 Custom Domain (Example: 'https://cloud.sngine.com')");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label"></label>
          <div class="col-md-9">
            <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Save Changes");?>
</button>
            <button type="button" class="btn btn-danger js_admin-tester" data-handle="cloudflare_r2">
              <i class="fa fa-bolt mr10"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Test Connection");?>

            </button>
          </div>
        </div>

        <!-- success -->
        <div class="alert alert-success mt15 mb0 x-hidden"></div>
        <!-- success -->

        <!-- error -->
        <div class="alert alert-danger mt15 mb0 x-hidden"></div>
        <!-- error -->
      </form>
      <!-- Cloudflare R2 -->

      <div class="divider"></div>

      <!-- Pushr -->
      <form class="js_ajax-forms" data-url="admin/settings.php?edit=pushr">
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"pushr",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Pushr");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable Pushr");?>
 (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Note: Enable this will disable all other options");?>
)
            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="pushr_enabled">
              <input type="checkbox" name="pushr_enabled" id="pushr_enabled" <?php if ($_smarty_tpl->getValue('system')['pushr_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bucket Name");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="pushr_bucket" value="<?php echo $_smarty_tpl->getValue('system')['pushr_bucket'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Pushr bucket name");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Access Key");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="pushr_key" value="<?php echo $_smarty_tpl->getValue('system')['pushr_key'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Pushr Access Key");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Secret Key");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="pushr_secret" value="<?php echo $_smarty_tpl->getValue('system')['pushr_secret'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Pushr Secret Key");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Region Endpoint");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="pushr_endpoint" value="<?php echo $_smarty_tpl->getValue('system')['pushr_endpoint'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Pushr Region Endpoint");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("CDN Hostname");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="pushr_hostname" value="<?php echo $_smarty_tpl->getValue('system')['pushr_hostname'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Pushr CDN Hostname (Example: 'https://XXXX.s3.de01.sonic.r-cdn.com')");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label"></label>
          <div class="col-md-9">
            <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Save Changes");?>
</button>
            <button type="button" class="btn btn-danger js_admin-tester" data-handle="pushr">
              <i class="fa fa-bolt mr10"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Test Connection");?>

            </button>
          </div>
        </div>

        <!-- success -->
        <div class="alert alert-success mt15 mb0 x-hidden"></div>
        <!-- success -->

        <!-- error -->
        <div class="alert alert-danger mt15 mb0 x-hidden"></div>
        <!-- error -->
      </form>
      <!-- Pushr -->
    </div>
  </div>
  <!-- Cloud -->

  <!-- FTP -->
  <div class="tab-pane" id="FTP">
    <form class="js_ajax-forms" data-url="admin/settings.php?edit=ftp">
      <div class="card-body">
        <div class="alert alert-primary">
          <div class="icon">
            <i class="fa fa-server fa-2x"></i>
          </div>
          <div class="text">
            <strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("FTP Storage");?>
</strong><br>
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Before enabling FTP Storage, make sure you upload the whole 'uploads' folder to your space");?>
.<br>
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Before disabling FTP Storage, make sure you download the whole 'uploads' folder to your server");?>
.
          </div>
        </div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"server",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("FTP Storage");?>
</div>
            <div class="form-text d-none d-sm-block">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable FTP Storage upload");?>
 (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Note: Enable this will disable all other options");?>
)
            </div>
          </div>
          <div class="text-end">
            <label class="switch" for="ftp_enabled">
              <input type="checkbox" name="ftp_enabled" id="ftp_enabled" <?php if ($_smarty_tpl->getValue('system')['ftp_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Hostname");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="ftp_hostname" value="<?php echo $_smarty_tpl->getValue('system')['ftp_hostname'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Port");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="ftp_port" value="<?php echo $_smarty_tpl->getValue('system')['ftp_port'];?>
" placeholder="21">
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Username");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="ftp_username" value="<?php echo $_smarty_tpl->getValue('system')['ftp_username'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Password");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="ftp_password" value="<?php echo $_smarty_tpl->getValue('system')['ftp_password'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("FTP Path");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="ftp_path" value="<?php echo $_smarty_tpl->getValue('system')['ftp_path'];?>
" placeholder="./">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The path to your uploads folder (Examples: './' or 'public_html/uploads')");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("FTP Endpoint");?>

          </label>
          <div class="col-md-9">
            <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
              <input type="text" class="form-control" name="ftp_endpoint" value="<?php echo $_smarty_tpl->getValue('system')['ftp_endpoint'];?>
">
            <?php } else { ?>
              <input type="password" class="form-control" value="*********">
            <?php }?>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The URL to your uploads folder (Examples: 'https://domain.com/uploads' or 'https://64.233.191.255/uploads')");?>

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
        <button type="button" class="btn btn-danger js_admin-tester" data-handle="ftp">
          <i class="fa fa-bolt mr10"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Test Connection");?>

        </button>
        <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Save Changes");?>
</button>
      </div>
    </form>
  </div>
  <!-- FTP -->
</div>
<!-- tabs content --><?php }
}
