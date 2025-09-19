<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>SAUKYADANA CHATBOT</title>
  <link rel="stylesheet" href="botstyle.css">
  <link rel="icon" type="image/x-icon" href="assets/images/logo.png">
  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

  <style>
    .back-button {
      position: absolute;
      top: 15px;
      left: 15px;
      background-color: purple;
      color: white;
      padding: 10px 15px;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      font-size: 14px;
      font-weight: 500;
      transition: 0.3s ease;
      z-index: 10;
    }
    .back-button:hover {
      background-color: #a600ff;
      transform: scale(1.05);
    }
    .back-button i {
      margin-right: 6px;
    }
  </style>
</head>
<body>

  <!-- Back Button -->
  <button class="back-button" onclick="history.back()">
    <i class="fas fa-arrow-left"></i> Back
  </button>

  <!-- Chatbot Wrapper -->
  <div class="wrapper">
    <div class="title">
      <img src="Logo Large.png" width="35px" alt="logo">
      <span>සෞඛ්‍යදාන Chat Bot</span>
    </div>

    <div class="form">
      <div class="bot-inbox inbox">
        <div class="icon"><i class="fas fa-user"></i></div>
        <div class="msg-header">
          <p>Hello there, how can I help you?</p>
        </div>
      </div>
    </div>  

    <div class="typing-field">
      <div class="input-data">
        <input id="data" type="text" placeholder="Type something here.." required>
        <button id="send-btn">Send</button>
      </div>
    </div>
  </div>

  <script>
    $(document).ready(function(){
      $("#send-btn").on("click", function(){
        let value = $("#data").val();
        if(value.trim() === "") return;

        let msg = `
          <div class="user-inbox inbox">
            <div class="msg-header"><p>${value}</p></div>
          </div>`;
        $(".form").append(msg);
        $("#data").val('');

        // Typing indicator
        let typing = `
          <div class="bot-inbox inbox typing-indicator">
            <div class="icon"><i class="fas fa-user"></i></div>
            <div class="msg-header"><p><span class="dots"></span></p></div>
          </div>`;
        $(".form").append(typing);
        $(".form").scrollTop($(".form")[0].scrollHeight);

        // Ajax call
        $.ajax({
          url: 'message.php',
          type: 'POST',
          data: 'text=' + value,
          success: function(result){
            $(".typing-indicator").remove(); // remove typing indicator
            let reply = `
              <div class="bot-inbox inbox">
                <div class="icon"><i class="fas fa-user"></i></div>
                <div class="msg-header"><p>${result}</p></div>
              </div>`;
            $(".form").append(reply);
            $(".form").scrollTop($(".form")[0].scrollHeight);
          }
        });
      });
    });
  </script>
</body>
</html>
