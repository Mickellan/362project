<?php
session_start();
$conn = new mysqli("localhost", "root", "password", "quizdb");
$user_id = $_SESSION['user_id'];

$result = $conn->query("SELECT quizzes.title, results.score, results.result_text, results.taken_at 
                        FROM results 
                        JOIN quizzes ON results.quiz_id = quizzes.id 
                        WHERE user_id = $user_id");

echo "<h2>Your Quiz History</h2>";
while ($row = $result->fetch_assoc()) {
    echo $row['title'] . " | Score: " . $row['score'] . " | " . $row['result_text'] . " | Taken on: " . $row['taken_at'] . "<br>";
}
?>
