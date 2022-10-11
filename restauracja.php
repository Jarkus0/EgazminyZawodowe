<?<php>
    function add_to_database($servername, $username, $password, $database, $array) {

        $db = new mysqli($servername, $username, $password, $database);

        if ($db -> connection_error) {
            return $db -> connection_error;
        }

        $sql = "INSERT INTO rezerwacje (data_rez, liczba_osob, telefon) VALUES ('{$array[0]}', {$array[1]}', '{$array[2]}')";
        $db -> query($sql);
        $db -> close();

    }

    function security($data) {

        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;

    }

    $data = $ilosc_osob = $telefon = $zgoda = "";

    if ($_SERVER["REQUEST_METHOD"] == "POST") {

        $data = input_test($_POST["data"]);
        $ilosc_osob = input_test($_POST["ilosc_osob"]);
        $telefon = input_test($_POST["telefon"]);
        $zgoda = input_test($_POST["zgoda"]);

        if (dodaj_do_bazy("localhost", "root", "", "baza", array($data, $ilosc_osob, $telefon)) == NULL) {

            echo "Dodano rezerwacje do bazy";

        } else {

            echo "Wystąpił błąd"

        }

    }

</php>