<?php

$host = "sql211.infinityfree.com";
$usuario = "if0_41940829";
$senha = "16MjanD2009";
$banco = "if0_41940829_loja_db";

$conexao = mysqli_connect($host, $usuario, $senha, $banco);

if (!$conexao) {
    die("Erro na conexão: " . mysqli_connect_error());
}

echo "Conexão realizada com sucesso!";

?>