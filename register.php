<?php include 'header.php'; 
      include 'navigation.php'; 

      if(isset($_SESSION['user_id'])){
        header('Location:profile.php');
      }
?>
<div class="container-fluid">
  <div class="row">
    <div class="col-sm-6 offset-sm-3">
      <div class="card">
          <div class="card-header text-sm-center">
            Sign Up
          </div>
          <div class="card-body">
            <?php if(isset($_POST['register'])){
              echo $msg;
              }
            ?>
            <form method="post" action="<?php htmlspecialchars('actions.php'); ?>">
              <fieldset>      
                <!-- Text input-->      
                <div class="form-group">
                  <label class="col-md-12 control-label">FullName</label>
                  <div class="col-md-12  inputGroupContainer">
                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                      <input  name="fullname" placeholder="Full Name" value="<?php echo @$_POST['fullname'] ?>"  class="form-control" type="text">
                    </div>
                  </div>
                </div>
                <!-- Text Input -->

                <div class="form-group">
                  <label class="col-md-12 control-label">Username</label>
                  <div class="col-md-12  inputGroupContainer">
                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                      <input name="username" placeholder="Username" value="<?php echo @$_POST['username'] ?>"  class="form-control" type="text">
                    </div>
                  </div>
                </div>
                  <!-- Text input-->
                <div class="form-group">
                  <label class="col-md-12 control-label">E-Mail</label>
                  <div class="col-md-12  inputGroupContainer">
                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                      <input name="email" placeholder="E-Mail Address" class="form-control" value="<?php echo @$_POST['email'] ?>"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" type="email">
                    </div>
                  </div>
                </div>
                
              
                  <div class="form-group has-feedback">
                      <label for="password"  class="col-md-12 control-label">
                              Password
                          </label>
                          <div class="col-md-12  inputGroupContainer">
                          <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                          <input class="form-control" id="userPw" type="password" placeholder="password" name="password"title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
                          <span class="glyphicon form-control-feedback"></span>
                          <span class="help-block with-errors"></span>
                          </div>
                       </div>
                  </div>
               
                  <div class="form-group has-feedback">
                      <label for="confirmPassword"  class="col-md-12 control-label">Confirm Password</label>
                        <div class="col-md-12  inputGroupContainer">
                          <div class="input-group">
                              <input class="form-control {$borderColor}" id="userPw2" type="password" placeholder="Confirm password" name="cpassword" data-match="#confirmPassword" data-match-error="some error 2" required/>
                              <span class="glyphicon form-control-feedback"></span>
                              <span class="help-block with-errors"></span>
                          </div>
                        </div>
                  </div>
                  <div class="form-group">
                    <img src="capt.php"><br><input type="text" name="captcha" placeholder="Type the above captcha" class="mt-3">
                  </div>
                </fieldset>
                <input type="submit" class="btn btn-primary float-sm-right" value="Register" name="register">
              </form>
          </div>
      </div>
    </div>
  </div>
</div>
<?php include 'footer.php'; ?>