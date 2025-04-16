<?php
session_start();
include 'db_connection.php';

$result = "";

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $scores = [
        "Summer" => 0,
        "Fall" => 0,
        "Spring" => 0,
        "Winter" => 0
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
        "Summer" => "You're Summer! Bright, energetic, and fun-loving.",
        "Fall" => "You're Fall! Thoughtful, calm, and cozy.",
        "Spring" => "You're Spring! Cheerful, fresh, and full of life.",
        "Winter" => "You're Winter! Quiet, cool, and elegant."
    ];

    if (count($topCategories) > 1) {
        $result = "You share qualities with multiple seasons: " . implode(", ", $topCategories);
    } else {
        $key = $topCategories[0];
        $result = $descriptions[$key];
    }

    if (isset($_SESSION['user_id'])) {
        $user_id = $_SESSION['user_id'];
        $quiz_id = 2; // Set this to match the ID in your quizzes table
        $stmt = $conn->prepare("INSERT INTO quiz_answers (user_id, quiz_id, result) VALUES (?, ?, ?)");
        $stmt->bind_param("iis", $user_id, $quiz_id, $result);
        $stmt->execute();
    }
}
?>

<!DOCTYPE html>
<html>
<head><title>What Season Are You?</title></head>
<body>
<?php if (isset($_SESSION['user_id'])): ?>
    <p>Welcome back!</p>
<?php else: ?>
    <p>You're taking the quiz as a guest. <a href="login.php">Log in</a> to save your results.</p>
<?php endif; ?>

<h2>What Season Are You?</h2>

<?php if ($_SERVER['REQUEST_METHOD'] == 'POST'): ?>
    <h3>Your Result:</h3>
    <p><?php echo $result; ?></p>
    <a href="quizzes/quiz2.php">Take it again</a>
<?php else: ?>
    <form method="POST" action="quiz.php">
        <p>1. What’s your favorite kind of weather?</p>
        <label><input type="radio" name="q1" value="Summer"> Hot and sunny</label><br>
        <label><input type="radio" name="q1" value="Fall"> Crisp and cool</label><br>
        <label><input type="radio" name="q1" value="Spring"> Mild and breezy</label><br>
        <label><input type="radio" name="q1" value="Winter"> Cold and snowy</label><br>

        <p>2. Pick a drink:</p>
        <label><input type="radio" name="q2" value="Summer"> Lemonade</label><br>
        <label><input type="radio" name="q2" value="Fall"> Pumpkin Spice Latte</label><br>
        <label><input type="radio" name="q2" value="Spring"> Iced Tea</label><br>
        <label><input type="radio" name="q2" value="Winter"> Hot Chocolate</label><br>

        <p>3. What kind of vacation sounds best?</p>
        <label><input type="radio" name="q3" value="Summer"> Beach trip</label><br>
        <label><input type="radio" name="q3" value="Fall"> Mountain cabin</label><br>
        <label><input type="radio" name="q3" value="Spring"> Flower garden tour</label><br>
        <label><input type="radio" name="q3" value="Winter"> Ski resort</label><br>

        <p>4. What's your favorite holiday?</p>
        <label><input type="radio" name="q4" value="Summer"> 4th of July</label><br>
        <label><input type="radio" name="q4" value="Fall"> Thanksgiving</label><br>
        <
