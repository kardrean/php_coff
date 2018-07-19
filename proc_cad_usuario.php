<?php
session_start();
include_once("../seguranca.php");
include_once("../conexao.php");
$logar 		= $_POST["logar"];
$senha 		= $_POST["senha"];
$nome 	   = $_POST["nome"];
$lanc      = $_POST["lanc"];
$dev 	   = $_POST["dev"];
$quant	   = $_POST["quant"];
$query = mysql_query("INSERT INTO jogos (logar, senha, nome, lanc, dev, quant) VALUES ('$logar', '$senha', '$nome', '$lanc', '$dev',$quant, NOW())");
?>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
	</head>

	<body>
		<?php
		if (mysql_affected_rows() != 0 ){	
			echo "
				<META HTTP-EQUIV=REFRESH CONTENT = '0;URL=http://localhost/loja/adm/listar_usuario.php'>
				<script type=\"text/javascript\">
					alert(\"Usuário cadastrado com Sucesso.\");
				</script>
			";		   
		}
		 else{ 	
				echo "
				<META HTTP-EQUIV=REFRESH CONTENT = '0;URL=http://localhost/loja/adm/listar_usuario.php'>
				<script type=\"text/javascript\">
					alert(\"Usuário não foi cadastrado com Sucesso.\");
				</script>
			";		   

		}

		?>
	</body>
</html>