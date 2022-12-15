<div class="container">
<?php
	if(isset($_SESSION['id_khachhang'])){
?>
  <!-- Responsive Arrow Progress Bar -->
  <div class="arrow-steps clearfix">
    <div class="step done"> <span> <a href="index.php?quanly=giohang">Giỏ Hàng</a></span> </div>
    <div class="step done"> <span><a href="index.php?quanly=vanchuyen" >Vận Chuyển</a></span> </div>
    <div class="step  current"> <span><a href="index.php?quanly=thongtinthanhtoan" >Thanh Toán</a><span> </div>
  </div>
  <?php
  }
  ?>
<form action="pages/main/xulythanhtoan.php" method="POST">
<div class="row">
      <?php
      $id_dangky = $_SESSION['id_khachhang'];
      $sql_get_vanchuyen = mysqli_query($mysqli,"SELECT * FROM tbl_shipping WHERE id_dangky='$id_dangky' LIMIT 1");
      $count = mysqli_num_rows($sql_get_vanchuyen);
      if($count>0){
        $row_get_vanchuyen = mysqli_fetch_array($sql_get_vanchuyen);
        $name = $row_get_vanchuyen['name'];
        $phone = $row_get_vanchuyen['phone'];
        $address = $row_get_vanchuyen['address'];
        $note = $row_get_vanchuyen['note'];
      }else{

        $name = '';
        $phone = '';
        $address = '';
        $note = '';
      }
      ?>
    <div class="col-md-8">
      <h4>Thông Tin Vận Chuyển Và Giỏ Hàng</h4>
      <ul>
        <li>Họ và Tên : <b><?php echo $name ?></b></li>
        <li>Số Điện Thoại : <b><?php echo $phone ?></b></li>
        <li>Địa Chỉ : <b><?php echo $address ?></b></li>
        <li>Ghi Chú : <b><?php echo $note ?></b></li>
      </ul>
      <h5>Gio hang cua ban</h5>
            <table style="width:100%;text-align: center;border-collapse: collapse;" border="1">
        <tr>
          <th>Id</th>
          <th>Mã sp</th>
          <th>Tên sản phẩm</th>
          <th>Hình ảnh</th>
          <th>Số lượng</th>
          <th>Giá sản phẩm</th>
          <th>Thành tiền</th>
      
        </tr>
        <?php
        if(isset($_SESSION['cart'])){
          $i = 0;
          $tongtien = 0;
          foreach($_SESSION['cart'] as $cart_item){
            $thanhtien = $cart_item['soluong']*$cart_item['giasp'];
            $tongtien+=$thanhtien;
            $i++;
        ?>
        <tr>
          <td><?php echo $i; ?></td>
          <td><?php echo $cart_item['masp']; ?></td>
          <td><?php echo $cart_item['tensanpham']; ?></td>
          <td><img src="admincp/modules/quanlysp/uploads/<?php echo $cart_item['hinhanh']; ?>" width="150px"></td>
          <td>
            <a href="pages/main/themgiohang.php?cong=<?php echo $cart_item['id'] ?>"><i class="fa fa-plus fa-style" aria-hidden="true"></i></a>
            <?php echo $cart_item['soluong']; ?>
            <a href="pages/main/themgiohang.php?tru=<?php echo $cart_item['id'] ?>"><i class="fa fa-minus fa-style" aria-hidden="true"></i></a>

          </td>
          <td><?php echo number_format($cart_item['giasp'],0,',','.').'vnđ'; ?></td>
          <td><?php echo number_format($thanhtien,0,',','.').'vnđ' ?></td>
        </tr>
        <?php
          }
        ?>
        <tr>
          <td colspan="8">
            <p style="float: left;">Tổng tiền: <?php echo number_format($tongtien,0,',','.').'vnđ' ?></p><br/>
            <div style="clear: both;"></div>
          </td>

        
        </tr>
        <?php	
        }else{ 
        ?>
        <tr>
          <td colspan="8"><p>Hiện tại giỏ hàng trống</p></td>
        
        </tr>
        <?php
        } 
        ?>
      
      </table>
    </div> 
    <div class="col-md-4 hinhthucthanhtoan">
      <h4>Phương Thức Thanh Toán</h4>
      <div class="form-check">
          <input class="form-check-input" type="radio" name="payment" id="gridRadios1" value="Tiền Mặt" checked>
          <label class="form-check-label" for="gridRadios1">
            Tiền Mặt 
          </label>
        </div>
      <div class="form-check">
        <input class="form-check-input" type="radio" name="payment" id="gridRadios2" value="Chuyển Khoản">
        <label class="form-check-label" for="gridRadios2">
          Chuyển Khoản
        </label>
      </div>
      <!-- <div class="form-check">
        <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="option3">
        <img src="images/paypal2.jpg" height="40" width="60">
        <label class="form-check-label" for="gridRadios3">
          Paypal
        </label> -->
      <!-- </div> -->
      <?php
        $tongtien = 0;
        foreach($_SESSION['cart'] as $key => $value){
          $thanhtien = $value['soluong']*$value['giasp'];
          $tongtien+=$thanhtien;
        }
        $tongtien = round($tongtien/25000)
      ?>
      <input type="hidden" name="" value="<?php echo $tongtien ?>" id="tongtien">
      <div id="paypal-button-container"></div>
      <p style="float: left;">Tổng tiền cần thanh toán <?php echo number_format($tongtien,0,',','.').'USD' ?><p>
      <input type="submit" value="Thanh toán ngay" name="redirect" class="btn btn-danger">
    </div>
  </div>
  </form>
</div>