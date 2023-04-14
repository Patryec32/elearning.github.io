<?php
	require_once('app/core/ConexionDB.php');
	class Usuario extends ConexionPDO{
		//Atributos
		public $mail;
		public $password;
		public $usetype;
		public $nombrecompleto;
		//metodos
		public function loguear($mail, $password){
			$this->query = "SELECT login.mail, login.password 
							FROM login
							WHERE login.mail= :mail AND login.password= :password";							
			$this->obtenerRows(array(
				':mail' => $mail,
				':password' => $password
			));
			return $this->rows; 
		}

		public function guardar(){
			$this->query ="INSERT INTO login(mail,password,usetype)
						   VALUES(:mail,:password,:usetype)";
			$this->ejecutar(array(
				':mail'=>$this->mail,
				':password'=>$this->password,
				':usetype'=>$this->usetype
			));
			
			$this->query ="INSERT INTO usuario(nombrecompleto, mail) 
						   			 VALUES(:nombrecompleto, :mail)";
			$this->ejecutar(array(
				':nombrecompleto'=>$this->nombrecompleto,
				':mail'=>$this->mail,
			));
		}

		public function actualizar(){
			$this->query ="UPDATE login 
						   SET password=:password
						   WHERE mail=:mail";
			$this->ejecutar( array(
				':mail'=>$this->mail,
				':password'=>$this->password,
			));
		}
	}
?>