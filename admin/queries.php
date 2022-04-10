<?php include('../includes/config.php') ?>
<?php include('header.php') ?>
<?php include('sidebar.php') ?>




<div class="table-responsive bg-white">
          <table class="table table-bordered">
            <thead>
              <tr>
                <th>S.No.</th>
                <th>Name</th>
                <th>Email</th>
                <th>Mobile No.</th>
                <th>Query</th>
              </tr>
            </thead>
            <tbody>
            <?php
                      $count = 1;
                      $query = mysqli_query($db_conn, 'SELECT * FROM query');
                      while ($queries = mysqli_fetch_object($query)) {?>
                      <tr>
                        <td><?=$count++?></td>

                        <td><?=$queries->name?></td>
                        <td><?=$queries->email?></td>
                        <td><?=$queries->mobile?></td>
                        <td><?=$queries->query?></td>

                      </tr>

                      <?php } ?>
            </tbody>
          </table>

        </div>









<?php include('footer.php') ?>
