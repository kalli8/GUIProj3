<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="<?= BASE_URL ?>/public/css/styles.css">
<script src="<?= BASE_URL ?>/public/js/jquery-2.2.0.min.js"></script>
<script type="text/javascript" src="<?= BASE_URL ?>/public/js/scripts.js"></script>

</head>

<body>

    <h3>Log In</h3>
    <form method="POST" action="<?= BASE_URL ?>/login">
      <label>Username: <input type="text" name="uname"></label>
      <label>Password: <input type="password" name="pw"></label>
      <input type="submit" name="submit" value="Log in">
    </form>
    <h3> Sign Up </h3>
    <form method="POST" action="<?= BASE_URL ?>/signup">
      <label>Username: <input type="text" name="username"></label>
      <label>First Name: <input type="text" name="first_name"></label>
      <label>Last Name: <input type="text" name="last_name"></label>
      <label>Email: <input type="text" name="email"></label>
      <label>Password: <input type="password" name="pw"></label>
      <input type="submit" name="submit" value="Sign Up">
    </form>



</body>

</html>
