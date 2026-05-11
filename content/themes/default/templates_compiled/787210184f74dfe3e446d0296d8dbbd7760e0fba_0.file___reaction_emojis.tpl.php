<?php
/* Smarty version 5.8.0, created on 2026-05-08 09:59:48
  from 'file:__reaction_emojis.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fdb41478a500_63375279',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '787210184f74dfe3e446d0296d8dbbd7760e0fba' => 
    array (
      0 => '__reaction_emojis.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_69fdb41478a500_63375279 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><!-- reaction -->
<div class="emoji">
  <img src="<?php echo $_smarty_tpl->getValue('system')['reactions'][$_smarty_tpl->getValue('_reaction')]['image_url'];?>
" alt="<?php echo $_smarty_tpl->getValue('system')['reactions'][$_smarty_tpl->getValue('_reaction')]['title'];?>
" />
</div>
<!-- reaction --><?php }
}
