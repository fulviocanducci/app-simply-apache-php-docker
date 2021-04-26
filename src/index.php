<?php
    //phpinfo();

    $pdo = new PDO("mysql:host=mysql;port=3306;dbname=test", "dev", "123456");

    $stmt = $pdo->prepare("SELECT * FROM credit ORDER BY id ASC");
    $stmt->execute();
    $obj = $stmt->fetchAll();
    foreach($obj as $o) 
    {
        echo $o['id'] . ' - ' . $o['description'];
        echo '<br />';
    }