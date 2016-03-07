<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="<?= BASE_URL ?>/public/css/styles.css">
<script src="<?= BASE_URL ?>/public/js/jquery-2.2.0.min.js"></script>
<script type="text/javascript" src="<?= BASE_URL ?>/public/js/scripts.js"></script>

</head>

<body>

<?php
	if( !isset($_SESSION['username']) || $_SESSION['username'] == '') {
		header('Location: '.BASE_URL . '/redirectToLogin'); } else {
?>

	<div class="banner">
	<!-- 	<div id="title">Evenet</div> -->
		<div id="welcome">

		<p>Welcome, <?= $_SESSION['username'] ?>!  <a href="<?= BASE_URL ?>/logout">Log out</a></p>
		</div>
	</div>

	<div class="wrapper">
	<div class="navColumn">
		<ul>
			<li class="section">Enter your location:<input type="text" id="locTextBox" class="rounded" placeholder=" Location"></li>
			<li><a href="#">Today</a></li>
			<li><a href="#">Tomorrow</a></li>
			<li><a href="#">This week</a></li>
			<li><a href="#">This month</a></li>
			<li class="section">You</li>
			<li><a href="profile.html">Organizations</a></li>
			<li><a href="profile.html">Events</a></li>
			<li><a href="profile.html">Friends</a></li>
		</ul>
	</div>
	<div class="mainColumn">
	<!-- Header table -->
		<table>
			<tr>
				<td id="loc" class="leftAlign">Blacksburg, VA</td>
				<td class="centerAlign">Your network</td>
				<td class="rightAlign"><input type="text" class="rounded" placeholder=" Category"> </td>
			</tr>
		</table>
 		<div id="newsFeed">
 			<table>
 			<tr>
 			<td class="topAlign"><img class="icon" src="<?= BASE_URL ?>/public/img/Tian.jpg"> </td>
			<td class="topAlign"><p id="newsFeedText"> <a href="profile.html">Tian Wang</a> is going to Capital One's <a href="event.html">Company Picnic</a></p></td>
			<td class="topAlign"><img class="iconRight" src="<?= BASE_URL ?>/public/img/CompanyPicnic.jpg"></td>
			</tr>
			</table>
		</div> <!-- newsFeed -->
		<div id="newsFeed">
 			<table>
 			<tr>
 			<td class="topAlign"><img class="icon" src="<?= BASE_URL ?>/public/img/Abbey.jpg"> </td>
			<td class="topAlign"><p id="newsFeedText">Abbey Lawhorne is going to Capital One's <a href="event.html">Company Picnic</a></p></td>
			<td class="topAlign"><img class="iconRight" src="<?= BASE_URL ?>/public/img/CompanyPicnic.jpg"></td>
			</tr>
			</table>
		</div> <!-- newsFeed -->
		<div id="newsFeed">
 			<table>
 			<tr>
 			<td class="topAlign"><img class="icon" src="<?= BASE_URL ?>/public/img/Dag.jpg"> </td>
			<td class="topAlign"><p id="newsFeedText">Dag Yeshiwas is going to Capital One's <a href="event.html">Company Picnic</a></p></td>
			<td class="topAlign"><img class="iconRight" src="<?= BASE_URL ?>/public/img/CompanyPicnic.jpg"></td>
			</tr>
			</table>
		</div> <!-- newsFeed -->
		<div id="newsFeed">
 			<table>
 			<tr>
 			<td class="topAlign"><img class="icon" src="<?= BASE_URL ?>/public/img/Cap1.jpg"> </td>
			<td class="topAlign"><p id="newsFeedText">Capital One is hosting <a href="event.html">Company Picnic</a></br></br>Come join us for our annual Capital One company picnic!
			This is a family friendly event with moon bounces, slides, and live entertainers.
			Food will be provided. Weather permitting.</p></td>
			<td class="topAlign"><img class="iconRight" src="<?= BASE_URL ?>/public/img/CompanyPicnic.jpg"></td>
			</tr>

			</table>


		</div> <!-- newsFeed -->
	</div> <!-- main column -->
</div> <!-- wrapper -->

<?php
	}
?>
</body>


</html>
