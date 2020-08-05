 <?php include ("header-bar.php"); ?>

        <header class="header" style="background-color: #ca1210;">
            <div class="container bg-white">
                <nav class="navbar navbar-inverse navbar-toggleable-md">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#cloapediamenu" aria-controls="cloapediamenu" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-md-center" id="cloapediamenu">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link color-primary-hover" href="index.php"><b class='text-white' style='font-size: 17px;'>Home</b></a>
                            </li>
                            <?php 
                              
                        $sql="select * from category where cat_on_top=1";
                            $rs1=mysqli_query($conn,$sql);
                            
                            while ($row1=mysqli_fetch_array($rs1))
                            {
                               
                                 $cid=$row1['cat_id'];
                                 $cname=$row1['cat_name'];
                                 echo "<li class='nav-item'>";
                                 echo  "<a class='nav-link color-primary-hover' href=index.php?id=$cid><b class='text-white' style='font-size: 17px;'>$cname</b></a>";
                                 echo "</li>";
                            
                            }

                            if(isset($_SESSION['user_id']))
                            {
                              ?>
                              <li class="nav-item">
                                <a class="nav-link hover" href="user/dashboard.php"><b style="color: #ffff00; font-size: 17px;">Dashboard</b></a>
                            </li>
                                    <li class="nav-item">
                                <a class="nav-link hover" href="user/logout.php"><b style="color: #ffff00; font-size: 17px;">Logout</b></a>
                            </li>
                              <?php
                            }
                          else
                          {
                        ?>
                            
                            <li class="nav-item">
                                <a class="nav-link hover" href="user/user_login.php"><b style="color: #ffff00; font-size: 17px;">Login</b></a>
                            </li>
                             <li class="nav-item">
                                <a class="nav-link color-grey-hover" href="" data-toggle="modal" data-target="#myModal"><b style="color: #ffff00; font-size: 17px;">Register</b></a>
                          <?php
                          }
                      ?>
                                <!-- The Modal -->

  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Write with us...</h4>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
 
  <div class="container">

          <!--Grid row-->
          <div class="row">
        
            <!--Grid column-->
            <div class="col-md-12">
        
              <!--Title--><?php

              if (isset($_GET['refid']))
              {
                  $spid=$_GET['refid'];
              }
             else
             {
                  $spid="";
             }
                          ?>
              
        
              <!--Section: Live preview-->
              <section>
        
                <!-- Default form register -->
                <form method="post" action="reg.php" class="text-center border border-light p-5">
        
        
                  <div class="form-row mb-4">
                    <div class="col">
                      <!-- First name -->
                       <input type="text" name="refid" id="refid" class="form-control mb-4" placeholder="Refered By (Optional)" value="<?php echo $spid;?>" style="margin-bottom: 23px;">
                      <input type="text" name="first_name" id="first_name" class="form-control mb-4" placeholder="First name" style="margin-bottom: 23px;" required="">
                    </div>
                    <div class="col">
                      <!-- Last name -->
                      <input type="text" name="last_name" id="last_name" class="form-control mb-4" placeholder="Last name" required="">

                      <input type="text" name="city" id="city" class="form-control mb-4" placeholder="City" required="">

                      <input type="text" name="mobile" id="mobile" class="form-control" placeholder="Phone number (Optional)" style="margin-bottom: 23px;" aria-describedby="defaultRegisterFormPhoneHelpBlock">

                      <input type="text" name="paytm" id="paytm" class="form-control" placeholder="Paytm number (Optional)" style="margin-bottom: 23px;" aria-describedby="defaultRegisterFormPhoneHelpBlock">

                        <input type="email" name="email" id="email" class="form-control mb-4" placeholder="E-mail" required="">
                        <input type="password" name="user_pass" id="user_pass" class="form-control mb-4" placeholder="Password" style="margin-bottom: 23px;" required="">
                        <input type="password" name="c_user_pass" id="c_user_pass" class="form-control mb-4" placeholder="Confirm Password" style="margin-bottom: 23px;" required="">

                  <!-- Password -->
                  
                  <small class="form-text text-muted mb-4">
                    At least 8 characters and 1 digit
                  </small>
                    </div>
                  </div>
        
                  <!-- E-mail -->
                
        
                  
                 
                  <!-- Sign up button -->
                  <button class="btn btn-info my-4 btn-block waves-effect waves-light" name="submit" type="submit">Sign up</button>
        
                  <hr>
        
                 </form>
                <!-- Default form register -->
        
              </section>
              <!--Section: Live preview-->
        
            </div>
            <!--Grid column-->
        
           
          <!--Grid row-->
        
        </section>

  </div>        </div>
        
        <!-- Modal footer -->
       
      </div>
    </div>
  </div>

                            </li>
                        </ul>
                    </div>
                </nav>
            </div><!-- end container -->
        </header><!-- end header -->
