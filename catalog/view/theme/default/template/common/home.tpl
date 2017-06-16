<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
    <div class="home-content-text">
      <h3>Лучшие товары для дома и семьи</h3>
      <p>Наш магазин предлагает Вашему вниманию товары высокого качества от известных украинских и иностранных производителей по самым доступным
      и выгодным ценам, с доставкой во все города Украины. Постоянное обновление ассортимента, снижение цен, акции. 
      Теперь Вам не нужно ходить по магазинам и тратить свои нервы и деньги. Покупайте все необходимые товары не выходя из дома,
      а сэкономленное время уделите более важным делам. Покупать у нас удобно и экономно, убедитесь сами.</p>
    </div>
    <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>