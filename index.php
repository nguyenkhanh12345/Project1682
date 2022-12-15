<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

	<link rel="stylesheet" type="text/css" href="css/style.css">

	<title>Web Trái Cây</title>
	
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<?php
				session_start();
				include("admincp/config/config.php");
				include("pages/header.php");
				include("pages/menu.php");
				include("pages/main.php");
				include("pages/footer.php");
			?>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
</body>
<script type="text/javascript">
	$(document).ready(function() {

var back = $(".prev");
var next = $(".next");
var steps = $(".step");

next.bind("click", function() {
  $.each(steps, function(i) {
	if (!$(steps[i]).hasClass('current') && !$(steps[i]).hasClass('done')) {
	  $(steps[i]).addClass('current');
	  $(steps[i - 1]).removeClass('current').addClass('done');
	  return false;
	}
  })
});
back.bind("click", function() {
  $.each(steps, function(i) {
	if ($(steps[i]).hasClass('done') && $(steps[i + 1]).hasClass('current')) {
	  $(steps[i + 1]).removeClass('current');
	  $(steps[i]).removeClass('done').addClass('current');
	  return false;
	}
  })
});

})
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
<script src="https://www.paypal.com/sdk/js?client-id=AR631-wadfaFljH-dY84IYWrPaOpGMKAj8vXgF5UY8d7L8PwgTStUYZAR4FJx5SwupF-4QAl0q03FQYo&currency=USD"></script>
<script>
      paypal.Buttons({
        // Sets up the transaction when a payment button is clicked
        createOrder: (data, actions) => {
			var tongtien = document.getElementById('tongtien').value;
          return actions.order.create({
            purchase_units: [{
              amount: {
                value: tongtien // Can also reference a variable or function
              }
            }]
          });
        },
        // Finalize the transaction after payer approval
        onApprove: (data, actions) => {
          return actions.order.capture().then(function(orderData) {
            // Successful capture! For dev/demo purposes:
            console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));
            const transaction = orderData.purchase_units[0].payments.captures[0];
            alert(`Transaction ${transaction.status}: ${transaction.id}\n\nSee console for all available details`);
			window.location.replace ('http://localhost/webbanhoaqua/index.php?quanly=camon&thanhtoan=paypal');
            // When ready to go live, remove the alert and show a success message within this page. For example:
            // const element = document.getElementById('paypal-button-container');
            // element.innerHTML = '<h3>Thank you for your payment!</h3>';
            // Or go to another URL:  actions.redirect('thank_you.html');
          });
        },
		onCancel:function(data){
			window.location.replace ('http://localhost/webbanhoaqua/index.php?quanly=thongtinthanhtoan');
		}
      }).render('#paypal-button-container');
    </script>
</html>