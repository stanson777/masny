<?php

require_once "database2.php";
require_once "klasy.php";
if ($conn->connect_error) {
    die("Błąd połączenia: " . $conn->connect_error);
}


function getRandomDoctors($conn) {
    $sql = "SELECT * FROM doctors ORDER BY RAND() LIMIT 5";
    $result = $conn->query($sql);
    $doctors = [];
    
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $doctors[] = $row;
        }
    }
    
    return $doctors;
}
function getDoctor($doctors_id){
    global $array;
    foreach($array as $doctor){
        if($doctor->numerLegitymacji()==$doctors_id){
            return $doctor;
        }
    }
}

$randomDoctors = getRandomDoctors($conn);
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>e-Recepty</title>
    <style>
        <style>
        nav {
            background-color: #007bff;
            color: #fff;
            padding: 1rem;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        nav ul.sidebar {
            display: none;
            flex-direction: column;
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            width: 250px;
            background-color: #007bff;
            padding-top: 2rem;
        }

        nav ul.sidebar li {
            margin: 1rem 0;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
            padding: 0.5rem 1rem;
            display: block;
        }

        nav ul li a:hover {
            background-color: #0056b3;
        }


        body {
            font-family: 'Arial', sans-serif;
            line-height: 1.6;
            color: #333;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #007bff;
        }
        h1 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
        }
        .doctor {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            padding: 20px;
            margin-bottom: 20px;
            transition: transform 0.3s ease;
        }
        .doctor:hover {
            transform: translateY(-5px);
        }
        h2 {
            color: black;
            margin-top: 0;
        }
        p {
            margin-bottom: 15px;
        }
        button {
            background-color: #007bff;;
            color: white;
            border: none;
            padding: 10px 15px;
            margin-right: 10px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #2980b9;
        }
        @media (max-width: 768px) {
            .hideOnMobile {
                display: none;
            }

            .menuBtn {
                display: block;
            }
        }
    </style>
    </style>
</head>
<body>
    <nav>
            <ul class="sidebar">
                <li onclick=closeSidebar()><a href="#home"><svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#5f6368"><path d="m256-200-56-56 224-224-224-224 56-56 224 224 224-224 56 56-224 224 224 224-56 56-224-224-224 224Z"/></svg></a></li>
                <li><a href="accountPage.php">Konto</a></li>
                <li><a href="lekarze.php">Lekarze</a></li>
                <li><a href="#receipt">E-recepta</a></li>
                <li><a href="adminPanel.php">Dla lekarza</a></li>
                <li><a href="services.php">Usługi</a></li>
                <li><a href="#contact">Kontakt</a></li>
            </ul>
            <ul>
                <li><a href="#home">Home</a></li>
                <li class="hideOnMobile"><a href="accountPage.php">Konto</a></li>
                <li class="hideOnMobile"><a href="lekarze.php">Lekarze</a></li>
                <li class="hideOnMobile"><a href="e-recepty.php">E-recepta</a></li>
                <li class="hideOnMobile"><a href="services.php">Usługi</a></li>
                <li class="hideOnMobile"><a href="#contact">Kontakt</a></li>
                <li class="hideOnMobile"><a href="adminPanel.php">Dla lekarza</a></li>
                <li onclick=showSidebar() class="menuBtn"><a href="#"><svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="#5f6368"><path d="M120-240v-80h720v80H120Zm0-200v-80h720v80H120Zm0-200v-80h720v80H120Z"/></svg></a></li>
            </ul>
    </nav>
    <h1>e-Recepty</h1>
    
    <?php foreach ($randomDoctors as $doctor): ?>
        <div class="doctor">
            <?php
                $doctor1=getDoctor($doctor['doctors_id']);
            ?>
            <h2><?php echo $doctor1->pelneNazwisko(); ?></h2>
            <p>Specjalizacja: <?php echo $doctor1->informacjeOSpecjalizacji(); ?></p>
            <button onclick="getZwolnienie(<?php echo $doctor['id']; ?>)">Uzyskaj zwolnienie</button>
            <button onclick="getErecepta(<?php echo $doctor['id']; ?>)">Uzyskaj e-receptę</button>
        </div>
    <?php endforeach; ?>

    <script>
        function getZwolnienie(doctorId) {
            alert('Uzyskiwanie zwolnienia od lekarza o ID: ' + doctorId);
            
        }

        function getErecepta(doctorId) {
            alert('Uzyskiwanie e-recepty od lekarza o ID: ' + doctorId);
           
        }
    </script>
</body>
</html>

<?php
$conn->close();
?>