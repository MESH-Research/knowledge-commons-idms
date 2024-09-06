<?php
  require_once( 'functions.php' );
  set_org_cookie();
?>

<html lang="en">
  <head>
    <title>Knowledge Commons Authentication</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-5" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css" />
  </head>
  <body>
    <div id="wrapper">
      <div id="main">
        <div id="logo">
          <img src="<?= get_org_logo_url(); ?>" alt="Commons Logo" />
        </div>
        <h2><?= instruction_text(); ?></h2>
        <div id="login-items">
          <?= login_items(); ?>
        </div>
        <div id="help">
          <?= help_text(); ?>
        </div>
      </div>
    </div>
  </body>
</html>
