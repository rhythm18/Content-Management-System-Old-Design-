
<section class="section wb">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
                        <div class="page-wrapper">
                            <div class="blog-title-area">
                                <ol class="breadcrumb hidden-xs-down">
                                   
<?php 
        $id=$_GET['aid'];
        $sql="select * from articles where art_id='$id'";
        $rsArt=mysqli_query($conn,$sql);
        $rowArt=mysqli_fetch_array($rsArt);
        $sql="select cat_name from category where cat_id=".$rowArt['cat_id'];
        $catName=ReturnAnyValue($conn,$sql);
        $sql="select first_name from users where user_id=".$rowArt['user_id'];
        $uName=ReturnAnyValue($conn,$sql);

        if($rowArt['user_id']==0)
        {
            $sql="select name from admin where admin_id=1";
            $uName=ReturnAnyValue($conn,$sql);
        }
        
        $sql="update articles set views=views+1 where art_id='$id'";
        mysqli_query($conn,$sql);
?>
         <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item"><a href="#"><?php echo $catName;?></a></li>
                                    <li class="breadcrumb-item active"><?php echo $rowArt['title'];?></li>
                                </ol>

                                <span class="color-aqua"><a href="#" title=""><?php echo $catName;?></a></span>

                                <h3><?php echo $rowArt['title'];?></h3>

                                <div class="blog-meta big-meta">
                                    <small><a href="#" title=""><?php echo $rowArt['post_date'];?></a></small>
                                    <small><a href="#" title=""><?php echo $uName;?></a></small>
                                    <small><a href="#" title=""><i class="fa fa-eye"></i><?php echo $rowArt['views'];?></a></small>
                                </div><!-- end meta -->

                                <div class="post-sharing">
                                    <ul class="list-inline">
                                      

                                        <li><a href="https://twitter.com/share?url=betechnical.in/show-article.php?aid=<?php echo $id;?> &amp;text=<?php echo $rowArt['title'];?>&amp;hashtags=<?php echo $rowArt['tags'];?>" target="_blank"><img src="images/twitter.png" height="35" width="35"></a></li>
                                    
                                    <li><a href="http://www.facebook.com/share.php?u=betechnical.in/show-article.php?aid=<?php echo$id;?>" target="_blank"><img src="images/facebook.jpeg" height="35" width="35"></a></li>

                                     <li><a href="http://www.linkedin.com/shareArticle?mini=true&amp;url=betechnical.in/show-article.php?aid=<?php echo $id;?>" target="_blank"  title="Linkedin"><img src="images/linkedin.jpeg" height="35" width="35"></a></li>

                                    <li><a href="https://web.whatsapp.com/send?text=betechnical.in/show-article.php?aid=<?php echo $id;?>" target="_blank"><img src="images/whatsapp.jpeg" height="35" width="35"></a></li>

                                 </ul>
                             </div>
                                    

                            <div class="single-post-media">
                                <img src="uploads/<?php echo $rowArt['pic1'];?>" alt="" class="img-fluid">
                            </div><!-- end media -->

                            <div class="blog-content">  
                                <div class="pp">
                                    <p><?php echo $rowArt['details'];?> </p>
                                    <?php
                                        if($cnt==0)
                                            {
                                                ?>
                                    <div id="myDIV"><a href="getpt.php?aid=<?php echo $id;?>">Get Points</div>

                                            <?php
                                            }
                                        ?>
                                      <!--    <button type="button" class="btn btn-warning">Warning</button>-->


                                

                                </div><!-- end pp -->

                                </div><!-- end content -->

                            <div class="blog-title-area">
                                <div class="tag-cloud-single">
                                    <span>Tags</span>
                                    <small><?php echo $rowArt['tags'];?></small>
                                    
                                </div><!-- end meta -->

                                <div class="post-sharing">
                                    <ul class="list-inline">

                                          <li><a href="https://twitter.com/share?url=betechnical.in/show-article.php?aid=<?php echo $id;?> &amp;text=<?php echo $rowArt['title'];?>&amp;hashtags=<?php echo $rowArt['tags'];?>" target="_blank"><img src="images/twitter.png" height="35" width="35"></a></li>
                                    
                                          <li><a href="http://www.facebook.com/share.php?u=betechnical.in/show-article.php?aid=<?php echo$id;?>" target="_blank"><img src="images/facebook.jpeg" height="35" width="35"></a></li>

                                          <li><a href="http://www.linkedin.com/shareArticle?mini=true&amp;url=betechnical.in/show-article.php?aid=<?php echo $id;?>" target="_blank"  title="Linkedin"><img src="images/linkedin.jpeg" height="35" width="35"></a></li>

                                         <li><a href="https://web.whatsapp.com/send?text=betechnical.in/show-article.php?aid=<?php echo $id;?>" target="_blank"><img src="images/whatsapp.jpeg" height="35" width="35"></a></li>
                                    </ul>
                                </div><!-- end post-sharing -->
                            </div><!-- end title -->
                        </div>

                        <script type="text/javascript">

                            function funtime()
                        {   
                            document.getElementById("myDIV").style.display="none";
                            setTimeout(function()
                            {
                            document.getElementById("myDIV").style.display="block";
                            }, 30000);
                        }

                            function hideButton()
                            {
                                 document.getElementById("myDIV").style.display="none";

                            }
                        </script>

                            