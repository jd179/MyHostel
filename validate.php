<?php
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $emailid = $_POST['emailid'];
    $password = $_POST['password'];
    $pno = $_POST['pno'];
    
    
        $conn = new mysqli("localhost", "root","", "db");
        if($conn->connect_error){
            die('Connection Failed : '.$conn->connect_error);
        }else{
    
    $stmt = $conn->prepare("insert into dbt1(fname,lname,emailid,password,pno)
            values(?,?,?,?,?)");
            $stmt->bind_param("ssssi",$fname,$lname,$emailid,$password,$pno);
            $stmt->execute(); 
            // echo "Registration Successfully....";
            echo '<script>

     alert("Registered Successfully Please Login ");

      let url = "http://localhost/MyHostel/login.php";
      window.location.href = url;
        </script>';
            $stmt->close();
            $conn->close();
        }
    
?>


