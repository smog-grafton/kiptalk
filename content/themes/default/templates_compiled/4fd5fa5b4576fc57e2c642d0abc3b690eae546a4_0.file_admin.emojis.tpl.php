<?php
/* Smarty version 5.8.0, created on 2026-05-08 23:56:09
  from 'file:admin.emojis.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fe78199ddf07_45165476',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4fd5fa5b4576fc57e2c642d0abc3b690eae546a4' => 
    array (
      0 => 'admin.emojis.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_69fe78199ddf07_45165476 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><div class="card">
  <div class="card-header with-icon">
    <?php if ($_smarty_tpl->getValue('sub_view') == '') {?>
      <div class="float-end">
        <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('control_panel')['url'];?>
/emojis/add" class="btn btn-md btn-primary">
          <i class="fa fa-plus mr5"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Add New Emoji");?>

        </a>
      </div>
    <?php } else { ?>
      <div class="float-end">
        <a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('control_panel')['url'];?>
/emojis" class="btn btn-md btn-light">
          <i class="fa fa-arrow-circle-left mr5"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Go Back");?>

        </a>
      </div>
    <?php }?>
    <i class="fa fa-grin-tears mr10"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Emojis");?>

    <?php if ($_smarty_tpl->getValue('sub_view') == "add") {?> &rsaquo; <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Add New Emoji");
}?>
    <?php if ($_smarty_tpl->getValue('sub_view') == "edit") {?> &rsaquo; <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Edit Emoji");
}?>
  </div>

  <?php if ($_smarty_tpl->getValue('sub_view') == '') {?>

    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-striped table-bordered table-hover js_dataTable">
          <thead>
            <tr>
              <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("ID");?>
</th>
              <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Preview");?>
</th>
              <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Native");?>
</th>
              <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Twemoji Class");?>
</th>
              <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Actions");?>
</th>
            </tr>
          </thead>
          <tbody>
            <?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('rows'), 'row');
$foreach0DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('row')->value) {
$foreach0DoElse = false;
?>
              <tr>
                <td><?php echo $_smarty_tpl->getValue('row')['emoji_id'];?>
</td>
                <td><i class="twa twa-2x twa-<?php echo $_smarty_tpl->getValue('row')['class'];?>
"></i></td>
                <td><span class="text-xxlg"><?php echo $_smarty_tpl->getValue('row')['unicode_char'];?>
</span></td>
                <td><?php echo $_smarty_tpl->getValue('row')['class'];?>
</td>
                <td>
                  <a data-bs-toggle="tooltip" title='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Edit");?>
' href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('control_panel')['url'];?>
/emojis/edit/<?php echo $_smarty_tpl->getValue('row')['emoji_id'];?>
" class="btn btn-sm btn-icon btn-rounded btn-primary">
                    <i class="fa fa-pencil-alt"></i>
                  </a>
                  <button data-bs-toggle="tooltip" title='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Delete");?>
' class="btn btn-sm btn-icon btn-rounded btn-danger js_admin-deleter" data-handle="emoji" data-id="<?php echo $_smarty_tpl->getValue('row')['emoji_id'];?>
">
                    <i class="fa fa-trash-alt"></i>
                  </button>
                </td>
              </tr>
            <?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
          </tbody>
        </table>
      </div>
    </div>

  <?php } elseif ($_smarty_tpl->getValue('sub_view') == "add") {?>

    <form class="js_ajax-forms" data-url="admin/emojis.php?do=add">
      <div class="card-body">
        <div class="alert alert-info">
          <div class="icon">
            <i class="fa fa-info-circle fa-2x"></i>
          </div>
          <div class="text pt5">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("System uses");?>
 <a class="alert-link" target="_blank" href="https://github.com/SebastianAigner/twemoji-amazing">Twemoji Amazing</a> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("and you can check");?>
 <a class="alert-link" target="_blank" href="https://unicode.org/emoji/charts/emoji-list.html"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Emoji Cheat Sheet");?>
</a> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("for the Emojis");?>
.<br>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Native Emoji");?>

          </label>
          <div class="col-md-9">
            <input class="form-control" name="unicode_char">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("You can get it from here");?>
 <a target="_blank" href="https://getemoji.com/">https://getemoji.com/</a>
            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Twemoji Class");?>

          </label>
          <div class="col-md-9">
            <input class="form-control" name="class">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("You must replace spaces with hyphens, For example: 'grinning face' become 'grinning-face'");?>

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

  <?php } elseif ($_smarty_tpl->getValue('sub_view') == "edit") {?>

    <form class="js_ajax-forms" data-url="admin/emojis.php?do=edit&id=<?php echo $_smarty_tpl->getValue('data')['emoji_id'];?>
">
      <div class="card-body">
        <div class="alert alert-info">
          <div class="icon">
            <i class="fa fa-info-circle fa-2x"></i>
          </div>
          <div class="text pt5">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("System uses");?>
 <a class="alert-link" target="_blank" href="https://github.com/SebastianAigner/twemoji-amazing">Twemoji Amazing</a> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("and you can check");?>
 <a class="alert-link" target="_blank" href="https://unicode.org/emoji/charts/emoji-list.html"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Emoji Cheat Sheet");?>
</a> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("for the Emojis");?>
.<br>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Native Emoji");?>

          </label>
          <div class="col-md-9">
            <input class="form-control" name="unicode_char" value="<?php echo $_smarty_tpl->getValue('data')['unicode_char'];?>
">
            <div class="form-text"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("You can get it from here");?>
 <a target="_blank" href="https://getemoji.com/">https://getemoji.com/</a></div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Twemoji Class");?>

          </label>
          <div class="col-md-9">
            <input class="form-control" name="class" value="<?php echo $_smarty_tpl->getValue('data')['class'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("You must replace spaces with hyphens, For example: 'grinning face' become 'grinning-face'");?>

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

  <?php }?>
</div><?php }
}
