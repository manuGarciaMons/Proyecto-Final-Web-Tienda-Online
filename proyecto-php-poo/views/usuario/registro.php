<h1>Registrarse</h1>
<link rel="stylesheet" href="assets/css/styles.css">
<?php
if (isset($_SESSION['register']) &&  $_SESSION['register'] == 'complete') : ?>
    <strong style="color: #21b965;">Registro completado correctamente</strong>
<?php elseif (isset($_SESSION['register']) &&  $_SESSION['register'] == 'failed') : ?>
    <strong style="color: crimson;">Registro fallido, Introdución bien los datos</strong>

<?php endif; ?>
<?php Utils::deletesession('register'); ?>


<form action="<?= base_url ?>usuario/save" method="post">

    <label for="nombre ">Nombre</label>
    <input type="text" name="nombre" required>

    <label for="apellidos">Apellidos</label>
    <input type="text" name="apellidos" required>

    <label for="email">Email</label>
    <input type="email" name="email" required>

    <label for="password">Password</label>
    <input type="password" name="password" required>

    <input type="submit" value="Registrarse">


</form>