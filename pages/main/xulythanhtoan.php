<?php
	session_start();
	include('../../admincp/config/config.php');
	require('../../Mail/sendmail.php');
	require('../../carbon/autoload.php');

	use Carbon\Carbon;
    use Carbon\CarbonInterval;

	$now = Carbon::now('Asia/Ho_Chi_Minh');
	$id_khachhang = $_SESSION['id_khachhang'];
	$code_order = rand(0,9999);
	$cart_payment = $_POST['payment'];
	//lay id thong tin van chuyen
	$id_dangky = $_SESSION['id_khachhang'];
    $sql_get_vanchuyen = mysqli_query($mysqli,"SELECT * FROM tbl_shipping WHERE id_dangky='$id_dangky' LIMIT 1");
	$row_get_vanchuyen = mysqli_fetch_array($sql_get_vanchuyen);
	$id_shipping = $row_get_vanchuyen['id_shipping'];
	//insert cart
	$insert_cart = "INSERT INTO tbl_cart(id_khachhang,code_cart,cart_status,cart_date,cart_payment,cart_shipping) VALUE('".$id_khachhang."','".$code_order."',1,'".$now."',
	'".$cart_payment."','".$cart_shipping."')";
	$cart_query = mysqli_query($mysqli,$insert_cart);
	if($cart_query){
		//them gio hang chi tiet
		foreach($_SESSION['cart'] as $key => $value){
			$id_sanpham = $value['id'];
			$soluong = $value['soluong'];
			$insert_order_details = "INSERT INTO tbl_cart_details(id_sanpham,code_cart,soluongmua) VALUE('".$id_sanpham."','".$code_order."','".$soluong."')";
			mysqli_query($mysqli,$insert_order_details);
		}
		$tieude = "Quý Khách Đã Đặt Hàng Thành Công Tại Wed";
		$noidung = "<p>Khách hàng đã đặt thành công mã đơn hàng : ".$code_order."</p>";
		$noidung.= "<h4>Quý khách vui lòng xác nhận chính xác đơn hàng nếu có sai sót vui lòng mail lại cho bên cửa hàng thông qua chính email này . Cảm ơn quý khách đã đặt hàng </h4p>";
		foreach($_SESSION['cart'] as $key => $val){
			$noidung.= "<ul style= 'boder:1px;margin:10px;'>
				<li>Tên sản phẩm: ".$val['tensanpham']."</li>
				<li>Mã Sản Phẩm: ".$val['masp']."</li>
				<li>Số Lượng Sản Phẩm: ".$val['soluong']."</li>
				<li>Giá Sản Phẩm ".number_format($val['giasp'],0,',','.')."d</li>
				</ul>";
		}	
		$maildathang = $_SESSION['email'];
		$mail = new Mailer();
		$mail->dathangmail($tieude,$noidung,$maildathang);
		}	
	unset($_SESSION['cart']);
	header('Location:../../index.php?quanly=camon');


?>