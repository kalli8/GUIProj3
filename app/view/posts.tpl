<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Posts</title>
<link rel="stylesheet" type="text/css" href="<?= BASE_URL ?>/public/css/styles.css">
<script src="<?= BASE_URL ?>/public/js/jquery-2.2.0.min.js"></script>
<script type="text/javascript" src="<?= BASE_URL ?>/public/js/scripts.js"></script>

</head>

<body>


<div id="wrapper">

<div id="header">

<h1>My Blog Name Goes Here</h1>

	<div id="search">
		<input type="text" />
		<input type="submit" value="Search" />
	</div>

	<ul id="nav">
		<li><a href="<?= BASE_URL ?>/">Home</a></li>
		<li><a href="<?= BASE_URL ?>/news/">News</a></li>
		<li><a href="<?= BASE_URL ?>/about/">About</a></li>
		<li><a href="<?= BASE_URL ?>/posts/" class="selected">Posts</a></li>
		<li><a href="#">Contact Me</a></li>
	</ul>

</div>

<div id="content">

	<h2>All posts</h2>

	<ul>
	<?php

		foreach($posts as $post) {
				$postID = $post->get('id');
				$postTitle = $post->get('title');
				echo '<li><a href="'.BASE_URL.'/posts/'.$postID.'">'.$postTitle.'</a></li>';
		}
	?>
	</ul>

</div>

<div id="footer">
	<p>Copyright 2016 All Rights Reserved</p>
</div>

</div>


</body>


</html>
