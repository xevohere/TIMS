// Get contact number from data source or configuration
document.getElementById('contactNumber').textContent = "1234567890"; // Example
document.getElementById('verifyBtn').addEventListener('click', function() {
    // *** Biometric scanning logic here ***
    // Get trainee ID
    // Access camera or biometric sensor
    // Perform verification (fingerprint, facial recognition, etc.)
    // Handle verification result (success/failure)
});

document.getElementById('adminAccessBtn').addEventListener('click', function() {
    document.getElementById('traineePage').style.display = 'none';
    document.getElementById('adminPage').style.display = 'block';
});

document.getElementById('loginBtn').addEventListener('click', function() {
    // *** Admin login logic here ***
    // Get admin ID and password
    // Validate against stored credentials
    // Redirect to admin dashboard or other page
});

document.getElementById('backBtn').addEventListener('click', function() {
    document.getElementById('traineePage').style.display = 'block';
    document.getElementById('adminPage').style.display = 'none';
});
