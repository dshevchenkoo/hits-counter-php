<?php 
define('HOST', 'localhost');
define('USER', 'root');
define('PASSWORD', '');
define('DB', 'banner');

$connect = mysqli_connect(HOST, USER, PASSWORD, DB);
if(!$connect) exit('Ошибка подключения к Базе данных');

mysqli_query($connect, "UPDATE counter SET count = count + 1 WHERE id = 1 ");

$count = mysqli_fetch_assoc(mysqli_query($connect, "SELECT count FROM counter WHERE id = 1"));

echo 'Количество просмотров баннера: '.$count['count'];
echo '<p><img src="https://sergey-oganesyan.ru/wp-content/uploads/2013/12/auto.jpg">';
?>