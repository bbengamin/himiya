<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/jquery.maskedinput.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
				
				<script src="catalog/view/javascript/mf/jquery-ui.min.js" type="text/javascript"></script>
			
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="/catalog/view/theme/default/stylesheet/jquery.fancybox.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="catalog/view/javascript/jquery/owl-carousel/owl.carousel.css" type="text/css" rel="stylesheet" media="screen">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<script src="/catalog/view/javascript/media.js" type="text/javascript"></script>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<script src="/catalog/view/javascript/jquery.fancybox.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
  <!--mobile start-->
  <div id="mobile-overlay" onclick="closeNavcategory();closeNavsearch();closeNavsettings()"></div>
  <div id="category-mob-list" class="sidenav">
    <a href="javascript:void(0)" class="closebtn-mob" onclick="closeNavcategory()"><i class="material-icons">close</i></a>
    <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
              <div class="category-menu-img-box" style='background: url("<?php echo $category['image']; ?>") no-repeat center;'>
                
              </div>
            </div>
            
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>s
  </div>
  <div id="search-mob-box" class="sidenav">
    <a href="javascript:void(0)" class="closebtn-mob" onclick="closeNavsearch()"><i class="material-icons">close</i></a>
   
    
  </div>
  <div id="top-links-mob-box" class="sidenav">
    <a href="javascript:void(0)" class="closebtn-mob" onclick="closeNavsettings()"><i class="material-icons">close</i></a>
    
  </div>
  
  <!--mobile end-->
  <!--mobile-header start-->
  <header class="mobile-header">
    <div class="header-mobile-inner">
      <div class="header-mobile-item mobile-item-category-list">
        <span class="mob-menu-trigger mob-category-trigger" onclick="openNavcategory()">
          <i class="material-icons">menu</i>
        </span>
      </div>
      <div class="header-mobile-item mobile-item-search">
        <span class="mob-menu-trigger mob-search-trigger" onclick="openNavsearch()">
          <i class="material-icons">search</i>
        </span>
      </div>
      <div class="header-mobile-item mobile-item-logo">
        <a href='/'><h1 class='logo-name'>Лёва.com</h1></a>
      </div>
      <div class="header-mobile-item mobile-item-cart">
        <span class="mob-menu-trigger mob-cart-trigger">
          <i class="material-icons">shopping_cart</i>
         </span>
      </div>
      <div class="header-mobile-item mobile-item-options">
        <span class="mob-menu-trigger mob-settings-trigger" onclick="openNavsettings()">
          <i class="material-icons">settings</i>
         </span>
      </div>
    </div>
  </header>
  <!--mobile-header end-->
  <div class="desctop-only-header">
<nav id="top">
  <div class="container">
    <div class="row">
    <div id="top-links" class="nav header-nav">
      <ul class="list-inline">
        <li><a href='/'>Главная</a></li>  
        <li><a href='/about'>О нас</a></li>  
        <li><a href='/delivery'>Доставка и оплата</a></li>  
        <li><a href="<?php echo $contact; ?>"><span>Контакты и режим работы</span></a></li>
        <li><a href='/special'>Акция</a></li>
        <li class="dropdown">
          <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle header-contact-link" data-toggle="dropdown">
            <i class="material-icons">account_circle</i>
            <span><?php echo $logged ? $text_logged : $text_account; ?></span>
          </a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <!--<li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>-->
            <!--<li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>-->
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
      </ul>
    </div>
    </div>
  </div>
</nav>
<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-3">
        <div id="logo">
         <!-- <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>-->
          <h1 class='logo-name'><a href='/'>Лёва.com</a></h1>
        </div>
      </div>
      <div class="col-sm-9">
        <div class="header-center-box">
          <div class="header-inner-item header-phones-box">
            <ul class="header-contact-list">
              <li>
                <a class='header-contact-link' href='tel:<?php echo $telephone; ?>'>
                  <i class="material-icons">phone</i>
                  <span><?php echo $telephone; ?></span>
                </a>
              </li>
              <li>
                <a class='header-contact-link' href='tel:<?php echo $telephone2; ?>'>
                  <i class="material-icons">phone</i>
                  <span><!--<?php echo $telephone_2; ?>--><?php echo $telephone2; ?></span>
                </a>
              </li>
              <li>
                <a class='header-contact-link' href='mailto:<?php echo $email; ?>'>
                  <i class="material-icons">mail_outline</i>
                  <span><!--<?php echo $adminmail; ?>--><?php echo $email; ?></span>
                </a>
              </li>
              <li class="header-call-back">
                <a data-toggle="modal" class='header-contact-link' data-target="#modal-call-back-header">
                  <i class="material-icons">phone</i>
                  <span>Перезвоните мне</span>
                </a>
              </li>
            </ul>
          </div>
          <div class='header-bottom-panel'>
          <div class="header-inner-item header-search-box">
            <?php echo $search; ?>
          </div>
          <div class="header-inner-item header-basket">
            <?php echo $cart; ?></div>
          </div>
        </div>
        
      </div>
  </div>
</header>
<div class="main-menu-wrap">
<?php if ($categories) { ?>
<div class="container">
  <div class="row">
  <nav id="menu" class="navbar second-nav">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <!--<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>-->
        <li><a href="<?php echo $category['href']; ?>" class="dropdown-toggle"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
           </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
  </div>
</div>
<?php } ?>
</div>
</div>