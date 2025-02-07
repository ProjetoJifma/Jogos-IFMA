<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contato Concluído</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: url('IMG/img.png') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            text-align: center;
            background-color: rgba(0, 0, 0, 0.9);
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color:rgb(223, 221, 221);
        }
        p {
            font-size: 16px;
            color:rgb(197, 188, 188);
        }
        button {
            background-color:rgb(112, 108, 108);
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 8px;
            cursor: pointer;
            margin-top: 20px;
        }
        button:hover {
            background-color:rgba(39, 96, 143, 0.75);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Contato Concluído!</h1>
        <p>Obrigado por entrar em contato. Responderemos em breve.</p>
        <button onclick="redirectToHome()">Voltar à Página Inicial</button>
    </div>

    <script>
        function redirectToHome() {
            window.location.href = 'index.php';
        }
    </script>
</body>
</html>

<!-- PHP Example for Form Submission -->
<!-- Save this part in a separate PHP file (e.g., contact-handler.php) -->
<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Process contact form submission
    $name = htmlspecialchars($_POST['name']);
    $email = htmlspecialchars($_POST['email']);
    $message = htmlspecialchars($_POST['message']);

    // Here, you can add code to store the message in a database or send an email

    // Redirect to the "Contato Concluído" page
    header('Location: contato-concluido.php');
    exit();
}
?>
