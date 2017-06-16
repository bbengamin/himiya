<div class='simple-title-wrapp'><h3 class='simple-title'><?php echo $title; ?></h3></div>
<div class="row">
  <div class="simple-product-slider">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-xs-12">
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <h4>
          <a href="<?php echo $product['href']; ?>">
            <?php echo $product['name']; ?>
          </a>
        </h4>
        <?php if ($product['price']) { ?>
        <p class="price">
          <?php if (!$product['special']) { ?>
          <span class="price-new"><?php echo $product['price']; ?></span> 
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> 
          <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
        </p>
        <?php } ?>
      </div>
      <div class="new-button-group">
        <a class='new_buy_btns new-buy-btn-cart' onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="material-icons">add_shopping_cart</i><span><?php echo $button_cart; ?></span></a>
        <a class='new_buy_btns new-buy-btn-quick' data-id="<?php echo $product['product_id']; ?>" data-toggle="modal" data-target="#modal-buy-one-click" href='#'><i class="material-icons">flash_on</i><span>Купить в один клик</span></a>
      </div>
    </div>
  </div>
  <?php } ?>
  </div>
</div>
