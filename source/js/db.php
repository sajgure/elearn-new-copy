<?php $templine = '';
    $lines = file($filename[0]);
    $cnt =  count($lines);
    foreach ($lines as $line) {
        if(substr($line, 0, 2)== '__' || $line == '' || substr($line, 0, 2) == '/*')
            continue;
        $templine .= $line;
        if(substr(trim($line), -1, 1)==';')
        {
            mysqli_query($conn, $templine) or print('Error');
            $templine = '';
        } 
    }
    return True;
?>