<?php
// check admin session first
$conn = new mysqli("localhost", "root", "password", "quizdb");
$result = $conn->query("SELECT * FROM quizzes");

echo "<h2>All Quizzes</h2>";
while ($row = $result->fetch_assoc()) {
    echo $row['title'] . " - <a href='edit_quiz.php?id=" . $row['id'] . "'>Edit</a> | <a href='delete_quiz.php?id=" . $row['id'] . "'>Delete</a><br>";
}
echo "<a href='add_quiz.php'>Add New Quiz</a>";
?>
