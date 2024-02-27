<?php
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["yamlContent"]) && isset($_POST["yamlFile"])) {
    $yamlFile = $_POST["yamlFile"];

    // Get YAML content from the form
    $newYamlContent = $_POST["yamlContent"];

    // Save the updated YAML content to the file
    $result = file_put_contents($yamlFile, $newYamlContent);

    // Redirect back to the index page with success or error message
    if ($result !== false) {
        header("Location: snmp.php?success=1");
    } else {
        header("Location: snmp.php?error=1");
    }
    exit(); // Make sure to exit to prevent any further code execution
} else {
    header("HTTP/1.1 400 Bad Request");
    exit(); // Make sure to exit to prevent any further code execution
}
?>