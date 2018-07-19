<?php
session_start();
include_once("index.html");
include_once("conexao.php");
$logar 				= $_POST["logar"];
$senha 				= $_POST["senha"];
$nome 			    = $_POST["nome"];
$lanc 				= $_POST["lanc"];
$dev 	            = $_POST["dev"];
$quant	            = $_POST["quant"];
$query = mysql_query("UPDATE jogos set logar ='$logar', senha = '$senha', nome = '$nome', lanc = '$lanc', dev = '$dev',quant = '$quant', modified = NOW() WHERE id='$id'");
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
				<META HTTP-EQUIV=REFRESH CONTENT = '0;URL=http://localhost/loja/adm/administrativo.php?link=2'>
				<script type=\"text/javascript\">
					alert(\"Usuário editado com Sucesso.\");
				</script>
			";		   
		}
		 else{ 	
				echo "
				<META HTTP-EQUIV=REFRESH CONTENT = '0;URL=http://localhost/loja/adm/administrativo.php?link=2'>
				<script type=\"text/javascript\">
					alert(\"Usuário não foi editado com Sucesso.\");
				</script>
			";		   

		}

		?>
	</body>
</html>