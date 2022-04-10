<?php include('../includes/config.php') ?>
<?php
$error = '';
if(isset($_POST['submit']))
{
  $name     = $_POST['name'];
  $email    = $_POST['email'];
  $password = md5(1234567890);
  $type     = $_POST['type'];

  $check_query = mysqli_query($db_conn, "SELECT * FROM accounts WHERE email = '$email'");
  if(mysqli_num_rows($check_query) > 0)
  {
    $error = 'Email already exists';
  }
  else
  {
    mysqli_query($db_conn, "INSERT INTO accounts (`name`,`email`,`password`,`type`) VALUES ('$name','$email','$password','$type')") or die(mysqli_error($db_conn));
    $_SESSION['success_msg'] = 'User has been succefuly registered';
    header('location: user-account.php?user='.$type);
    exit;
  }

}

?>


<?php include('header.php') ?>
<?php include('sidebar.php') ?>
<style>
  /* span#loader {
    position: absolute;
    left: 50;
    width: 100%;
    height: 100%;
    background: #e2e2e2b5;
}

i.fas.fa-circle-notch.fa-spin {
    left: 50%;
    position: absolute;
    top: 50%;
    font-size: 10rem;
    transform: translate(-50%,-50%);
    transform-origin: center;
} */
</style>
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <div class="d-flex">
              <h1 class="m-0 text-dark">Manage Accounts</h1>
              <a href="user-account.php?user=<?php echo $_REQUEST['user'] ?>&action=add-new" class="btn btn-primary btn-sm">Add New</a>
            </div>

          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Accounts</a></li>
              <li class="breadcrumb-item active"><?php echo ucfirst($_REQUEST['user'])?></li>
            </ol>
          </div><!-- /.col -->
          <?php
          // $_SESSION['success_msg'] = 'User has been succefuly registered';
            // print_r($_SESSION);
            if(isset($_SESSION['success_msg']))
            {?>
              <div class="col-12">
                <small class="text-success" style="font-size:16px"><?=$_SESSION['success_msg']?></small>
              </div>
            <?php
              unset($_SESSION['success_msg']);
            }
          ?>
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <?php if(isset($_GET['action']) && $_GET['action']) { ?>
          <div class="card">
          <div class="card-body">
            <form action="" method="POST">
                    <div class="row">
                      <div class="col-lg-12">
                        <div class="form-group">
                          <label for="">Full Name</label>
                          <input type="text" class="form-control" placeholder="Full Name" name="name">
                        </div>
                      </div>
                      <div class="col-lg-4">
                        <div class="form-group">
                          <label for="">DOB</label>
                          <input type="date" required class="form-control" placeholder="DOB" name="dob">
                        </div>
                      </div>
                      <div class="col-lg-4">
                        <div class="form-group">
                          <label for="">Mobile</label>
                          <input type="text" class="form-control" placeholder="Mobile" name="mobile">
                        </div>
                      </div>
                      <div class="col-lg-4">
                        <div class="form-group">
                          <label for="">Email</label>
                          <input type="email" required class="form-control" placeholder="Email Address" name="email">
                        </div>
                      </div>


                <input type="hidden" name="type" value="<?php echo $_REQUEST['user'] ?>">
                <input type="submit" name="submit" class="btn btn-primary" value="Register">

              </form>

            </div>
          </div>
        <?php  } else {?>
        <!-- Info boxes -->
        <div class="table-responsive bg-white">
          <table class="table table-bordered">
            <thead>
              <tr>
                <th>S.No.</th>
                <th>Name</th>
                <th>Email</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
              <?php

              $count =1;
              $user_query = 'SELECT * FROM accounts WHERE `type` = "'.$_REQUEST['user'].'"';
              $user_result = mysqli_query($db_conn , $user_query);
              while ($users = mysqli_fetch_object($user_result))
              {

                ?>
              <tr>
                <td><?=$count++?></td>
                <td><?=$users->name?></td>
                <td><?=$users->email?></td>
                <td></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>

        </div>
        <!-- /.row -->
        <?php } ?>
      </div><!--/. container-fluid -->
    </section>
    <!-- /.content -->

<script>
  // jQuery(document).ready(function(){

  // })

  jQuery('#student-registration').on('submit',function(){
    console.log();
    if(true)
    {
      var formdata = jQuery(this).serialize();

      jQuery.ajax({
        type: "post",
        url: "http://localhost/sms/actions/student-registration.php",
        data: formdata,
        dataType : 'json',
        beforeSend: function(){
          jQuery('#loader').show();
        },
        success: function (response) {
          console.log(response);
          if(response.success == true)
          {
            location.href = 'http://localhost/sms/admin/user-account.php?user=student&action=fee-payment&std_id='+response.std_id+'&payment_method='+response.payment_method;
          }
        },
        complete: function(){
          // jQuery('#loader').hide();
        }
      });
    }
    return false;
  });
</script>
<?php include('footer.php') ?>
