<?php
session_start();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Personality Quiz Home</title>
    <style>
        body { font-family: Arial; text-align: center; padding: 50px; }
        .button { padding: 10px 20px; margin: 10px; font-size: 16px; }
        .quiz-list { margin-top: 30px; }
        .quiz-item { margin: 10px 0; }
    </style>
</head>
<body>

    <h1>Welcome to the Personality Quiz Site</h1>

    <?php if (isset($_SESSION['user_id']) && isset($_SESSION['username'])): ?>
        <p>Logged in as <strong><?php echo $_SESSION['username']; ?></strong></p>
        <a href="logout.php" class="button">Logout</a>
    <?php else: ?>
        <a href="login/register.php" class="button">Register</a>
        <a href="login/login.php" class="button">Login</a>
    <?php endif; ?>

    <div class="quiz-list">
        <h2>Available Quizzes</h2>
        <div class="quiz-item">
            <a href="quiz.php">Living Room Personality Quiz</a>
        </div>
        <div class="quiz-item">
            <a href="quiz2.php">What Seaon </a>
        </div>
    </div>

</body>
</html>
