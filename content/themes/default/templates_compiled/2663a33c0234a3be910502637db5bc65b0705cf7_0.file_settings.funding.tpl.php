<?php
/* Smarty version 5.8.0, created on 2026-05-09 21:39:23
  from 'file:settings.funding.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.8.0',
  'unifunc' => 'content_69ffa98b815b93_64987727',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '2663a33c0234a3be910502637db5bc65b0705cf7' => 
    array (
      0 => 'settings.funding.tpl',
      1 => 1778233710,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:__svg_icons.tpl' => 1,
    'file:_no_transactions.tpl' => 1,
  ),
))) {
function content_69ffa98b815b93_64987727 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/home/u636854834/domains/kiptalk.com/public_html/content/themes/default/templates';
?><div class="card-header with-icon">
  <?php $_smarty_tpl->renderSubTemplate('file:__svg_icons.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('icon'=>"funding",'class'=>"main-icon mr15",'width'=>"24px",'height'=>"24px"), (int) 0, $_smarty_current_dir);
echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Funding");?>

</div>
<div class="card-body">
  <div class="alert alert-info">
    <div class="text">
      <strong><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Funding System");?>
</strong><br>
      <?php if ($_smarty_tpl->getValue('system')['funding_money_withdraw_enabled']) {?>
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("You can withdraw your money");?>

      <?php }?>
      <?php if ($_smarty_tpl->getValue('system')['funding_money_transfer_enabled']) {?>
        <?php if ($_smarty_tpl->getValue('system')['funding_money_withdraw_enabled']) {
echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("or");?>
 <?php }?>
        <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("You can transfer your money to your");?>
 <a class="alert-link" href="<?php echo $_smarty_tpl->getValue('system')['system_url'];?>
/wallet" target="_blank"><i class="fa fa-wallet"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("wallet");?>
</a>
      <?php }?>
    </div>
  </div>

  <?php if ($_smarty_tpl->getValue('system')['funding_money_withdraw_enabled']) {?>
    <div class="heading-small mb20">
      <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Withdrawal Request");?>

    </div>
    <div class="pl-md-4">
      <form class="js_ajax-forms" data-url="users/withdraw.php?type=funding">
        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Balance");?>

          </label>
          <div class="col-md-9">
            <h6>
              <span class="badge badge-lg bg-info">
                <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('print_money')($_smarty_tpl->getValue('user')->_data['user_funding_balance']);?>

              </span>
            </h6>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Amount");?>
 (<?php echo $_smarty_tpl->getValue('system')['system_currency'];?>
)
          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="amount">
            <div class="form-text">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("The minimum withdrawal request amount is");?>
 <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('print_money')($_smarty_tpl->getValue('system')['funding_min_withdrawal']);?>

            </div>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Payment Method");?>

          </label>
          <div class="col-md-9">
            <?php if ($_smarty_tpl->getSmarty()->getModifierCallback('in_array')("paypal",$_smarty_tpl->getValue('system')['funding_payment_method_array'])) {?>
              <div class="form-check form-check-inline">
                <input type="radio" name="method" id="method_paypal" value="paypal" class="form-check-input">
                <label class="form-check-label" for="method_paypal"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("PayPal");?>
</label>
              </div>
            <?php }?>
            <?php if ($_smarty_tpl->getSmarty()->getModifierCallback('in_array')("skrill",$_smarty_tpl->getValue('system')['funding_payment_method_array'])) {?>
              <div class="form-check form-check-inline">
                <input type="radio" name="method" id="method_skrill" value="skrill" class="form-check-input">
                <label class="form-check-label" for="method_skrill"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Skrill");?>
</label>
              </div>
            <?php }?>
            <?php if ($_smarty_tpl->getSmarty()->getModifierCallback('in_array')("bank",$_smarty_tpl->getValue('system')['funding_payment_method_array'])) {?>
              <div class="form-check form-check-inline">
                <input type="radio" name="method" id="method_bank" value="bank" class="form-check-input">
                <label class="form-check-label" for="method_bank"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Bank Transfer");?>
</label>
              </div>
            <?php }?>
            <?php if ($_smarty_tpl->getSmarty()->getModifierCallback('in_array')("custom",$_smarty_tpl->getValue('system')['funding_payment_method_array'])) {?>
              <div class="form-check form-check-inline">
                <input type="radio" name="method" id="method_custom" value="custom" class="form-check-input">
                <label class="form-check-label" for="method_custom"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')($_smarty_tpl->getValue('system')['funding_payment_method_custom']);?>
</label>
              </div>
            <?php }?>
          </div>
        </div>

        <div class="row form-group">
          <label class="col-md-3 form-label">
            <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Transfer To");?>

          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="method_value">
          </div>
        </div>

        <div class="row">
          <div class="col-md-9 offset-md-3">
            <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Make a withdrawal");?>
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
    </div>

    <div class="divider"></div>

    <div class="heading-small mb20">
      <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Withdrawal History");?>

    </div>
    <div class="pl-md-4">
      <?php if ($_smarty_tpl->getValue('payments')) {?>
        <div class="table-responsive mt20">
          <table class="table table-striped table-bordered table-hover">
            <thead>
              <tr>
                <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("ID");?>
</th>
                <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Amount");?>
</th>
                <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Method");?>
</th>
                <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Transfer To");?>
</th>
                <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Time");?>
</th>
                <th><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Status");?>
</th>
              </tr>
            </thead>
            <tbody>
              <?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('payments'), 'payment');
$_smarty_tpl->getVariable('payment')->iteration = 0;
$foreach0DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('payment')->value) {
$foreach0DoElse = false;
$_smarty_tpl->getVariable('payment')->iteration++;
$foreach0Backup = clone $_smarty_tpl->getVariable('payment');
?>
                <tr>
                  <td><?php echo $_smarty_tpl->getVariable('payment')->iteration;?>
</td>
                  <td><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('print_money')($_smarty_tpl->getValue('payment')['amount']);?>
</td>
                  <td>
                    <?php if ($_smarty_tpl->getValue('payment')['method'] == "custom") {?>
                      <?php echo $_smarty_tpl->getValue('system')['affiliate_payment_method_custom'];?>

                    <?php } else { ?>
                      <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('ucfirst')($_smarty_tpl->getValue('payment')['method']);?>

                    <?php }?>
                  </td>
                  <td><?php echo $_smarty_tpl->getValue('payment')['method_value'];?>
</td>
                  <td>
                    <span class="js_moment" data-time="<?php echo $_smarty_tpl->getValue('payment')['time'];?>
"><?php echo $_smarty_tpl->getValue('payment')['time'];?>
</span>
                  </td>
                  <td>
                    <?php if ($_smarty_tpl->getValue('payment')['status'] == '0') {?>
                      <span class="badge rounded-pill badge-lg bg-warning"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Pending");?>
</span>
                    <?php } elseif ($_smarty_tpl->getValue('payment')['status'] == '1') {?>
                      <span class="badge rounded-pill badge-lg bg-success"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Approved");?>
</span>
                    <?php } else { ?>
                      <span class="badge rounded-pill badge-lg bg-danger"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Declined");?>
</span>
                    <?php }?>
                  </td>
                </tr>
              <?php
$_smarty_tpl->setVariable('payment', $foreach0Backup);
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
            </tbody>
          </table>
        </div>
      <?php } else { ?>
        <?php $_smarty_tpl->renderSubTemplate('file:_no_transactions.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
      <?php }?>
    </div>
  <?php } else { ?>
    <div class="row justify-content-center">
      <!-- money balance -->
      <div class="col-sm-6">
        <div class="section-title mb20">
          <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('__')("Your Funding Balance");?>

        </div>
        <div class="stat-panel bg-gradient-primary">
          <div class="stat-cell">
            <i class="fa fas fa-donate bg-icon"></i>
            <div class="h3 mtb10">
              <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('print_money')($_smarty_tpl->getValue('user')->_data['user_funding_balance']);?>

            </div>
          </div>
        </div>
      </div>
      <!-- money balance -->
    </div>
  <?php }?>
</div><?php }
}
