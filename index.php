<?php include("includes/header.php"); ?>

    <!-- Navigation -->
    <?php include("includes/navigation.php"); ?>


    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <!-- Blog Entries Column -->
            <div class="col-md-8">
                
                <?php

                $per_page = 5;

                isset($_GET['page']) ? $page = $_GET['page'] : $page = '';
                ($page == "" || $page == 1) ? $page_1 = 0 : $page_1 = ($page * $per_page) - $per_page;
                

                $post_count = "SELECT * FROM posts";
                $total_posts = mysqli_num_rows(mysqli_query($connection, $post_count));
                $total_posts = ceil($total_posts / $per_page);


                $query = "SELECT * FROM posts WHERE post_status = 'published' LIMIT $page_1, $per_page";
                $posts_query = mysqli_query($connection, $query);

                if (mysqli_num_rows($posts_query) == 0) {
                    echo "<h3 style='padding: 100px; text-align: center; border: 2px solid grey; '> No Posts</h3>";
                }

                while($row = mysqli_fetch_assoc($posts_query)) {
                    $post_id = $row['post_id'];
                    $post_title = $row['post_title'];
                    $post_author = $row['post_author'];
                    $post_content = substr($row['post_content'], 0, 105) . '...';
                    $post_date = $row['post_date'];
                    $post_image = $row['post_image'];
                    $post_status = $row['post_status'];

                ?>    


<!--                 <h1 class="page-header">
                    Page Heading
                    <small>Secondary Text</small>
                </h1> -->

                <!-- First Blog Post -->
                <!-- <h1><?php echo 'Total Posts: ' . $total_posts ?></h1> -->

                <h2>
                    <a href="post.php?p_id=<?php echo $post_id; ?>"><?php echo $post_title; ?></a>
                </h2>
                <p class="lead">
                    by <a href="author_posts.php?author=<?php echo $post_author; ?>&p_id=<?php echo $post_id; ?>"><?php echo $post_author; ?></a>
                </p>
                <p><span class="glyphicon glyphicon-time"></span> Posted on <?php echo $post_date; ?></p>
                <hr>
                <a href="post.php?p_id=<?php echo $post_id; ?>">
                    <img class="img-responsive" src="images/<?php echo $post_image ?>" alt="">
                </a>
                <hr>
                <p><?php echo $post_content; ?></p>
                <a class="btn btn-primary" href="post.php?p_id=<?php echo $post_id; ?>">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>

                <hr>
    



                <?php } ?> <!-- close the loop -->

            </div>

            <!-- Blog Sidebar Widgets Column -->
            <?php include("includes/sidebar.php"); ?>


        </div>
        <!-- /.row -->

        <hr>
        
        <ul class="pager">
            <?php 
                
                for($i = 1; $i <= $total_posts; $i++) {
                    if($i == $page) {
                        echo "<li><a class='active_link' href='index.php?page={$i}'>{$i}</a></li>";
                    } else { 
                        echo "<li><a href='index.php?page={$i}'>{$i}</a></li>";
                    }
                }

            ?>
        </ul>

<!-- Footer -->
<?php include("includes/footer.php"); ?>

