<?php
// Database configuration
$host = 'localhost';
$dbname = 'your_database_name';
$username = 'your_username';
$password = 'your_password';

try {
    // Create a new PDO instance
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Query to fetch data from a table
    $query = 'SELECT * FROM your_table_name';
    $stmt = $pdo->query($query);

    // Fetch and display the data
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        echo 'Row: ' . json_encode($row) . PHP_EOL;
    }
} catch (PDOException $e) {
    // Handle connection errors
    echo 'Connection failed: ' . $e->getMessage();
}
?>
