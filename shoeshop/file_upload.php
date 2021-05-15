<!DOCTYPE html>
<html>
<head>
	<title>File Upload</title>
</head>
<body>

	<form method="POST" enctype="multipart/form-data">
		<input type="file" name="file_name">
		<input type="submit" name="submit" value="UPLOAD">

		<?php

			if (isset($_POST['submit'])) {
				$dir = "profile/";
				$file = basename($_FILES['file_name']['name']);
				$file_type = strtolower(pathinfo($file, PATHINFO_EXTENSION));
				$target = $dir.uniqid("prof_").".".$file_type;

				if ($file_type == "jpg") {
					//getimagesize(filename)
					// if(file_exists(filename))
					// {
					// 	echo "file exists";
					// }
					// else
					// {
					// }

					if(move_uploaded_file($_FILES['file_name']['tmp_name'], $target))
					{
						echo "file uploaded successfully";
					}
					else
					{
						echo "file uploading error occured";
					}
				}
				else
				{
					echo "invalid file format, file format =". $file_type;
				}

				9745449445 - sreejesh

				
			}

		?>
	</form>

</body>
</html>