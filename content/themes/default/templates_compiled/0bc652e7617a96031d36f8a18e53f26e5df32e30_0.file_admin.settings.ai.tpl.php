<?php
/* Smarty version 5.8.0, created on 2026-05-08 09:53:06
  from 'file:admin.settings.ai.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fdb282306056_36699381',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '0bc652e7617a96031d36f8a18e53f26e5df32e30' => 
    array (
      0 => 'admin.settings.ai.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__svg_icons.tpl' => 9,
  ),
))) {
function content_69fdb282306056_36699381 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><!-- card-header -->
<div class="card-header with-icon with-nav">
  <!-- panel title -->
  <div class="mb20">
    <i class="fa fa-cog mr10"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Settings");?>
 &rsaquo; <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("AI");?>

  </div>
  <!-- panel title -->

  <!-- panel nav -->
  <ul class="nav nav-tabs">
    <li class="nav-item">
      <a class="nav-link active" href="#General" data-bs-toggle="tab">
        <i class="fa-solid fa-cog fa-fw mr5"></i><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("General");?>
</strong>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#APIs" data-bs-toggle="tab">
        <i class="fa-solid fa-code fa-fw mr5"></i><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("AI APIs");?>
</strong>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#Credit" data-bs-toggle="tab">
        <i class="fa-solid fa-coins fa-fw mr5"></i><strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("AI Credit");?>
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
    <form class="js_ajax-forms" data-url="admin/settings.php?edit=ai_settings">
      <div class="card-body">
        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("AI Mode");?>

          </label>
          <div class="col-md-9">
            <div class="form-check form-check-inline">
              <input type="radio" name="ai_mode" id="ai_mode_live" value="live" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['ai_mode'] == "live") {?>checked<?php }?>>
              <label class="form-check-label" for="ai_mode_live"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Live");?>
</label>
            </div>
            <div class="form-check form-check-inline">
              <input type="radio" name="ai_mode" id="ai_mode_sandbox" value="sandbox" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['ai_mode'] == "sandbox") {?>checked<?php }?>>
              <label class="form-check-label" for="ai_mode_sandbox"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Sandbox");?>
</label>
            </div>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("AI Sandbox Mode will simulate AI responses without contacting live APIs");?>
<br>
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("This is intended for testing and demonstration purposes only");?>

            </div>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"ai_post",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("AI Posts");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Allow users to generate posts using AI");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="ai_posts_enabled">
              <input type="checkbox" name="ai_posts_enabled" id="ai_posts_enabled" <?php if ($_smarty_tpl->getValue('system')['ai_posts_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("AI Posts Provider");?>

          </label>
          <div class="col-md-9">
            <div>
              <!-- OpenAI -->
              <input class="x-hidden input-label" type="radio" name="ai_posts_provider" value="openai" id="ai_posts_openai" <?php if ($_smarty_tpl->getValue('system')['ai_posts_provider'] == "openai") {?>checked<?php }?> />
              <label class="button-label" for="ai_posts_openai">
                <div class="icon">
                  <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"openai",'width'=>"32px",'height'=>"32px"), (int) 0, $_smarty_current_dir);
?>
                </div>
                <div class="title"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("OpenAI");?>
</div>
              </label>
              <!-- OpenAI -->
            </div>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Select your default AI posts provider");?>
<br />
            </div>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"ai_blog",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("AI Blogs");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Allow users to generate blogs using AI");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="ai_blogs_enabled">
              <input type="checkbox" name="ai_blogs_enabled" id="ai_blogs_enabled" <?php if ($_smarty_tpl->getValue('system')['ai_blogs_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("AI Blogs Provider");?>

          </label>
          <div class="col-md-9">
            <div>
              <!-- OpenAI -->
              <input class="x-hidden input-label" type="radio" name="ai_blogs_provider" value="openai" id="ai_blogs_openai" <?php if ($_smarty_tpl->getValue('system')['ai_blogs_provider'] == "openai") {?>checked<?php }?> />
              <label class="button-label" for="ai_blogs_openai">
                <div class="icon">
                  <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"openai",'width'=>"32px",'height'=>"32px"), (int) 0, $_smarty_current_dir);
?>
                </div>
                <div class="title"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("OpenAI");?>
</div>
              </label>
              <!-- OpenAI -->
            </div>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Select your default AI blogs provider");?>
<br />
            </div>
          </div>
        </div>

        <div class="divider"></div>

        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"ai_image",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("AI Images");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Allow users to generate images using AI");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="ai_images_enabled">
              <input type="checkbox" name="ai_images_enabled" id="ai_images_enabled" <?php if ($_smarty_tpl->getValue('system')['ai_images_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("AI Images Provider");?>

          </label>
          <div class="col-md-9">
            <div>
              <!-- OpenAI -->
              <input class="x-hidden input-label" type="radio" name="ai_images_provider" value="openai" id="ai_images_openai" <?php if ($_smarty_tpl->getValue('system')['ai_images_provider'] == "openai") {?>checked<?php }?> />
              <label class="button-label" for="ai_images_openai">
                <div class="icon">
                  <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"openai",'width'=>"32px",'height'=>"32px"), (int) 0, $_smarty_current_dir);
?>
                </div>
                <div class="title"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("OpenAI");?>
</div>
              </label>
              <!-- OpenAI -->
              <!-- Replicate -->
              <input class="x-hidden input-label" type="radio" name="ai_images_provider" value="replicate" id="ai_images_replicate" <?php if ($_smarty_tpl->getValue('system')['ai_images_provider'] == "replicate") {?>checked<?php }?> />
              <label class="button-label" for="ai_images_replicate">
                <div class="icon">
                  <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"replicate",'width'=>"52px",'height'=>"32px"), (int) 0, $_smarty_current_dir);
?>
                </div>
                <div class="title"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Replicate");?>
</div>
              </label>
              <!-- Replicate -->
            </div>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Select your default AI images provider");?>
<br />
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
  <!-- General -->

  <!-- AI APIs -->
  <div class="tab-pane" id="APIs">
    <form class="js_ajax-forms" data-url="admin/settings.php?edit=ai_apis">
      <div class="card-body">
        <div class="heading-small mb20">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("OpenAI API");?>

        </div>
        <div class="pl-md-4">
          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("OpenAI API Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="openai_api_key" value="<?php echo $_smarty_tpl->getValue('system')['openai_api_key'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("OpenAI Text Model");?>

            </label>
            <div class="col-md-9">
              <select class="form-control" name="openai_text_model">
                <option value="gpt-5.4-pro" <?php if ($_smarty_tpl->getValue('system')['openai_text_model'] == "gpt-5.4-pro") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("gpt-5.4-pro");?>
</option>
                <option value="gpt-5.4" <?php if ($_smarty_tpl->getValue('system')['openai_text_model'] == "gpt-5.4") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("gpt-5.4");?>
</option>
                <option value="gpt-5.4-mini" <?php if ($_smarty_tpl->getValue('system')['openai_text_model'] == "gpt-5.4-mini") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("gpt-5.4-mini");?>
</option>
                <option value="gpt-5.4-nano" <?php if ($_smarty_tpl->getValue('system')['openai_text_model'] == "gpt-5.4-nano") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("gpt-5.4-nano");?>
</option>
                <option value="gpt-5-mini" <?php if ($_smarty_tpl->getValue('system')['openai_text_model'] == "gpt-5-mini") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("gpt-5-mini");?>
</option>
                <option value="gpt-5-nano" <?php if ($_smarty_tpl->getValue('system')['openai_text_model'] == "gpt-5-nano") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("gpt-5-nano");?>
</option>
                <option value="gpt-5" <?php if ($_smarty_tpl->getValue('system')['openai_text_model'] == "gpt-5") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("gpt-5");?>
</option>
                <option value="gpt-4.1" <?php if ($_smarty_tpl->getValue('system')['openai_text_model'] == "gpt-5") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("gpt-gpt-4.1");?>
</option>
              </select>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("OpenAI Image Model");?>

            </label>
            <div class="col-md-9">
              <select class="form-control" name="openai_image_model">
                <option value="gpt-image-1.5" <?php if ($_smarty_tpl->getValue('system')['openai_image_model'] == "gpt-image-1.5") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("gpt-image-1.5");?>
</option>
                <option value="chatgpt-image-latest" <?php if ($_smarty_tpl->getValue('system')['openai_image_model'] == "chatgpt-image-latest") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("chatgpt-image-latest");?>
</option>
                <option value="gpt-image-1" <?php if ($_smarty_tpl->getValue('system')['openai_image_model'] == "gpt-image-1") {?>selected<?php }?>><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("gpt-image-1");?>
</option>
              </select>
            </div>
          </div>
        </div>

        <div class="divider"></div>

        <div class="heading-small mb20">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Replicate API");?>

        </div>
        <div class="pl-md-4">

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Replicate API Token");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="replicate_api_token" value="<?php echo $_smarty_tpl->getValue('system')['replicate_api_token'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Replicate Model");?>

            </label>
            <div class="col-md-9">
              <select class="form-control" name="replicate_model">
                <option value="black-forest-labs/flux-2-max" <?php if ($_smarty_tpl->getValue('system')['replicate_model'] == "black-forest-labs/flux-2-max") {?>selected<?php }?>>black-forest-labs/flux-2-max</option>
                <option value="black-forest-labs/flux-2-pro" <?php if ($_smarty_tpl->getValue('system')['replicate_model'] == "black-forest-labs/flux-2-pro") {?>selected<?php }?>>black-forest-labs/flux-2-pro</option>
                <option value="black-forest-labs/flux-2-flex" <?php if ($_smarty_tpl->getValue('system')['replicate_model'] == "black-forest-labs/flux-2-flex") {?>selected<?php }?>>black-forest-labs/flux-2-flex</option>
                <option value="bytedance/seedream-4" <?php if ($_smarty_tpl->getValue('system')['replicate_model'] == "bytedance/seedream-4") {?>selected<?php }?>>bytedance/seedream-4</option>
                <option value="prunaai/hidream-l1-fast" <?php if ($_smarty_tpl->getValue('system')['replicate_model'] == "prunaai/hidream-l1-fast") {?>selected<?php }?>>prunaai/hidream-l1-fast</option>
                <option value="xai/grok-imagine-image" <?php if ($_smarty_tpl->getValue('system')['replicate_model'] == "xai/grok-imagine-image") {?>selected<?php }?>>xai/grok-imagine-image</option>
                <option value="qwen/qwen-image" <?php if ($_smarty_tpl->getValue('system')['replicate_model'] == "qwen/qwen-image") {?>selected<?php }?>>qwen/qwen-image</option>
              </select>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Denoising Steps");?>

            </label>
            <div class="col-md-9">
              <input type="text" class="form-control" name="replicate_denoising_steps" value="<?php echo $_smarty_tpl->getValue('system')['replicate_denoising_steps'];?>
">
              <div class="form-text">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Number of denoising steps (Minimum: 1; Maximum: 500)");?>

              </div>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Guidance Scale");?>

            </label>
            <div class="col-md-9">
              <input type="text" class="form-control" name="replicate_guidance_scale" value="<?php echo $_smarty_tpl->getValue('system')['replicate_guidance_scale'];?>
">
              <div class="form-text">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Guidance scale (Minimum: 1; Maximum: 20)");?>

              </div>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Seed");?>

            </label>
            <div class="col-md-9">
              <input type="text" class="form-control" name="replicate_seed" value="<?php echo $_smarty_tpl->getValue('system')['replicate_seed'];?>
">
              <div class="form-text">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Seed (Minimum: 0; Maximum: 4294967295), Leave blank to randomize the seed");?>

              </div>
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
  <!-- AI APIs -->

  <!-- AI Credit -->
  <div class="tab-pane" id="Credit">
    <form class="js_ajax-forms" data-url="admin/settings.php?edit=ai_credit">
      <div class="card-body">
        <div class="heading-small mb20">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("AI Credit System");?>

        </div>
        <div class="pl-md-4">
          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("AI Credit");?>
/<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('print_money')("1.00");?>

            </label>
            <div class="col-md-9">
              <input type="text" class="form-control" name="ai_credit_cost" value="<?php echo $_smarty_tpl->getValue('system')['ai_credit_cost'];?>
">
              <div class="form-text">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("How much AI credits eqaul to");?>
 <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('print_money')("1");?>
<br>
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Make sure you have configured");?>
 <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('control_panel')['url'];?>
/wallet"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Wallet System");?>
</a>
              </div>
            </div>
          </div>
        </div>

        <div class="divider"></div>

        <div class="heading-small mb20">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("AI Text Credit");?>

        </div>
        <div class="pl-md-4">
          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"points",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("AI Text Credit");?>
</div>
              <div class="form-text d-none d-sm-block">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the AI text credit system On and Off");?>

              </div>
            </div>
            <div class="text-end">
              <label class="switch" for="ai_text_credit_enabled">
                <input type="checkbox" name="ai_text_credit_enabled" id="ai_text_credit_enabled" <?php if ($_smarty_tpl->getValue('system')['ai_text_credit_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Generated Word Cost");?>

            </label>
            <div class="col-md-9">
              <input type="text" class="form-control" name="ai_generated_word_cost" value="<?php echo $_smarty_tpl->getValue('system')['ai_generated_word_cost'];?>
">
              <div class="form-text">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The cost of a generated word (in credits)");?>

              </div>
            </div>
          </div>
        </div>

        <div class="divider"></div>

        <div class="heading-small mb20">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("AI Image Credit");?>

        </div>
        <div class="pl-md-4">
          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"points",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("AI Image Credit");?>
</div>
              <div class="form-text d-none d-sm-block">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Turn the AI images credit system On and Off");?>

              </div>
            </div>
            <div class="text-end">
              <label class="switch" for="ai_image_credit_enabled">
                <input type="checkbox" name="ai_image_credit_enabled" id="ai_image_credit_enabled" <?php if ($_smarty_tpl->getValue('system')['ai_image_credit_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Generated Image Cost");?>

            </label>
            <div class="col-md-9">
              <input type="text" class="form-control" name="ai_generated_image_cost" value="<?php echo $_smarty_tpl->getValue('system')['ai_generated_image_cost'];?>
">
              <div class="form-text">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The cost of a generated image (in credits)");?>

              </div>
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
  <!-- AI Credit -->
</div><?php }
}
