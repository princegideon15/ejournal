<!-- <body style="background:linear-gradient(0deg,rgb(0, 0, 0,0.8),rgb(0, 0, 0,0.8)),url('<?php echo base_url(); ?>assets/oprs/img/login-3.jpg');"> -->
<body>
  <div class="container" style="margin-top: 10%">
    <div class="row justify-content-center ">
      <div class="col-9 shadow rounded bg-white border">
        <div class="row">
          <div class="col-5 text-center p-5">
            <div class="d-flex justify-content-center">
              <img src="<?php echo base_url("assets/oprs/img/nrcp.png"); ?>" class="img-fluid" height="25%" width="25%">
              <img src="<?php echo base_url("assets/oprs/img/ejicon-07.png"); ?>" class=" img-fluid" height="25%" width="25%">
            </div>
            <hr>
              <h5>NRCP Research Journal</h5>
              <h5>Online Peer Review Sytem</h5>
              </br>
              <h6>Provide the management for online journals and reviewing of manuscripts.</h6>
            <hr>    
          </div>
          <div class="col-7 p-5">
            <?php echo form_open('oprs/login/authenticate'); ?>
              <div class="form-group login">
                <div class="input-group mb-2">
                  <div class="input-group-prepend">
                    <div class="input-group-text"><span class="fa fa-user"></span></div>
                  </div>
                  <input class="form-control form-control-lg" id="usr_username" name="usr_username" type="text" placeholder="Email" value="<?php if (isset($_COOKIE['oprs_cookie_user'])) {echo $_COOKIE['oprs_cookie_user'];}?>" required>
                </div> 
              </div>
              <div class="form-group">
                <div class="input-group mb-2">
                  <div class="input-group-prepend">
                    <div class="input-group-text"><span class="fa fa-lock"></span></div>
                  </div>
                  <input class="form-control form-control-lg" id="usr_password" name="usr_password" type="password" placeholder="Password" value="<?php if (isset($_COOKIE['oprs_cookie_pass'])) {echo $_COOKIE['oprs_cookie_pass'];}?>" required>
                </div>
              </div>
              <div class="form-group text-left">
                <div class="custom-control custom-checkbox">
                  <input type="checkbox" class="custom-control-input" value="1" name="oprs_remember" id="oprs_remember" 
                  <?php if (isset($_COOKIE['oprs_remember_me'])) {
                    echo 'checked';
                  }
                  ?> >
                  <label class="custom-control-label pt-1 text-mute small" for="oprs_remember">Remember me</label>
                </div>
              </div>
              <div class="form-group text-left" id="user_option">
              </div>
              <button type="submit" name="admin_login" value="admin_login" class="btn btn-primary btn-block">Login</button>
              <div class="pt-5 text-center"><a class="text-secondary font-weight-bold small" href="../support/forgot">Forgot Password?</a></div>
              <?php echo form_close(); ?>
            </div>
        </div>
      </div>
    </div>
  </div>