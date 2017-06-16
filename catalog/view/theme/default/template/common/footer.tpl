<footer>
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
        <div class="col-sm-3">
          <h5><?php echo $text_information; ?></h5>
          <ul class="list-unstyled">
            <?php foreach ($informations as $information) { ?>
              <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
            <?php } ?>
                    <!--<li><a href="https://himiya-bbengamin.c9users.io/delivery_payment">Доставка и оплата</a></li>
                    <li><a href="https://himiya-bbengamin.c9users.io/about">О Магазине</a></li>
                    <li><a href="https://himiya-bbengamin.c9users.io/garantiya">Гарантия</a></li>-->
            <li><a href="/special"><?php echo $text_special; ?></a></li>
          </ul>
        </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="/contact"><?php echo $text_contact; ?></a></li>
          <li><a href="/sitemap"><?php echo $text_sitemap; ?></a></li>
          <!--<li><a href="https://himiya-bbengamin.c9users.io/contact">Обратная связь</a></li>-->
          <!--  <li><a href="https://electro-bbengamin.c9users.io/index.php?route=account/return/add">Возврат товара</a></li> -->
          <!--<li><a href="https://himiya-bbengamin.c9users.io/sitemap">Карта сайта</a></li>-->
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5>Контакты</h5>
        <ul class="list-unstyled contact-footer-box">
          <li><a href="mailto:<?php echo $email; ?>"><i class="material-icons">contact_mail</i><span><?php echo $email; ?></span></a></li>
          <li><a href="tel:<?php echo $telephone; ?>"><i class="material-icons">contact_phone</i><span><?php echo $telephone; ?></span></a></li>
          <li><a href="tel:<?php echo $telephone2; ?>"><i class="material-icons">contact_phone</i><span><?php echo $telephone2; ?></span></a></li>
          <!--<li><a href="https://electro-bbengamin.c9users.io/index.php?route=product/manufacturer">Производители</a></li>
          <li><a href="<b>Notice</b>: Undefined variable: voucher in <b>/home/ubuntu/workspace/catalog/view/theme/default/template/common/footer.tpl</b> on line <b>39</b>">Подарочные сертификаты</a></li>
          <li><a href="https://electro-bbengamin.c9users.io/index.php?route=affiliate/account">Партнерская программа</a></li>
          <li><a href="https://electro-bbengamin.c9users.io/special">Акции</a></li>-->
        </ul>
      </div>
    </div>
  </div>
  
  <div class="my-vidgets vidget-callback">
    <a data-toggle="modal" data-target="#modal-call-back-header">
      <i class="material-icons">call</i>
      <span>Перезвоните мне</span>
    </a>
  </div>
  
</footer>

<!-- modal-call-back-header -->
<div id="modal-call-back-header" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><i class="material-icons">close</i></button>
        <h4 class="modal-title">Заполните форму<br> и мы Вам перезвоним!</h4>
      </div>
      <div class="modal-body">
        <div class="form-box">
          <form id="form-call-back-header">
            <div class="input-field">
              <input type='text' placeholder='Ваше имя...' name='name' class='form-control header-search input-lg'>
            </div>
            <div class="input-field">
              <input type='text' placeholder='+38(0__)___-__-__' name='phone' class='form-control header-search input-lg'>
            </div>
            <div class="input-field">
              <button type='submit' id="submit-call-back-header" class='product-btns'>Перезвонить</button>
            </div>
          </form>
          <h4 class='modal-thanks'>Спасибо за заявку, мы свяжемся с Вами в ближайшее время</h4>
        </div>
      </div>
    </div>

  </div>
</div>

<!-- Modal after-->
<!-- modal-buy-one-click -->
<div id="modal-buy-one-click" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><i class="material-icons">close</i></button>
        <h4 class="modal-title">Покупка в один клик</h4>
      </div>
      <div class="modal-body">
        <div class="form-box">
          <form id="form-quick-buy">
            <div class="input-field">
              <input type='hidden' name='product_id' >
              <input type='hidden' name='quantity' value="10">
              <input type='text' placeholder='Ваше имя...' name='name' class='form-control header-search input-lg'>
            </div>
            <div class="input-field">
              <input type='text' placeholder='+38(0__)___-__-__' name='phone' class='form-control header-search input-lg'>
            </div>
            <div class="input-field">
              <input type='text' placeholder='Email..' name='email' class='form-control header-search input-lg'>
            </div>
            <div class="input-field">
              <button type='submit' id="submit-call-back-header" class='product-btns'>Отправить</button>
            </div>
          </form>
          <h4 class='modal-thanks'>Спасибо за заявку, мы свяжемся с Вами в ближайшее время</h4>
        </div>
      </div>
    </div>

  </div>
</div>

<!-- Modal after-->

<div class="modal" id="modal-after" tabindex="-1" role="dialog" aria-labelledby="call-back-modal-Label" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			<div class="modal-body" id="modal-after-body">

			</div>
		</div>
	</div>
</div>
<div id="scrollup">
  <i class="material-icons">keyboard_arrow_up</i>
</div>
<script>
  $("#scrollup").mouseover(function () {
        $(this).animate({opacity: 0.65}, 300)
    }).mouseout(function () {
        $(this).animate({opacity: 1}, 300)
    }).click(function () {
        return $("body,html").animate({scrollTop: 0}, 800), !1
    }), $(window).scroll(function () {
        $(document).scrollTop() > 300 ? jQuery("#scrollup").fadeIn("fast") : jQuery("#scrollup").fadeOut("fast")
    });
</script>


</body></html>