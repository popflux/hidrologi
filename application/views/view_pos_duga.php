<html>
<head>
	<title>Data Pos Duga</title>
</head>
<body>
    <?php
echo anchor('pos_duga', 'Upload lagi');
echo '<br>';
if(!$error){
    foreach($pos_duga as $row){
        echo $row->nama_pos;
        echo '<br/>';
        echo $row->no_pos;
        echo '<br>';
        echo $row->latitude;
        echo '<br/>';
        echo $row->longitude;
        echo '<br>';
        echo $row->lokasi_pos;
        echo '<br/>';
        echo $row->ldp;
        echo '<br>';
        echo $row->catatan;
        echo '<br>';
    }
}
else{
    echo $error;
}
?>
</body>
</html>