<?php
include('admincp/config/config.php');
if(isset($_GET['thanhtoan'])=='paypal'){
    $code_order = rand(0,9999);
    $cart_payment = 'paypal';
    $id_khachhang = $_SESSION['id_khachhang'];
    //lay id thong tin van chuyen
    $sql_get_vanchuyen = mysqli_query($mysqli,"SELECT * FROM tbl_shipping WHERE id_dangky='$id_khachhang' LIMIT 1");
    $row_get_vanchuyen = mysqli_fetch_array($sql_get_vanchuyen);
    $id_shipping = $row_get_vanchuyen['id_shipping'];
    //insert vào đơn hàng
    $insert_cart = "INSERT INTO tbl_cart(id_khachhang,code_cart,cart_status,cart_payment,cart_shipping) VALUE('".$id_khachhang."','".$code_order."',1,'".$cart_payment."','".$id_shipping."')";

    $cart_query = mysqli_query($mysqli,$insert_cart);
    //them don hàng chi tiet
    foreach($_SESSION['cart'] as $key => $value){
            $id_sanpham = $value['id'];
            $soluong = $value['soluong'];
            $insert_order_details = "INSERT INTO tbl_cart_details(id_sanpham,code_cart,soluongmua) VALUE('".$id_sanpham."','".$code_order."','".$soluong."')";
            mysqli_query($mysqli,$insert_order_details);
    }
    if($cart_query){
        //insert gio hàng
        echo '<h3>Giao dịch thanh toán bằng Paypal thành công</h3>';
        echo '<p>Vui lòng vào trang <a target="_blank" href="index.php?quanly=lichsudonhang">lịch sử đơn hàng</a> để xem chi tiết đơn hàng của bạn</p>';
    }else{
        echo 'Giao dịch PAYPAL thất bại';
    }
}	
?>
<p>Cám ơn bạn đã mua hàng ,chúng tôi sẽ liên hệ bạn trong thời gian sớm nhất</p>
<p>Vui lòng vào trang <a target="_blank" href="index.php?quanly=lichsudonhang">lịch sử đơn hàng</a> để xem chi tiết đơn hàng của bạn</p>