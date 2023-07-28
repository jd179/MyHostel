<?php
include('connection.php');
session_start();
?>

<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>MyHostel</title>
  <link href="https://unpkg.com/tailwindcss@^2.2.7/dist/tailwind.min.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
    crossorigin="anonymous">
    </script>
  <script>
    $(function () {
      $("#footer").load("footer.html");
    });
  </script>
</head>

<body>
<header class="text-gray-600 body-font">
  <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">
    <a href="index.php"class="flex title-font font-medium items-center text-gray-900 mb-4 md:mb-0">
      
      <span>
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
          <path stroke-linecap="round" stroke-linejoin="round" d="M8.25 21v-4.875c0-.621.504-1.125 1.125-1.125h2.25c.621 0 1.125.504 1.125 1.125V21m0 0h4.5V3.545M12.75 21h7.5V10.75M2.25 21h1.5m18 0h-18M2.25 9l4.5-1.636M18.75 3l-1.5.545m0 6.205l3 1m1.5.5l-1.5-.5M6.75 7.364V3h-3v18m3-13.636l10.5-3.819" />
        </svg>
        
      </span>
      <span class="ml-3 text-xl">MyHostel</span>
    </a>
    <?php

    if(isset($_SESSION['username'])){
    
      $useremail = $_SESSION['username'];
     $query="select * from dbt1 where emailid = '$useremail'";  
     $connect=mysqli_query($conn,$query);  
     $num=mysqli_num_rows($connect); //check in database any data have or not
    
    ?>
    <nav class="md:ml-auto flex flex-wrap items-center text-base justify-center">
        <a class="mr-5 hover:text-gray-900" href="index.php">Home</a>
        <a class="mr-5 hover:text-gray-900" href="Hostel&PG.php">Hostels AND PG</a>
        <a class="mr-5 hover:text-gray-900" href="form.php">Reservation</a>
        <a class="mr-5 hover:text-gray-900" href="contact.php">Contact Us</a>
        <a class="mr-5 hover:text-gray-900" href="profile.php"> My Account</a>
        <a class="mr-5 hover:text-gray-900" href="admin.php">Admin</a>
        <a class="mr-5 hover:text-gray-900" href="logout.php">Logout</a>
    </nav>
        
        <?php }
            
            
            else 
            {  ?>
            <nav class="md:ml-auto flex flex-wrap items-center text-base justify-center">
          <a class="mr-5 hover:text-gray-900" href="index.php">Home</a>
          <a class="mr-5 hover:text-gray-900" href="Hostel&PG.php">Hostels AND PG</a>
          
          <a class="mr-5 hover:text-gray-900" href="contact.php">Contact Us</a>
          <a class="mr-5 hover:text-gray-900" href="login.php">Login</a>
          
          <a href="signup.php"><button class="inline-flex items-center bg-gray-100 border-0 py-1 px-3 focus:outline-none hover:bg-gray-200 rounded text-base mt-4 md:mt-0">Sign Up
            <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-1" viewBox="0 0 24 24">
              <path d="M5 12h14M12 5l7 7-7 7"></path>
            </svg>
            </button></a>
          <?php  }?>

  </div>
</header>
<center>
<table>
    <?php 
    $sql = mysqli_query($conn,"select * from `dbt1` where `type` = 'admin'");
    $count = mysqli_num_rows($sql); 
    if($count > 0){
        ?>
        <th>Id</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Password</th>
        <th>Phone Number</th>
    <?php
    $i = 1;
    while($row = mysqli_fetch_array($sql)){ 
    ?>
    <tr>
        <td><?php echo $i++; ?></td>   
        <td><?php echo $row['fname']; ?></td>
        <td><?php echo $row['lname']; ?></td>
        <td><?php echo $row['emailid']; ?></td>
        <td><?php echo $row['password']; ?></td>
        <td><?php echo $row['pno']; ?></td>
    </tr>
    <?php } ?>
    <?php }else { ?>
    <h1>Data Not Found</h1>
    <?php } ?>
</table>
    </center>
<div id="footer"></div>
</body>

</html>