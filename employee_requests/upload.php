<?php 

require_once("config.php");

            $image_name = $_FILES['image']['name'];
            $image_tmp = $_FILES['image']['tmp_name'];
            $image_type = $_FILES['image']['type'];
            $image_size = $_FILES['image']['size'];
            $image_error = $_FILES['image']['error'];
            
            $image_errors = array();
            $allowed_image_extensions= array('jpg','gif','jpeg','png');

            
            $image_name_lowercase = strtolower($image_name);
            $image_exploded = explode('.',$image_name_lowercase);
            $image_extensions = end($image_exploded);
           
           
            // CHECK File is Uploaded

            if($image_error == 4):

                $image_errors[] = '<div>Image is not Uploaded</div>';


            else:
                 // Check file Extension
                if(! in_array($image_extensions,$allowed_image_extensions)):

                    $image_errors[] = '<div>Image is not Valid</div>';

                endif;
                
                // CHECK File Size
                if($image_size > 
                1048576):

                $image_errors[] = '<div>Image Can\'t be More Than 1MB</div>';

                endif;

            endif;
           
            /* -------  cv upload to database -------- */

            $file = $_FILES['cv'];
            $file_name = $_FILES['cv']['name'];
            $file_tmp = $_FILES['cv']['tmp_name'];
            $file_type = $_FILES['cv']['type'];
            $file_size = $_FILES['cv']['size'];
            $file_error = $_FILES['cv']['error'];

            $file_errors = array();
            $allowed_file_extensions= array('pdf','docx');
            $file_name_lowercase = strtolower($file_name);
            $file_exploded = explode('.', $file_name_lowercase);
            $file_extensions = end( $file_exploded);

            // CHECK File is Uploaded

            if($file_error == 4):

                $file_errors[] = '<div>CV is not Uploaded</div>';


            else:
                 // Check file Extension
                if(! in_array($file_extensions,$allowed_file_extensions)):

                    $file_errors[] = '<div>File is not Valid</div>';

                endif;
                
                // CHECK File Size
                if($file_size > 2097152):

                $file_errors[] = '<div>CV Can\'t be More Than 2MB</div>';

                endif;

                
            endif;
            
           


?>