document.getElementById("quiz-form").addEventListener("submit", function(event) {
    let isValid = true;
    const formData = new FormData(this);

    for (let [key, value] of formData.entries()) {
        if (!value) {
            isValid = false;
            alert("Please answer all questions.");
            break;
        }
    }

    if (!isValid) {
        event.preventDefault(); 
    } else {
        console.log("Quiz answers: ", formData);
    }
});
