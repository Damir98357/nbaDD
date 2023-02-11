<?php

$teams[] = 'Boston Celtics';
$teams[] = 'Brooklyn Nets';
$teams[] = 'New York Knicks';
$teams[] = 'Philadelphia 76ers';
$teams[] = 'Chicago Bulls';
$teams[] = 'Toronto Raptors';
$teams[] = 'Cleveland Cavaliers';
$teams[] = 'Detroit Pistons';
$teams[] = 'Indiana Pacers';
$teams[] = 'Milwaukee Bucks';
$teams[] = 'Atlanta Hawks';
$teams[] = 'Charlotte Hornets';
$teams[] = 'Miami Heat';
$teams[] = 'Orlando Magic';
$teams[] = 'Washington Wizards';
$teams[] = 'Denver Nuggets';
$teams[] = 'Minnesota Timberwolves';
$teams[] = 'Oklahoma City Thunder';
$teams[] = 'Portland Trail Blazers';
$teams[] = 'Utah Jazz';
$teams[] = 'Golden State Warriors';
$teams[] = 'Los Angeles Clippers';
$teams[] = 'Los Angeles Lakers';
$teams[] = 'Phoenix Suns';
$teams[] = 'Sacramento Kings';
$teams[] = 'Dallas Mavericks';
$teams[] = 'Houston Rockets';
$teams[] = 'Memphis Grizzlies';
$teams[] = 'New Orleans Pelicans';
$teams[] = 'San Antonio Spurs';



if (isset($_REQUEST['query'])) {
    $query = $_REQUEST['query'];
    $suggestion = "";

    if ($query !== "") {
        $query = strtolower($query);
        $length = strlen($query);

        foreach ($teams as $team) {
            if (stristr($query, substr($team, 0, $length))) {
                if ($suggestion == "") {
                    $suggestion = $team;
                } else {
                    $suggestion .= ", $team";
                }
            }
        }
    }
    if ($suggestion == "") {
        echo 'No suggestions';
    } else {
        echo $suggestion;
    }
}
