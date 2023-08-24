<?php require_once("config.php") ?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/update_style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <title>Update Requests</title>

</head>

<body>
    <div class="main">
        <div class="header">
            <div class="banner">Update request</div>
            <div class="back"><a href="index.php"><i class="fa-solid fa-chevron-left"></i> go back</a></div>
        </div>


        <div class="form">
        <?php
        
            $id=$_GET['id'];
            $select_query = "SELECT * FROM info WHERE id='$id'";

            $data = mysqli_query($conn, $select_query);
            $row = mysqli_fetch_assoc($data);
            $name = $row['name'];
            $image = $row['image'];
            $location = $row['location'];
            $phone = $row['phone'];
            $cv = $row['cv'];
        ?>
            <form method="post" >
                
                <div><label for="name" class="label" >Name</label>
                    <input type="text" id="name" class="input" name="name"value="<?php echo $name ?>" required>
                </div>

                <div><label for="location" class="label" >Location</label>
                    <input type="text" id="location" class="input" name="location"value="<?php echo $location ?>" required>
                </div>

                <div>
                    <label for="phone" class="label" >Phone</label>
                    <input type="tell" id="phone" name="phone" class="input" maxlength="15"value="<?php echo $phone ?>" required></div>

                <div><label for="image" class="label">Image</label>
                <div id="inputs">
                    <input type="file" accept="jpg,png,jpeg" id="image" name="image" class="input" style="display: none;" />
                    <input type="button" value="upload image" onclick="document.getElementById('image').click();" />
                    </div>
                </div>

                <div><label for="cv" class="label">CV</label>
                    <div id="inputs">
                    <input type="file"accept="pdf,docx" id="cv" name="cv" class="input" style="display: none;" />
                    <input type="button" value="upload cv" onclick="document.getElementById('cv').click();" />
                    </div>
                </div>

                <div id="btn"><input type="submit" name="submit" value="Update"></div>
            </form>

        </div>
        <?php
        if (isset($_POST['submit'])) {

            $name = $_POST['name'];
            $image = $_POST['image'];
            $location = $_POST['location'];
            $phone = $_POST['phone'];
            $cv = $_POST['cv'];


            $update_query = "UPDATE info SET name='$name',image='$image',location='$location',phone='$phone',cv='$cv' WHERE id='$id'";

            $data = mysqli_query($conn, $update_query);
            if ($update_query) {
                header("location:index.php");
            } else {
                echo "there is something wrong!";
            }
        }
        ?>

    </div>

</body>

</html>