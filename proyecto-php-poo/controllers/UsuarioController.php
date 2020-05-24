<?php

require_once 'models/usuario.php';

class UsuarioController
{
    public function index()
    {
        echo "controlador Usuario Accion index";
    }

    public  function registro()
    {
        require_once 'views/usuario/registro.php';
    }
    public function save()
    {
        if (isset($_POST)) {
            $nombre = isset($_POST['nombre']) ? $_POST['nombre'] : false;
            $apellidos = isset($_POST['apellidos']) ? $_POST['apellidos'] : false;
            $email = isset($_POST['email']) ? $_POST['email'] : false;
            $password = isset($_POST['password']) ? $_POST['password'] : false;


            if ($nombre && $apellidos && $email && $password) {
                $usuario = new Usuario();
                $usuario->setNombre($nombre);
                $usuario->setApellidos($apellidos);
                $usuario->setEmail($email);
                $usuario->setPassword($password);

                $save = $usuario->save();
                if ($save) {
                    $_SESSION['register'] = "complete";
                } else {
                    $_SESSION['register'] = "failed";
                }
            } else {
                $_SESSION['register'] = "failed";
            }
        } else {
            $_SESSION['register'] = "failed";
        }
        header("Location:" . base_url . 'usuario/registro');
    }

    public function login()
    {
        if (isset($_POST)) {
            // identificar al usuario

            // consulta a la base de datos
            $usuario = new Usuario();
            $usuario->setEmail($_POST['email']);
            $usuario->setPassword($_POST['password']);

            $identify = $usuario->login();

            if ($identify && is_object($identify)) {
                $_SESSION['identify'] = $identify;

                if ($identify->rol == 'admin') {
                    $_SESSION['admin'] = true;
                }
            } else {
                $_SESSION['error_login'] = 'Identificacion Fallida';
            }
            // crear una sesion
        }
        header("Location:" . base_url);
    }


    public  function  logout()
    {
        if (isset($_SESSION['identify'])) {
            unset($_SESSION['identify']);
        }
        if (isset($_SESSION['admin'])) {
            unset($_SESSION['admin']);
        }
        header("Location:" . base_url);
    }
}
