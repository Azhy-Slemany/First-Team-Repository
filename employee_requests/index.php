<?php require_once("config.php") ?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <title>Employee Requests</title>

</head>

<body>
    <div class="main">
        <div class="header">
            <div class="banner">Employee Requests</div>
            <div class="insertion"><a href="insert.php"><i class="fa-solid fa-plus"></i> Add Request</a></div>
        </div>
        <div class="table">
            <table>
                <thead>
                    <tr class="table-header">
                        <th>Id</th>
                        <th colspan="2">Name</th>
                        <th>Location</th>
                        <th>Phone</th>
                        <th>CV</th>
                        <th colspan="2">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    if (mysqli_connect_error()) {
                        die("Connection Failed" . mysqli_connect_error());
                    }

                    $read_query = "SELECT * FROM info";
                    $data = mysqli_query($conn, $read_query);

                    if ($data->num_rows > 0) {
                        $counter = 1;
                        while ($row = mysqli_fetch_assoc($data)) {
                            $id  =  $row['id'];
                            $name = $row['name'];
                            $image = $row['image'];
                            $location = $row['location'];
                            $phone =  $row['phone'];
                            $cv =  $row['cv'];

                    ?>
                            <tr class="row">
                                <td id="id"><?php echo $counter++; ?></td>

                                <td><img src="<?php if (empty($image)) :
                                                    echo "./image/person.png";
                                                else :
                                                    echo "./uploadedimages/" . $image;
                                                endif; ?>" id="profile_image"></td>
                                <td id="profile_name"><?php echo $name ?></td>
                                <td id="location"><?php echo $location  ?></td>
                                <td id="phone"><?php echo $phone  ?></td>
                                <td id="cv"><a href="<?php echo  "./uploadedfiles/" . $cv;  ?>" download>available</a>
                                </td>
                                <td><a href="update.php?id=<?php echo $id; ?>" class="edit"><i class="fa-solid fa-pen-to-square"></i></a>
                                <td><a href="delete.php?id=<?php echo $id; ?>" class="delete"><i class="fa-solid fa-trash-can"></i></a>
                            </tr>

                    <?php
                        }
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>

</body>

</html>