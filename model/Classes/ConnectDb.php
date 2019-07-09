<?php 
	Class ConnectDb {
		private $con;

		public function dbConnection() {
			$this->con = mysqli_connect("dyud5fa2qycz1o3v.cbetxkdyhwsb.us-east-1.rds.amazonaws.com", "c4xdyscms3ohn7rp", "ut0yd272ccljs8og", "y08mcqa959t5daxj");
			return $this->con;
		}
	}
?>