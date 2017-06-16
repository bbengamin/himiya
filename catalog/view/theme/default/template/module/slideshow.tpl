

<div class="top-content">
  <div id="slideshow<?php echo $module; ?>" class="owl-carousel main-slider" style="opacity: 1;">
    <?php foreach ($banners as $banner) { ?>
    <div class="item">
      <?php if ($banner['link']) { ?>
      <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
      <?php } else { ?>
      <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
      <?php } ?>
    </div>
    <?php } ?>
  </div>
  <div class="top-content__boxs">
    <div class="top-boxs">
      <div class="top-boxs__content">
        <img class="responsive-img" src='/catalog/view/theme/default/image/badge.png'>
        <p>100% Гарантия качественных товаров.</p>
      </div>
    </div>
    <div class="top-boxs">
     <div class="top-boxs__content">
       <img class="responsive-img" src='/catalog/view/theme/default/image/delivery-truck-with-circular-clock.png'>
       <p>Быстрая доставка по Харькову и Украине.</p>
     </div>
    </div>
  </div>
</div>




<script type="text/javascript">
$('#slideshow<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 3000,
	singleItem: true,
	navigation: true,
	navigationText: ['<i class="material-icons">navigate_before</i>', '<i class="material-icons">navigate_next</i>'],
	pagination: true
});
</script>