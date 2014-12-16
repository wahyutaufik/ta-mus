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
	<p class="right"><?php include "cart_count.php"; ?> pcs</p>
	<br>
	<br>
	<br>
	<a href="index.php?modul=cart"><i class="fa fa-shopping-cart"></i> Keranjang Belanja</a>
	<br>
	<br>
</div>
<div class="service" align="center">
	<p class="left">Payment</p>
	<a href="http://klikbca.com" target="_blank"><img src="layout/img/bca.jpg" width="150"></a>
	<a href="http://mandiri.com" target="_blank"><img src="layout/img/mandiri.jpg" width="150"></a>
</div>