<?php

//check_admin_login.php

include('admin/database_connection.php');

session_start();

sleep(1);

$student_roll_number = '';
$student_password = '';
$error_student_roll_number = '';
$error_student_password = '';
$error = 0;

if(empty($_POST["student_roll_number"]))
{
	$error_student_roll_number = 'npm is required';
	$error++;
}
else
{
	$student_roll_number = $_POST["student_roll_number"];
}

if(empty($_POST["student_password"]))
{
	$error_student_password = 'Password is required';
	$error++;
}
else
{
	$student_password = $_POST["student_password"];
}

if($error == 0)
{
	$query = "
	SELECT * FROM tbl_student
	WHERE student_roll_number = '".$student_roll_number."'
	";

	$statement = $connect->prepare($query);

	if($statement->execute())
	{
		$total_row = $statement->rowCount();
		if($total_row > 0)
		{
			$result = $statement->fetchAll();
			foreach($result as $row)
			{
				if(password_verify($student_password, $row["student_password"]))
				{
					$_SESSION["student_id"] = $row["student_id"];
				}
				else
				{
					$error_student_password = "Wrong Password";
					$error++;
				}
			}
		}
		else
		{
			$error_student_roll_number = 'Wrong Username';
			$error++;
		}
	}
}

if($error > 0)
{
	$output = array(
		'error'					=>	true,
		'error_student_roll_number'	=>	$error_student_roll_number,
		'error_student_password'	=>	$error_student_password
	);
}
else
{
	$output = array(
		'success'		=>	true
	);	
}

echo json_encode($output);

?>