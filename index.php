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
		<nav class="nav-menu">
			<ul>
				<li><a href="index.php?modul=home">home</a></li>
				<li><a href="index.php?modul=produk">produk</a></li>
				<li><a href="index.php?modul=ttg_kami">tentang</a></li>
				<li><a href="index.php?modul=home">xxx</a></li>
				<li><a href="index.php?modul=home">xxx</a></li>
			</ul>
		</nav>
		<div id="left-side">
			<div class="category">
				<p>Kategori</p>
				<?php if (empty($_SESSION['username'])): ?>
					<?php 
						$sql = "SELECT * FROM kategori";
						$i   = mysql_query($sql);
						while ($j = mysql_fetch_assoc($i)) {
							$k[] = $j;
						}
					?>
					<?php if (is_null($k)): ?>
						<a href="">Kosong</a>
					<?php else: ?>	
						<?php foreach ($k as $key => $value): ?>
							<a href="index.php?modul=produk&kategori=<?php echo $value['id_kategori'] ?>"><?php echo $value['nama_kategori'] ?></a>
						<?php endforeach ?>		
					<?php endif ?>
				<?php endif ?>
			</div>
			<div class="cart">
				<p class="left"><i class="fa fa-shopping-cart"></i> keranjang</p>
				<p class="right">0 pcs</p>
				<br>
				<br>
				<br>
				<a href=""><i class="fa fa-shopping-cart"></i> Keranjang kosong</a>
				<br>
				<br>
			</div>
			<div class="service" align="center">
				<p class="left">Payment</p>
				<a href="http://klikbca.com" target="_blank"><img src="layout/img/bca.jpg" width="150"></a>
				<a href="http://mandiri.com" target="_blank"><img src="layout/img/mandiri.jpg" width="150"></a>
			</div>
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