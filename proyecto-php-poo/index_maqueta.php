<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tienda Online</title>
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
    <div id="container">
        <!-- Cabecera -->
        <header id="header">
            <div id="logo">
                <img src="assets/img/logo.png" alt=" camiseta logo">
                <a href="index.php">
                    Tienda Online
                </a>
            </div>

        </header>

        <!--Menu -->

        <nav id="menu">
            <ul>
                <li>
                    <a href="#">Inicio</a>
                </li>

                <li>
                    <a href="#">Categoria 1</a>
                </li>

                <li>
                    <a href="#">Categoria 2</a>
                </li>
                <li>
                    <a href="#">Categoria 3</a>
                </li>
                <li>
                    <a href="#">Categoria 4</a>
                </li>

                <li>
                    <a href="#">Categoria 5</a>
                </li>
            </ul>

        </nav>


        <div id="content">
            <!-- Barra Lateral-->

            <aside id="lateral">


                <div id="login" class="block_aside">
                    <h3>Entrar a la web</h3>
                    <form action="" method="post">
                        <label for="email">Email</label>
                        <input type="email" name="email" id="">

                        <label for="password">Password</label>
                        <input type="password" name="password" id="">
                        <input type="button" value="enviar">
                    </form>
                    <ul>
                        <li> <a href="#">Mis pedidos</a></li>
                        <li><a href="#">Gestionar pedidos</a></li>
                        <li> <a href="#">Gestionar categorias</a></li>
                    </ul>

                </div>

            </aside>


            <div id="central">
                <h1>Productos Destacados</h1>

                <div class="product">

                    <img src="assets/img/logo.png" alt="">
                    <h2>Computador iMac</h2>
                    <p>1900 euros</p>
                    <a href="" class="button">Comprar</a>
                </div>

                <div class="product">

                    <img src="assets/img/logo.png" alt="">
                    <h2>Computador iMac</h2>
                    <p>1900 euros</p>
                    <a href="" class="button">Comprar</a>
                </div>

                <div class="product">

                    <img src="assets/img/logo.png" alt="">
                    <h2>Computador iMac</h2>
                    <p>1900 euros</p>
                    <a href="" class="button">Comprar</a>
                </div>

                <div class="product">

                    <img src="assets/img/logo.png" alt="">
                    <h2>Computador iMac</h2>
                    <p>1900 euros</p>
                    <a href="" class="button">Comprar</a>
                </div>
            </div>


            <!-- Contenido Central -->

        </div>


        <!-- Pie de pagina  -->
        <footer id="footer">
            <p>Desarrollado por Manuela Garcia, Camilo Camargo &copy; <?= date('Y') ?></p>
        </footer>
    </div>

</body>

</html>