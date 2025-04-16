<?php
session_start();
include 'db_connection.php';

$result = "";

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $scores = [
        "Modern" => 0,
        "Spongebob" => 0,
        "Conversation Pit" => 0,
        "Minimalist" => 0
    ];

    $questions = ['q1', 'q2', 'q3', 'q4'];

    foreach ($questions as $q) {
        if (isset($_POST[$q])) {
            $choice = $_POST[$q];
            if (array_key_exists($choice, $scores)) {
                $scores[$choice]++;
            }
        }
    }

    $maxScore = max($scores);
    $topCategories = array_keys($scores, $maxScore);

    $descriptions = [
        "Modern" => "You are a Modern Living Room!",
        "Spongebob" => "You are a Spongebob Living Room!",
        "Conversation Pit" => "You are a Conversation Pit Living Room",
        "Minimalist" => "You are a Minimalist Living Room!"
    ];

    if (count($topCategories) > 1) {
        $result = "You have traits from multiple types: " . implode(", ", $topCategories);
    } else {
        $key = $topCategories[0];
        $result = $descriptions[$key];
    }

    // Save answer if user is logged in
    if (isset($_SESSION['user_id'])) {
        $user_id = $_SESSION['user_id'];
        $quiz_id = 1; // hardcoded quiz ID from quizzes table
        $result = $result;

        $stmt = $conn->prepare("INSERT INTO quiz_answers (user_id, quiz_id, result) VALUES (?, ?, ?)");
        $stmt->bind_param("iis", $user_id, $quiz_id, $result);
        $stmt->execute();
    }
}

?>
<!DOCTYPE html>
<html>
<head><title>Quiz</title></head>
<body>
<?php if (isset($_SESSION['user_id'])): ?>
    <p>Welcome back!</p>
<?php else: ?>
    <p>You're taking the quiz as a guest. <a href="login.php">Log in</a> to save your results.</p>
<?php endif; ?>

    <h2>Living Room Personality Quiz</h2>

    <?php if ($_SERVER['REQUEST_METHOD'] == 'POST'): ?>
        <h3>Your Result:</h3>
        <p><?php echo $result; ?></p>
        <a href="quiz.php">Take it again</a>
    <?php else: ?>
        <form method="POST" action="quiz.php">
            <p>1. What is your dream job?</p>
            <label><input type="radio" name="q1" value="Modern"> Influencer</label><br>
            <label><input type="radio" name="q1" value="Spongebob"> Flipping Burgers</label><br>
            <label><input type="radio" name="q1" value="Conversation Pit"> Milkman</label><br>
            <label><input type="radio" name="q1" value="Minimalist"> Receptionist</label><br>

            <p>2. What is your go to outfit?</p>
            <label><input type="radio" name="q2" value="Modern"> Baggy Jeans</label><br>
            <label><input type="radio" name="q2" value="Spongebob"> Short Sleeve Shirt</label><br>
            <label><input type="radio" name="q2" value="Conversation Pit"> Bell Bottoms</label><br>
            <label><input type="radio" name="q2" value="Minimalist"> Plain White Tee</label><br>

            <p>3. Dream House?</p>
            <label><input type="radio" name="q3" value="Modern"> White and Square</label><br>
            <label><input type="radio" name="q3" value="Spongebob"> A Pineapple</label><br>
            <label><input type="radio" name="q3" value="Conversation Pit"> Retro</label><br>
            <label><input type="radio" name="q3" value="Minimalist"> Brown Siding</label><br>

            <p>4. Favorite movie?</p>
            <label><input type="radio" name="q4" value="Modern"> Everything Everywhere All At Once</label><br>
            <label><input type="radio" name="q4" value="Spongebob"> SpongeBob Movie</label><br>
            <label><input type="radio" name="q4" value="Conversation Pit"> The Godfather</label><br>
            <label><input type="radio" name="q4" value="Minimalist"> Forrest Gump</label><br>

            <button type="submit">Submit</button>
        </form>
    <?php endif; ?>
</body>
</html>
