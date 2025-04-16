<?php
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit;
}

if ($_SESSION['role'] == 'admin') {
    echo "<h1>Admin Dashboard</h1>";
    echo "<a href='manage_quizzes.php'>Manage Quizzes</a><br>";
    echo "<a href='manage_users.php'>Manage Users</a><br>";
} else {
    echo "<h1>User Dashboard</h1>";
    echo "<a href='index.php'>Take Quizzes</a><br>";
    echo "<a href='history.php'>View History</a><br>";
}
?>
