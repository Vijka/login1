<?php
session_start();

// Izdzēš visas sesijas vērtības
session_unset();

// Iznīcina sesiju
session_destroy();

// Pāradresē uz galveno lapu
header("Location: index.php");
exit();
?>
