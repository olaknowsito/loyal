<?php 
	Class ConnectDb {
		private $con;

		public function dbConnection() {
			$this->con = mysqli_connect("localhost", "root", "", "pointsystem");
			return $this->con;
		}
	}


?>