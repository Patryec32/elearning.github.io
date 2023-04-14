<?php

$user= 'root';
$pass= '';

$objetoPDO = new PDO('mysql:host=localhost;dbname=sistema_elearning', $user, $pass);

// use the connection here
$stm = $objetoPDO->query('SELECT * FROM login');

// fetch all rows into array, by default PDO::FETCH_BOTH is used
$rows = $stm->fetchAll();

echo('<pre>');
print_r($rows);
echo('</pre>');

// iterate over array by index and by name
foreach($rows as $row) {

    printf("$row[0] $row[1]\n");
}
?>