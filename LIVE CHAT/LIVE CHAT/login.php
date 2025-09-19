<?php 
  session_start();
  if(isset($_SESSION['unique_id'])){
    header("location: users.php");
  }
?>

<?php include_once "header.php"; ?>
<style>
  body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-image: url("php/images/bggg.jpg");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
  }

  .wrapper {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 48vh;
    background-color: rgba(0, 0, 0, 0.63); 
  }

  .form.login {
    background: rgba(255, 255, 255, 0.9);
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.3);
    width: 350px;
  }

  .form.login header {
    font-size: 22px;
    font-weight: bold;
    text-align: center;
    margin-bottom: 20px;
    color: #333;
  }

  .field {
    margin-bottom: 15px;
  }

  .field label {
    font-size: 14px;
    color: #444;
  }

  .field input {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    border-radius: 5px;
    border: 1px solid #ccc;
    font-size: 14px;
  }

  .field input:focus {
    border-color: #4CAF50;
    outline: none;
  }

  .field.button input {
    background-color: #4CAF50;
    color: white;
    border: none;
    cursor: pointer;
    font-size: 15px;
    transition: 0.3s;
  }

  .field.button input:hover {
    background-color: #45a049;
  }

  .link {
    text-align: center;
    font-size: 14px;
    margin-top: 10px;
  }

  .link a {
    color: #4CAF50;
    text-decoration: none;
  }

  .link a:hover {
    text-decoration: underline;
  }

  .fas.fa-eye {
    position: absolute;
    right: 15px;
    top: 35px;
    cursor: pointer;
    color: #888;
  }
</style>

<body>
  <div class="wrapper">
    <section class="form login">
      <header>සෞඛ්‍යදාන Live Chat</header>
      <form action="#" method="POST" enctype="multipart/form-data" autocomplete="off">
        <div class="error-text"></div>
        <div class="field input" style="position: relative;">
          <label>Email Address</label>
          <input type="text" name="email" placeholder="Enter your email" required>
        </div>
        <div class="field input" style="position: relative;">
          <label>Password</label>
          <input type="password" name="password" placeholder="Enter your password" required>
          <i class="fas fa-eye"></i>
        </div>
        <div class="field button">
          <input type="submit" name="submit" value="Continue to Chat">
        </div>
      </form>
      <div class="link">Not yet signed up? <a href="index.php">Signup now</a></div>
    </section>
  </div>
  
  <script src="javascript/pass-show-hide.js"></script>
  <script src="javascript/login.js"></script>
</body>
</html>
