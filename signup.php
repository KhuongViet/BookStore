<?php include 'inc/header.php'; ?>
<?php
$login = Session::get("cuslogin");
if ($login == true) {
	header("Location:order.php");
}
?>
<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['register'])) {
	$customerReg = $cmr->customerRegistration($_POST);
	if (!headers_sent()) {
		header("Location: login.php");
		exit;
	} else {
		echo "<script>window.location.href='login.php';</script>";
		exit;
	}
}

?>
<div class="register_account">
	<?php

	if (isset($customerReg)) {
		echo $customerReg;
	}
	?>
	<h3>Đăng ký tài khoản mới</h3>
	<form action="" method="post">
		<table>
			<tbody>
				<tr>
					<td>
						<div>
							<input type="text" name="name" placeholder="Tên" />
						</div>

						<div>
							<input type="text" name="city" placeholder="Thành phố" />
						</div>

						<div>
							<input type="text" name="zip" placeholder="Mã bưu điện" />
						</div>
						<div>
							<input type="text" name="email" placeholder="Email" />
						</div>
					</td>
					<td>
						<div>
							<input type="text" name="address" placeholder="Địa chỉ" />
						</div>

						<div>
							<input type="text" name="country" placeholder="Quốc gia" />
						</div>


						<div>
							<input type="text" name="phone" placeholder="Số điện thoại" />
						</div>

						<div>
							<input type="text" name="pass" placeholder="Mật khẩu" />
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="search">
			<div><button class="grey" name="register">Tạo tài khoản</button></div>
		</div>
		<div class="clear"></div>
	</form>
</div>
<div class="clear"></div>
</div>
</div>
<?php include 'inc/footer.php'; ?>