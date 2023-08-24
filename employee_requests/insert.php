<?php require_once("config.php") ?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/insert_style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <title>Insert Requests</title>

</head>

<body>
    <div class="main">
        <?php
        if (isset($_POST['submit'])) {

            require_once('upload.php');
            $name = $_POST['name'];
            $location = $_POST['location'];
            $phone = $_POST['phone'];

            // Check if file has no errors

            if (empty($image_errors && $file_errors)) :

                $insert_query = "INSERT INTO info(name,image,location,phone,cv) VALUES ('$name','$image_name','$location','$phone','$file_name')";

                $data = mysqli_query($conn, $insert_query);
                move_uploaded_file($image_tmp, $_SERVER['DOCUMENT_ROOT'] . '/crud/uploadedimages/' . $image_name);

                move_uploaded_file($file_tmp, $_SERVER['DOCUMENT_ROOT'] . '/crud/uploadedfiles/' . $file_name);

                header("location:index.php");

            else :
                if (!empty($image_errors)) {
                    foreach ($image_errors as $image_error) :
                        echo "<h3 style='background-color:red;color:white;'>$image_error</h3>";
                    endforeach;
                } elseif (!empty($file_errors)) {
                    foreach ($file_errors as $file_error) :
                        echo " <h3 style='background-color:red; color:white;'>$file_error</h3>";
                    endforeach;
                } else {
                    echo "<h3 style='background-color:aque; color:red;'>there is something wrong!</h3>";
                }

            endif;
        }

        ?>
        <div class="header">
            <div class="banner">insert request</div>
            <div class="back"><a href="index.php"><i class="fa-solid fa-chevron-left"></i> go back</a></div>
        </div>

        <div class="form">
            <form method="post" enctype="multipart/form-data">

                <div><label for="name" class="label">Name</label>
                    <input type="text" id="name" class="input" name="name" required>
                </div>

                <div><label for="location" class="label">Location</label>
                    <input type="text" id="location" class="input" name="location" required>
                </div>

                <div>
                    <label for="phone" class="label">Phone</label>
                    <input type="tell" id="phone" name="phone" class="input" maxlength="15" required></div>

                <div><label for="image" class="label">Image</label>
                <div id="inputs">
                    <input type="file" accept="jpg,png,jpeg" id="image" name="image" class="input" style="display: none;" />
                    <input type="button" value="upload image" onclick="document.getElementById('image').click();" />
                    </div>
                </div>

                <div><label for="cv" class="label">CV</label>
                    <div id="inputs">
                    <input type="file" accept="pdf,docx" id="cv" name="cv" class="input" style="display: none;" />
                    <input type="button" value="upload cv" onclick="document.getElementById('cv').click();" />
                    </div>
                </div>

                <div id="btn"><input type="submit" name="submit" value="insert"></div>

            </form>


        </div>

    </div>

</body>

</html>