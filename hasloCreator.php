<?php
    
    $passwords = [
        "Kot2024!",
        "Luna&Księżyc1",
        "Piątek13#",
        "Spacer_z_Psem_22",
        "ZielonaHerbata7$",
        "Czekolada123!",
        "GóraWspinaczka2021",
        "BłękitnaLaguna_8",
        "OgródSłonecznikowy12",
        "RowerGórski#15",
        "WiosennaŁąka2023",
        "KwitnąceDrzewa@4",
        "ZimowyŚnieg*99",
        "MorzeBałtyckie^22",
        "Wędrówka_Las+1",
        "KoloroweLato11$",
        "DeszczowaChmura_7",
        "WakacjeNaPlaży#2020",
        "SłonecznyDzień24!",
        "PięknaNoc2023*",
        "ŚpiewPtaszków!14",
        "LodowaKraina88#",
        "WschódSłońca1%",
        "JesienneLiście#10",
        "WietrznyDzień@2",
        "KsiężycoweNoce_3",
        "ŚwiatPrzygód!12",
        "PodróżMarzeń2024#",
        "TęczowyMost%7",
        "TropikalnaWyspa_16",
        "ZłotyZmierzch#20",
        "BłękitneNiebo+2021",
        "LetnieWieczory$5",
        "GwiaździstaNoc#9"
    ];

    $json_data=json_encode($passwords,JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);


    file_put_contents('passwords.json',$json_data);

    echo "Hasła zostaly zapisane do pliku passwords.json";
 
    




?>