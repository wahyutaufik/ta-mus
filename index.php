<?php  
include "config/koneksi.php";
$_SESSION = array();
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Toko Devi</title>
	<link rel="stylesheet" href="layout/css/layout.css">
	<link rel="stylesheet" href="layout/css/font-awesome/font-awesome.min.css">
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<p>TOKO DEVI</p>
		</div>
		<?php if (empty($_SESSION['username'])): ?>
			<nav class="nav-menu">
				<ul>
					<li><a href="index.php?modul=home">home</a></li>
					<li><a href="index.php?modul=produk">produk</a></li>
					<li><a href="index.php?modul=ttg_kami">tentang</a></li>
					<li><a href="index.php?modul=kontak">Kontak</a></li>
					<li><a href="index.php?modul=konfirmasi">Konfirmasi Pembayaran</a></li>
				</ul>
			</nav>
		<?php endif ?>
		<div id="left-side">
			<?php  
				if (empty($_SESSION['username'])) {
					include "side-left.php";
				} else {
					include "left-side-admin.php";
				}
			?>
		</div>
		<div id="content">
			<?php include "halaman.php"; ?>
		</div>
		<div class="clear"></div>
		<div id="footer">
			<p>&copy; 2014-2015 Musriati | <a href="index.php?modul=login_admin">Administrator</a></p>
		</div>
	</div>
</body>
</html>