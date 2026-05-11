<?php
/* Smarty version 5.8.0, created on 2026-05-09 07:13:21
  from 'file:manifest.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fede91bd4003_10157074',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c5e052acf67deca99d4c4a02d196afb4ddeca79b' => 
    array (
      0 => 'manifest.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_69fede91bd4003_10157074 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?>{
"name": "<?php echo $_smarty_tpl->getValue('system')['system_title'];?>
",
"start_url": "<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
",
"display": "standalone",
"icons": [
{
"src": <?php if ($_smarty_tpl->getValue('system')['pwa_192_icon']) {?>"<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('system')['pwa_192_icon'];?>
"<?php } else { ?>"/content/uploads/pwa/icon-192x192.png"<?php }?>,
"sizes": "192x192",
"type": "image/png"
},
{
"src": <?php if ($_smarty_tpl->getValue('system')['pwa_512_icon']) {?>"<?php echo $_smarty_tpl->getValue('system')['system_uploads'];?>
/<?php echo $_smarty_tpl->getValue('system')['pwa_512_icon'];?>
"<?php } else { ?>"/content/uploads/pwa/icon-512x512.png"<?php }?>,
"sizes": "512x512",
"type": "image/png"
}
]
}<?php }
}
