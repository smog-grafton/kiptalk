<?php
/* Smarty version 5.8.0, created on 2026-05-08 21:10:35
  from 'file:admin.settings.payments.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69fe514bedf950_35754907',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '78bbcfce1b47b24570173ade43d5f6d41cec7291' => 
    array (
      0 => 'admin.settings.payments.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__svg_icons.tpl' => 20,
  ),
))) {
function content_69fe514bedf950_35754907 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><!-- card-header -->
<div class="card-header with-icon with-nav">
  <!-- panel title -->
  <div class="mb20">
    <i class="fa fa-cog mr10"></i><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Settings");?>
 &rsaquo; <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Payments");?>

  </div>
  <!-- panel title -->

  <!-- panel nav -->
  <ul class="nav nav-tabs">
    <li class="nav-item">
      <a class="nav-link active" href="#Settings" data-bs-toggle="tab">
        <i class="fa fa-cog fa-fw mr5"></i><strong class="pr5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Settings");?>
</strong>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#Payments" data-bs-toggle="tab">
        <i class="fa fa-credit-card fa-fw mr5"></i><strong class="pr5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Online Payments");?>
</strong>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#Bank" data-bs-toggle="tab">
        <i class="fa fa-university fa-fw mr5"></i><strong class="pr5"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bank Transfers");?>
</strong>
      </a>
    </li>
  </ul>
  <!-- panel nav -->
</div>
<!-- card-header -->

<!-- tabs content -->
<div class="tab-content">
  <!-- Settings -->
  <div class="tab-pane active" id="Settings">
    <form class="js_ajax-forms" data-url="admin/settings.php?edit=payments_settings">
      <div class="card-body">
        <div class="heading-small mb20">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Fees");?>

        </div>
        <div class="pl-md-4">
          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"withdrawal",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Payment Fees");?>
</div>
              <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable/Disable Payment Fees");?>
</div>
            </div>
            <div class="text-end">
              <label class="switch" for="payment_fees_enabled">
                <input type="checkbox" name="payment_fees_enabled" id="payment_fees_enabled" <?php if ($_smarty_tpl->getValue('system')['payment_fees_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Fees Percentage");?>
 (%)
            </label>
            <div class="col-md-9">
              <input type="text" class="form-control" name="payment_fees_percentage" value="<?php echo $_smarty_tpl->getValue('system')['payment_fees_percentage'];?>
">
              <div class="form-text">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Percentage of fees to be added to the payment amount");?>

              </div>
            </div>
          </div>
        </div>

        <div class="divider"></div>

        <div class="heading-small mb20">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("VAT");?>

        </div>
        <div class="pl-md-4">
          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"vat",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("VAT Enabled");?>
</div>
              <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable/Disable VAT");?>
</div>
            </div>
            <div class="text-end">
              <label class="switch" for="payment_vat_enabled">
                <input type="checkbox" name="payment_vat_enabled" id="payment_vat_enabled" <?php if ($_smarty_tpl->getValue('system')['payment_vat_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"map",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("VAT By User Country");?>
</div>
              <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable/Disable VAT by user country");?>
 (<a href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/<?php echo $_smarty_tpl->getValue('control_panel')['url'];?>
/countries"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Manage Countries VAT");?>
</a>)</div>
            </div>
            <div class="text-end">
              <label class="switch" for="payment_country_vat_enabled">
                <input type="checkbox" name="payment_country_vat_enabled" id="payment_country_vat_enabled" <?php if ($_smarty_tpl->getValue('system')['payment_country_vat_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Default VAT Percentage");?>
 (%)
            </label>
            <div class="col-md-9">
              <input type="text" class="form-control" name="payment_vat_percentage" value="<?php echo $_smarty_tpl->getValue('system')['payment_vat_percentage'];?>
">
              <div class="form-text">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Note: If VAT By User Country enabled then VAT will be calculated based on user country VAT");?>
<br>
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Note: If user didn't select his country then VAT will be calculated based on default VAT percentage");?>
<br>
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Note: If country VAT is not set then VAT will be calculated based on default VAT percentage");?>
<br>
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
  <!-- Settings -->

  <!-- Payments -->
  <div class="tab-pane" id="Payments">
    <form class="js_ajax-forms" data-url="admin/settings.php?edit=payments_methods">
      <div class="card-body">

        <!-- PayPal -->
        <div>
          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"paypal",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Paypal Enabled");?>
</div>
              <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable payments via Paypal");?>
</div>
            </div>
            <div class="text-end">
              <label class="switch" for="paypal_enabled">
                <input type="checkbox" name="paypal_enabled" id="paypal_enabled" <?php if ($_smarty_tpl->getValue('system')['paypal_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"withdrawal",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Paypal Payouts");?>
</div>
              <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable automatic payouts for PayPal withdrawal requests");?>
</div>
            </div>
            <div class="text-end">
              <label class="switch" for="paypal_payouts_enabled">
                <input type="checkbox" name="paypal_payouts_enabled" id="paypal_payouts_enabled" <?php if ($_smarty_tpl->getValue('system')['paypal_payouts_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Paypal Mode");?>

            </label>
            <div class="col-md-9">
              <div class="form-check form-check-inline">
                <input type="radio" name="paypal_mode" id="paypal_live" value="live" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['paypal_mode'] == "live") {?>checked<?php }?>>
                <label class="form-check-label" for="paypal_live"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Live");?>
</label>
              </div>
              <div class="form-check form-check-inline">
                <input type="radio" name="paypal_mode" id="paypal_sandbox" value="sandbox" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['paypal_mode'] == "sandbox") {?>checked<?php }?>>
                <label class="form-check-label" for="paypal_sandbox"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Sandbox");?>
</label>
              </div>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("PayPal Client ID");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="paypal_id" value="<?php echo $_smarty_tpl->getValue('system')['paypal_id'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("PayPal Secret Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="paypal_secret" value="<?php echo $_smarty_tpl->getValue('system')['paypal_secret'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("PayPal Webhook Id");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="paypal_webhook" value="<?php echo $_smarty_tpl->getValue('system')['paypal_webhook'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>
        </div>
        <!-- PayPal -->

        <div class="divider"></div>

        <!-- Stripe -->
        <div>
          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"stripe",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Stripe Enabled");?>
</div>
              <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable payments via Credit Card");?>
</div>
            </div>
            <div class="text-end">
              <label class="switch" for="creditcard_enabled">
                <input type="checkbox" name="creditcard_enabled" id="creditcard_enabled" <?php if ($_smarty_tpl->getValue('system')['creditcard_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"alipay",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Alipay Enabled");?>
</div>
              <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable payments via Alipay");?>
</div>
            </div>
            <div class="text-end">
              <label class="switch" for="alipay_enabled">
                <input type="checkbox" name="alipay_enabled" id="alipay_enabled" <?php if ($_smarty_tpl->getValue('system')['alipay_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="form-table-row">
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Stripe Payment Element");?>
</div>
              <div class="form-text d-none d-sm-block">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable Stripe Payment Element");?>
 (<a target="_blank" href="https://docs.stripe.com/payments/payment-element"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Read More");?>
</a>)
              </div>
            </div>
            <div class="text-end">
              <label class="switch" for="stripe_payment_element_enabled">
                <input type="checkbox" name="stripe_payment_element_enabled" id="stripe_payment_element_enabled" <?php if ($_smarty_tpl->getValue('system')['stripe_payment_element_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Stripe Mode");?>

            </label>
            <div class="col-md-9">
              <div class="form-check form-check-inline">
                <input type="radio" name="stripe_mode" id="stripe_live" value="live" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['stripe_mode'] == "live") {?>checked<?php }?>>
                <label class="form-check-label" for="stripe_live"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Live");?>
</label>
              </div>
              <div class="form-check form-check-inline">
                <input type="radio" name="stripe_mode" id="stripe_test" value="test" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['stripe_mode'] == "test") {?>checked<?php }?>>
                <label class="form-check-label" for="stripe_test"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Test");?>
</label>
              </div>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Test Secret Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="stripe_test_secret" value="<?php echo $_smarty_tpl->getValue('system')['stripe_test_secret'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
              <div class="form-text">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Stripe secret key that starts with sk_");?>

              </div>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Test Publishable Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="stripe_test_publishable" value="<?php echo $_smarty_tpl->getValue('system')['stripe_test_publishable'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
              <div class="form-text">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Stripe publishable key that starts with pk_");?>

              </div>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Live Secret Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="stripe_live_secret" value="<?php echo $_smarty_tpl->getValue('system')['stripe_live_secret'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
              <div class="form-text">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Stripe secret key that starts with sk_");?>

              </div>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Live Publishable Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="stripe_live_publishable" value="<?php echo $_smarty_tpl->getValue('system')['stripe_live_publishable'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
              <div class="form-text">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Stripe publishable key that starts with pk_");?>

              </div>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Webhook Signing Secret");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="stripe_webhook" value="<?php echo $_smarty_tpl->getValue('system')['stripe_webhook'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
              <div class="form-text">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Stripe webhook signing secret that starts with whsec_");?>

              </div>
            </div>
          </div>
        </div>
        <!-- Stripe -->

        <div class="divider"></div>

        <!-- Paystack -->
        <div>
          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"paystack",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Paystack Enabled");?>
</div>
              <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable payments via Paystack");?>
</div>
            </div>
            <div class="text-end">
              <label class="switch" for="paystack_enabled">
                <input type="checkbox" name="paystack_enabled" id="paystack_enabled" <?php if ($_smarty_tpl->getValue('system')['paystack_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Secret Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="paystack_secret" value="<?php echo $_smarty_tpl->getValue('system')['paystack_secret'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
              <div class="form-text">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Paystack secret key that starts with sk_");?>

              </div>
            </div>
          </div>
        </div>
        <!-- Paystack -->

        <div class="divider"></div>

        <!-- 2Checkout (Verifone) -->
        <div>
          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"2co",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("2Checkout Enabled");?>
 (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Verifone");?>
)</div>
              <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable payments via 2Checkout");?>
</div>
            </div>
            <div class="text-end">
              <label class="switch" for="2checkout_enabled">
                <input type="checkbox" name="2checkout_enabled" id="2checkout_enabled" <?php if ($_smarty_tpl->getValue('system')['2checkout_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("2Checkout Mode");?>

            </label>
            <div class="col-md-9">
              <div class="form-check form-check-inline">
                <input type="radio" name="2checkout_mode" id="2checkout_live" value="live" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['2checkout_mode'] == "live") {?>checked<?php }?>>
                <label class="form-check-label" for="2checkout_live"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Live");?>
</label>
              </div>
              <div class="form-check form-check-inline">
                <input type="radio" name="2checkout_mode" id="2checkout_sandbox" value="sandbox" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['2checkout_mode'] == "sandbox") {?>checked<?php }?>>
                <label class="form-check-label" for="2checkout_sandbox"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Demo");?>
</label>
              </div>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Merchant Code");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="2checkout_merchant_code" value="<?php echo $_smarty_tpl->getValue('system')['2checkout_merchant_code'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("API Publishable Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="2checkout_publishable_key" value="<?php echo $_smarty_tpl->getValue('system')['2checkout_publishable_key'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("API Private Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="2checkout_private_key" value="<?php echo $_smarty_tpl->getValue('system')['2checkout_private_key'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>
        </div>
        <!-- 2Checkout (Verifone) -->

        <div class="divider"></div>

        <!-- Authorize.net -->
        <div>
          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"authorize.net",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Authorize.net Enabled");?>
</div>
              <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable payments via Authorize.net");?>
</div>
            </div>
            <div class="text-end">
              <label class="switch" for="authorize_net_enabled">
                <input type="checkbox" name="authorize_net_enabled" id="authorize_net_enabled" <?php if ($_smarty_tpl->getValue('system')['authorize_net_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Authorize.net Mode");?>

            </label>
            <div class="col-md-9">
              <div class="form-check form-check-inline">
                <input type="radio" name="authorize_net_mode" id="authorize_net_live" value="live" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['authorize_net_mode'] == "live") {?>checked<?php }?>>
                <label class="form-check-label" for="authorize_net_live"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Live");?>
</label>
              </div>
              <div class="form-check form-check-inline">
                <input type="radio" name="authorize_net_mode" id="authorize_net_sandbox" value="sandbox" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['authorize_net_mode'] == "sandbox") {?>checked<?php }?>>
                <label class="form-check-label" for="authorize_net_sandbox"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Sandbox");?>
</label>
              </div>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("API Login ID");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="authorize_net_api_login_id" value="<?php echo $_smarty_tpl->getValue('system')['authorize_net_api_login_id'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Transaction Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="authorize_net_transaction_key" value="<?php echo $_smarty_tpl->getValue('system')['authorize_net_transaction_key'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>
        </div>
        <!-- Authorize.net -->

        <div class="divider"></div>

        <!-- Razorpay -->
        <div>
          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"razorpay",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Razorpay Enabled");?>
</div>
              <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable payments via Razorpay");?>
</div>
            </div>
            <div class="text-end">
              <label class="switch" for="razorpay_enabled">
                <input type="checkbox" name="razorpay_enabled" id="razorpay_enabled" <?php if ($_smarty_tpl->getValue('system')['razorpay_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Key ID");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="razorpay_key_id" value="<?php echo $_smarty_tpl->getValue('system')['razorpay_key_id'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Key Secret");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="razorpay_key_secret" value="<?php echo $_smarty_tpl->getValue('system')['razorpay_key_secret'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>
        </div>
        <!-- Razorpay -->

        <div class="divider"></div>

        <!-- Cashfree -->
        <div>
          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"cashfree",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Cashfree Enabled");?>
</div>
              <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable payments via Cashfree");?>
</div>
            </div>
            <div class="text-end">
              <label class="switch" for="cashfree_enabled">
                <input type="checkbox" name="cashfree_enabled" id="cashfree_enabled" <?php if ($_smarty_tpl->getValue('system')['cashfree_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Cashfree Mode");?>

            </label>
            <div class="col-md-9">
              <div class="form-check form-check-inline">
                <input type="radio" name="cashfree_mode" id="Cashfree_live" value="live" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['cashfree_mode'] == "live") {?>checked<?php }?>>
                <label class="form-check-label" for="Cashfree_live"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Live");?>
</label>
              </div>
              <div class="form-check form-check-inline">
                <input type="radio" name="cashfree_mode" id="Cashfree_sandbox" value="sandbox" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['cashfree_mode'] == "sandbox") {?>checked<?php }?>>
                <label class="form-check-label" for="Cashfree_sandbox"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Sandbox");?>
</label>
              </div>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Client ID");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="cashfree_client_id" value="<?php echo $_smarty_tpl->getValue('system')['cashfree_client_id'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Client Secret");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="cashfree_client_secret" value="<?php echo $_smarty_tpl->getValue('system')['cashfree_client_secret'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>
        </div>
        <!-- Cashfree -->

        <div class="divider"></div>

        <!-- Shift4 -->
        <div>
          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"shift4",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Shift4 Enabled");?>
</div>
              <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable payments via Shift4");?>
</div>
            </div>
            <div class="text-end">
              <label class="switch" for="shift4_enabled">
                <input type="checkbox" name="shift4_enabled" id="shift4_enabled" <?php if ($_smarty_tpl->getValue('system')['shift4_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("API Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="shift4_api_key" value="<?php echo $_smarty_tpl->getValue('system')['shift4_api_key'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("API Secret");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="shift4_api_secret" value="<?php echo $_smarty_tpl->getValue('system')['shift4_api_secret'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>
        </div>
        <!-- Shift4 -->

        <div class="divider"></div>

        <!-- MyFatoorah -->
        <div>
          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"myfatoorah",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("MyFatoorah Enabled");?>
</div>
              <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable payments via MyFatoorah");?>
</div>
            </div>
            <div class="text-end">
              <label class="switch" for="myfatoorah_enabled">
                <input type="checkbox" name="myfatoorah_enabled" id="myfatoorah_enabled" <?php if ($_smarty_tpl->getValue('system')['myfatoorah_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("MyFatoorah Mode");?>

            </label>
            <div class="col-md-9">
              <div class="form-check form-check-inline">
                <input type="radio" name="myfatoorah_mode" id="myfatoorah_live" value="live" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['myfatoorah_mode'] == "live") {?>checked<?php }?>>
                <label class="form-check-label" for="myfatoorah_live"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Live");?>
</label>
              </div>
              <div class="form-check form-check-inline">
                <input type="radio" name="myfatoorah_mode" id="myfatoorah_test" value="test" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['myfatoorah_mode'] == "test") {?>checked<?php }?>>
                <label class="form-check-label" for="myfatoorah_test"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Test");?>
</label>
              </div>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Test Token");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="myfatoorah_test_token" value="<?php echo $_smarty_tpl->getValue('system')['myfatoorah_test_token'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
              <div class="form-text">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("MyFatoorah test token");?>
 (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("For more info check the docs");?>
: <a href="https://docs.myfatoorah.com/docs/test-token" target="_blank"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("API Documentation");?>
</a>)
              </div>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Live Token");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="myfatoorah_live_token" value="<?php echo $_smarty_tpl->getValue('system')['myfatoorah_live_token'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
              <div class="form-text">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("MyFatoorah live token");?>
 (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("For more info check the docs");?>
: <a href="https://docs.myfatoorah.com/docs/live-token" target="_blank"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("API Documentation");?>
</a>
              </div>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Live API URL");?>

            </label>
            <div class="col-md-9">
              <input type="text" class="form-control" name="myfatoorah_live_api_url" value="<?php echo $_smarty_tpl->getValue('system')['myfatoorah_live_api_url'];?>
">
              <div class="form-text">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("MyFatoorah live API URL");?>
 (<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("For more info check the docs");?>
: <a href="https://docs.myfatoorah.com/docs/live-token" target="_blank"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("API Documentation");?>
</a>)
              </div>
            </div>
          </div>
        </div>
        <!-- MyFatoorah -->

        <div class="divider"></div>

        <!-- Epayco -->
        <div>
          <div class="form-table-row">
            <div class="avatar">
              <img height="40px" src="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->getValue('system')['theme'];?>
/images/icons/epayco.png">
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Epayco Enabled");?>
</div>
              <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable payments via Epayco");?>
</div>
            </div>
            <div class="text-end">
              <label class="switch" for="epayco_enabled">
                <input type="checkbox" name="epayco_enabled" id="epayco_enabled" <?php if ($_smarty_tpl->getValue('system')['epayco_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Epayco Mode");?>

            </label>
            <div class="col-md-9">
              <div class="form-check form-check-inline">
                <input type="radio" name="epayco_mode" id="epayco_live" value="live" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['epayco_mode'] == "live") {?>checked<?php }?>>
                <label class="form-check-label" for="epayco_live"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Live");?>
</label>
              </div>
              <div class="form-check form-check-inline">
                <input type="radio" name="epayco_mode" id="epayco_test" value="test" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['epayco_mode'] == "test") {?>checked<?php }?>>
                <label class="form-check-label" for="epayco_test"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Test");?>
</label>
              </div>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Public Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="epayco_public_key" value="<?php echo $_smarty_tpl->getValue('system')['epayco_public_key'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Private Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="epayco_private_key" value="<?php echo $_smarty_tpl->getValue('system')['epayco_private_key'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>
        </div>
        <!-- Epayco -->

        <div class="divider"></div>

        <!-- Flutterwave -->
        <div>
          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"flutterwave",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Flutterwave Enabled");?>
</div>
              <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable payments via Flutterwave");?>
</div>
            </div>
            <div class="text-end">
              <label class="switch" for="flutterwave_enabled">
                <input type="checkbox" name="flutterwave_enabled" id="flutterwave_enabled" <?php if ($_smarty_tpl->getValue('system')['flutterwave_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Flutterwave Mode");?>

            </label>
            <div class="col-md-9">
              <div class="form-check form-check-inline">
                <input type="radio" name="flutterwave_mode" id="flutterwave_live" value="live" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['flutterwave_mode'] == "live") {?>checked<?php }?>>
                <label class="form-check-label" for="flutterwave_live"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Live");?>
</label>
              </div>
              <div class="form-check form-check-inline">
                <input type="radio" name="flutterwave_mode" id="flutterwave_test" value="test" class="form-check-input" <?php if ($_smarty_tpl->getValue('system')['flutterwave_mode'] == "test") {?>checked<?php }?>>
                <label class="form-check-label" for="flutterwave_test"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Test");?>
</label>
              </div>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Public Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="flutterwave_public_key" value="<?php echo $_smarty_tpl->getValue('system')['flutterwave_public_key'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Secret Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="flutterwave_secret_key" value="<?php echo $_smarty_tpl->getValue('system')['flutterwave_secret_key'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Encryption Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="flutterwave_encryption_key" value="<?php echo $_smarty_tpl->getValue('system')['flutterwave_encryption_key'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>
        </div>
        <!-- Flutterwave -->

        <div class="divider"></div>

        <!-- Verotel -->
        <div>
          <div class="form-table-row">
            <div class="avatar">
              <img width="40px" src="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/content/themes/<?php echo $_smarty_tpl->getValue('system')['theme'];?>
/images/icons/verotel.png">
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Verotel Enabled");?>
</div>
              <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable payments via Verotel");?>
</div>
            </div>
            <div class="text-end">
              <label class="switch" for="verotel_enabled">
                <input type="checkbox" name="verotel_enabled" id="verotel_enabled" <?php if ($_smarty_tpl->getValue('system')['verotel_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Shop ID");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="verotel_shop_id" value="<?php echo $_smarty_tpl->getValue('system')['verotel_shop_id'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Signature Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="verotel_signature_key" value="<?php echo $_smarty_tpl->getValue('system')['verotel_signature_key'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>
        </div>
        <!-- Verotel -->

        <div class="divider"></div>

        <!-- MercadoPago -->
        <div>
          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"mercadopago",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("MercadoPago Enabled");?>
</div>
              <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable payments via MercadoPago");?>
</div>
            </div>
            <div class="text-end">
              <label class="switch" for="mercadopago_enabled">
                <input type="checkbox" name="mercadopago_enabled" id="mercadopago_enabled" <?php if ($_smarty_tpl->getValue('system')['mercadopago_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Public Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="mercadopago_public_key" value="<?php echo $_smarty_tpl->getValue('system')['mercadopago_public_key'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Access Token");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="mercadopago_access_token" value="<?php echo $_smarty_tpl->getValue('system')['mercadopago_access_token'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>
        </div>
        <!-- MercadoPago -->

        <div class="divider"></div>

        <!-- Plisio -->
        <div>
          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"plisio",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Plisio Enabled");?>
</div>
              <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable payments via Plisio");?>
</div>
            </div>
            <div class="text-end">
              <label class="switch" for="plisio_enabled">
                <input type="checkbox" name="plisio_enabled" id="plisio_enabled" <?php if ($_smarty_tpl->getValue('system')['plisio_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Secret Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="plisio_secret_key" value="<?php echo $_smarty_tpl->getValue('system')['plisio_secret_key'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>
        </div>
        <!-- Plisio -->

        <div class="divider"></div>

        <!-- CoinPayments -->
        <div>
          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"bitcoin",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("CoinPayments Enabled");?>
</div>
              <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable payments via CoinPayments");?>
</div>
            </div>
            <div class="text-end">
              <label class="switch" for="coinpayments_enabled">
                <input type="checkbox" name="coinpayments_enabled" id="coinpayments_enabled" <?php if ($_smarty_tpl->getValue('system')['coinpayments_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Merchant ID");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="coinpayments_merchant_id" value="<?php echo $_smarty_tpl->getValue('system')['coinpayments_merchant_id'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("IPN Secret");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="coinpayments_ipn_secret" value="<?php echo $_smarty_tpl->getValue('system')['coinpayments_ipn_secret'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>
        </div>
        <!-- CoinPayments -->

        <div class="divider"></div>

        <!-- Coinbase -->
        <div>
          <div class="form-table-row">
            <div class="avatar">
              <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"coinbase",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
            </div>
            <div>
              <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Coinbase Enabled");?>
</div>
              <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable payments via Coinbase");?>
</div>
            </div>
            <div class="text-end">
              <label class="switch" for="coinbase_enabled">
                <input type="checkbox" name="coinbase_enabled" id="coinbase_enabled" <?php if ($_smarty_tpl->getValue('system')['coinbase_enabled']) {?>checked<?php }?>>
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-3 form-label">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("API Key");?>

            </label>
            <div class="col-md-9">
              <?php if (!$_smarty_tpl->getValue('user')->_data['user_demo']) {?>
                <input type="text" class="form-control" name="coinbase_api_key" value="<?php echo $_smarty_tpl->getValue('system')['coinbase_api_key'];?>
">
              <?php } else { ?>
                <input type="password" class="form-control" value="*********">
              <?php }?>
            </div>
          </div>
        </div>
        <!-- Coinbase -->

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
  <!-- Payments -->

  <!-- Bank -->
  <div class="tab-pane" id="Bank">
    <form class="js_ajax-forms" data-url="admin/settings.php?edit=bank">
      <div class="card-body">
        <div class="form-table-row">
          <div class="avatar">
            <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"bank",'class'=>"main-icon",'width'=>"40px",'height'=>"40px"), (int) 0, $_smarty_current_dir);
?>
          </div>
          <div>
            <div class="form-label h6"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bank Transfers Enabled");?>
</div>
            <div class="form-text d-none d-sm-block"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Enable payments via Bank Transfers");?>
</div>
          </div>
          <div class="text-end">
            <label class="switch" for="bank_transfers_enabled">
              <input type="checkbox" name="bank_transfers_enabled" id="bank_transfers_enabled" <?php if ($_smarty_tpl->getValue('system')['bank_transfers_enabled']) {?>checked<?php }?>>
              <span class="slider round"></span>
            </label>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bank Name");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="bank_name" value="<?php echo $_smarty_tpl->getValue('system')['bank_name'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Bank Name");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bank Account Number");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="bank_account_number" value="<?php echo $_smarty_tpl->getValue('system')['bank_account_number'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Bank Account Number");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bank Account Name");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="bank_account_name" value="<?php echo $_smarty_tpl->getValue('system')['bank_account_name'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Bank Account Name");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bank Account Routing Code");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="bank_account_routing" value="<?php echo $_smarty_tpl->getValue('system')['bank_account_routing'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Bank Account Routing Code or SWIFT Code");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bank Account Country");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="bank_account_country" value="<?php echo $_smarty_tpl->getValue('system')['bank_account_country'];?>
">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Bank Account Country");?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Transfer Note");?>

          </label>
          <div class="col-md-9">
            <textarea class="form-control" name="bank_transfer_note" rows="5"><?php echo $_smarty_tpl->getValue('system')['bank_transfer_note'];?>
</textarea>
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("This note will be displayed to the user while upload his bank transfer receipt");?>

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
  <!-- Bank -->
</div><?php }
}
