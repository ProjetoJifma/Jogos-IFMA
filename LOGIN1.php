<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="css/styleLOGIN1.css">
    <title>Moder Login Page</title>
</head>
<body>
    <style>
        body{
            background-image: url(IMG/IMGcontato.png);
            background-repeat: no-repeat;
            background-position: right 0;
            background-size: cover;
        }
    </style>
    <div class="container" id="container">
        <div class="form-container sing-up">
            <form>
            <img src="IMG/logodosite.png" alt="logo do site" width="115px">
                <h1>Criar Conta</h1>
                <div class="social-icons">
                    <a href="#" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
                </div>
                <span>Registre um e-mail!</span>
                <input type="text" placeholder="Name">
                <input type="e-mail" placeholder="Email">
                <input type="password" placeholder="Senha">
                <button><a href="paginaPRINCIPAL.php">Criar Conta</a></button>
            </form>
        </div>
        <div class="form-container sing-in">
            <form>
            <img src="IMG/logodosite.png" alt="logo do site" width="115px">
                <h1>Fazer Login</h1>
                <div class="social-icons">
                    <a href="#" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
                </div>
                <span>Use um e-mail já registrado!</span>
                <input type="e-mail" placeholder="Email">
                <input type="password" placeholder="Senha">
                <a href="#">Esqueceu sua senha?</a>
                <button><a href="paginaPRINCIPAL.php">Fazer Login</a></button>
            </form>
        </div>
        <div class="toggle-container">
            <div class="toggle">
                <div class="toggle-panel toggle-left">
                    <h1>Bem vindo ao JIFMA!</h1>
                    <p>insira seus dados pessoais para usar todos os recursos do site.</p>
                    <button class="hidden" id="login">Fazer Login</button>
                </div>
                <div class="toggle-panel toggle-right">
                    <h1>Olá, Amigo(a)!</h1>
                    <p>Registre seus dados pessoais para usar todos os recursos do site.</p>
                    <button class="hidden" id="register">Criar Conta</button>
                </div>
            </div>
        </div>
    </div>
    <script src="JS/scriptLOGIN1.js"></script>
</body>
</html>