<?php
include("header.php");
if(isset($_POST['submit']))
{$newpass=md5($_POST['npass']);
	$oldpass=md5($_POST['opass']);
	$sql = "UPDATE employee SET password='$newpass' WHERE employee_id='$_SESSION[employee_id]' AND password='$oldpass'";
	$qsql = mysqli_query($con,$sql);
	echo mysqli_error($con);
	if(mysqli_affected_rows($con) == 1)
	{
		echo "<script>alert('employee password changed successfully..');</script>";
	}
	else
	{
		echo "<script>alert('Failed to Change password..');</script>";
	}
}
?>           <div class="content-wraper mt-50">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3"></div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="customer-login-register">
<!-- banner -->
	<div class="banner">
		<?php
		include("sidebar.php");
		?>
		<div class="w3l_banner_nav_right">
<!-- about -->
		<div class="privacy about">
			<h3>Change Employee Password</h3>

			<div class="checkout-left">	

				<div class="col-md-8 ">
				<form action="" method="post" onsubmit="return validateform()" class="creditly-card-form agileinfo_form">
									<section class="creditly-wrapper wthree, w3_agileits_wrapper">
										<div class="information-wrapper">
											<div class="first-row form-group">

<div class="w3_agileits_card_number_grid_left">
	<div class="controls">
		<label class="control-label">Old password:</label>
		<span id='idopass' style="color:red;"></span>
		<input name="opass" id="opass" class="form-control" type="password" placeholder="Enter old password" >
	</div>
</div>	

<div class="w3_agileits_card_number_grid_left">
	<div class="controls">
		<label class="control-label">New Password:</label>
		<span id='idnpass' style="color:red;"></span>
		<input name="npass" id="npass"class="form-control" type="password" placeholder="Enter New password" >
	</div>
</div>	

<div class="w3_agileits_card_number_grid_left">
	<div class="controls">
		<label class="control-label">Confirm Password:</label>
		<span id='idcpass' style="color:red;"></span>
		<input name="cpass" id="cpass" class="form-control" type="password" placeholder="Confirm New password" >
	</div>
</div>					
											</div>
<button class="submit check_out" type="submit" name="submit">Update Password</button>
										</div>
									</section>
								</form>
									
					</div>
			
				<div class="clearfix"> </div>
				
			</div>

		</div>
<!-- //about -->
		</div>
		<div class="clearfix"></div>
	</div>
<!-- //banner -->

                            </div>
                        </div>
						<div class="col-lg-3 col-md-3 col-sm-3"></div>
					</div>
                </div>
            </div>
<?php
include("footer.php");
?>
<script>
function validateform()
{
	/* #######start 1######### */
	
	
	var alphanumericExp = /^[a-zA-Z0-9]+$/;//Variable to validate only alphanumerics
	
			      
	$("span").html("");
	var i=0;
	/* ########end 1######## */
	
	if(!document.getElementById("opass").value.match(alphanumericExp))
	{
		document.getElementById("idopass").innerHTML ="Old password should contain only alphabets and numbers....";	
		i=1;		
	}
	if(document.getElementById("opass").value == "")
	{
		document.getElementById("idopass").innerHTML ="Old password should not be empty....";	
		i=1;		
	}
	if(!document.getElementById("npass").value.match(alphanumericExp))
	{
		document.getElementById("idnpass").innerHTML ="New password should contain only alphabets and numbers....";		
		i=1;		
	}
	if(document.getElementById("npass").value == "")
	{
		document.getElementById("idnpass").innerHTML ="New password should not be empty....";	
		i=1;		
	}	
	if(document.getElementById("cpass").value != document.getElementById("npass").value )
	{
		document.getElementById("idcpass").innerHTML ="Confirm password Must match with new password..";	
		i=1;		
	}
	if(document.getElementById("cpass").value == "")
	{
		document.getElementById("idcpass").innerHTML ="Confirm Password should not be empty....";	
		i=1;		
	}
	
	
	/* #######start 2######### */
	if(i==0)
	{
		return true;
	}
	else
	{
	return false;
	}
	/* #######end 2######### */
}
</script>