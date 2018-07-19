<?php
class Cafe{
	private $logar;
	private $senha;
	private $nome;
	private $lanc;
	private $dev;
	private $quant;	

	public function consulta($id){
		$dao = new Dao();
		
		$array = array(":logar"=>$id);

		$resultado = $dao->select("SELECT * FROM jogos WHERE id = :logar", $array);
		if(count($resultado)>0){
			$logar = $resultado[0];

			$this->setLogar($logar['login']);
			$this->setSenha($logar['senha']);
			$this->setNome($logar['nome']);
			$this->setLanc($logar['lanc']);
			$this->setDev($logar['dev']);
			$this->setQuant($logar['quant']);
		}
		
	}

	public function getIdCafe(){
		return $this->idCafe;
	}
	public function setIdCafe($value){
		$this->idCafe = $value;
	}
	public function getNome(){
		return $this->nome;
	}

	public function setNome($value){
		$this->nome = $value;
	}
	public function getTorra(){
		return $this->torra;
	}

	public function setTorra($value){
		$this->torra = $value;
	}
	public function getRegiao(){
		return $this->regiao;
	}

	public function setRegiao($value){
		$this->regiao = $value;
	}

	public function __toString(){
		return json_encode(array(
			"id"=>$this->getIdCafe(),
			"nome"=>$this->getNome(),
			"torra"=>$this->getTorra(),
			"regiao"=>$this->getRegiao()));	
	}
}
?>