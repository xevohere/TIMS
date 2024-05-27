document.getElementById('contactNumber').textContent = "1234567890"; // Example

document.getElementById('verifyBtn').addEventListener('click', function() {
    // Biometric scanning logic here 
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
    const adminId = document.getElementById('adminId').value;
    const adminPassword = document.getElementById('adminPassword').value;

    // Example admin credentials
    const validAdminId = 'admin';
    const validAdminPassword = 'password';

    if (adminId === validAdminId && adminPassword === validAdminPassword) {
        fetch('db.json') // Example file containing the data
            .then(response => response.json())
            .then(data => {
                document.getElementById('dbContent').textContent = JSON.stringify(data, null, 2);
                document.getElementById('adminPage').style.display = 'none';
                document.getElementById('databasePage').style.display = 'block';
            })
            .catch(error => console.error('Error fetching the database:', error));
    } else {
        alert('Invalid credentials');
    }
});

document.getElementById('backBtn').addEventListener('click', function() {
    document.getElementById('traineePage').style.display = 'block';
    document.getElementById('adminPage').style.display = 'none';
});

document.getElementById('logoutBtn').addEventListener('click', function() {
    document.getElementById('databasePage').style.display = 'none';
    document.getElementById('traineePage').style.display = 'block';
});
