<div id="cart" class="btn-group btn-block">
  <a href='/index.php?route=checkout/buy'>
    <div data-loading-text="<?php echo $text_loading; ?>" class="cart-inner">
      <div class='cart-icon'>
        <i class="fa fa-shopping-cart"></i>
      </div>
      <div class='cart-text'>
        <p>Корзина:</p>
        <span id="cart-total"><?php echo $text_items; ?></span>
      </div>
    </div>
  </a>
</div>
