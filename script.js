// Function to handle button clicks for starting the game
document.addEventListener('DOMContentLoaded', function () {
    const startButton = document.querySelector('.start-button');
    
    if (startButton) {
        startButton.addEventListener('click', function (event) {
            // Optional: Add a confirmation dialog before starting the game
            const confirmStart = confirm("Are you ready to solve the mystery?");
            if (!confirmStart) {
                event.preventDefault(); // Prevent navigation if user cancels
            }
        });
    }
});
