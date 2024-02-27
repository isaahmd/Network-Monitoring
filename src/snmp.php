<?php
 ob_start();
// Jika Pass atau username salah
session_start();
if (!isset($_SESSION["authenticated"]) ) {
    header("Location: login.php");
    exit();
ob_end_flush();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style\style.css">
    <title>SNMP Configuration</title>
</head>
<body>
    <div class="nav">
        <div class="logo">
                <p><a href="index.php">SNMP Configuration</a> </p>
            </div>

            <div class="right-links">
                <a href="index.php" ><button class="btn" >Monitoring Page</button></a>
                <a href="snmp.php"> <button class="btn">SNMP Config</button> </a>
                <a href="logout.php"> <button class="btn">Log Out</button> </a>


            </div>
        </div>
    </div>

    <?php
    $prometheusYamlFile = '/etc/prometheus/prometheus.yml';
    $snmpYamlFile = '/etc/snmp_exporter/snmp.yml';

    // Load YAML content
    $prometheusYamlContent = file_get_contents($prometheusYamlFile);
    $snmpYamlContent = file_get_contents($snmpYamlFile);

    if (isset($_GET['success'])) {
        echo '<p style="color: green;">Files berhasil diperbarui!</p>';
    } elseif (isset($_GET['error'])) {
        echo '<p style="color: red;">Terjadi kesalahan saat memperbarui files YAML.</p>';
    }
    
    ?>

<div class="container">
        <div class="box form-box">

                <form action="update_yaml.php" method="post">
                    <div class="field input">
                        <h3>Add Device or Jobs</h3>
                        <textarea name="yamlContent" rows="10" cols="80"><?php echo htmlspecialchars($prometheusYamlContent); ?></textarea>
                        <br>
                        <input type="hidden" name="yamlFile" value="<?php echo $prometheusYamlFile; ?>">

                        <button type="submit" class="btn" value="Simpan Perubahan">Save</button>
                    </div>
                </form>

                <form action="update_yaml.php" method="post">
                    <div class="field input">
                        <h3>Add New Community</h3>
                        <textarea name="yamlContent" rows="10" cols="80"><?php echo htmlspecialchars($snmpYamlContent); ?></textarea>
                        <br>
                        <input type="hidden" name="yamlFile" value="<?php echo $snmpYamlFile; ?>">
                        <button type="submit" class="btn" value="Simpan Perubahan">Save</button>
                    </div>
                </form>

        </div>
</div>
</body>
</html>