<?php

class Team
{
    public $id;
    public $name;
    public $manager;
    public $city;
    public $titles;
    public $founded;
    public $stadium;

    public function __construct(
        $id,
        $name,
        $manager,
        $city,
        $titles,
        $founded,
        $stadium
    ) {
        $this->id = $id;
        $this->name = $name;
        $this->manager = $manager;
        $this->city = $city;
        $this->titles = $titles;
        $this->founded = $founded;
        $this->stadium = $stadium;
    }
}

function returnTeamId($team)
{
    switch ($team) {
        case 'Boston Celtics':
            return 1;
            break;
        case 'Brooklyn Nets':
            return 2;
            break;
        case 'New York Knicks':
            return 3;
            break;
        case 'Philadelphia 76ers':
            return 4;
            break;
        case 'Toronto Raptors':
            return 5;
            break;
        case 'Chicago Bulls':
            return 6;
            break;
        case 'Cleveland Cavaliers':
            return 7;
            break;
        case 'Detroit Pistons':
            return 8;
            break;
        case 'Indiana Pacers':
            return 9;
            break;
        case 'Milwaukee Bucks':
            return 10;
            break;
        case 'Atlanta Hawks':
            return 11;
            break;
        case 'Charlotte Hornets':
            return 12;
            break;
        case 'Miami Heat':
            return 13;
            break;
        case 'Orlando Magic':
            return 14;
            break;
        case 'Washington Wizards':
            return 15;
            break;
        case 'Denver Nuggets':
            return 16;
            break;
        case 'Minnesota Timberwolves':
            return 17;
            break;
        case 'Oklahoma City Thunder':
            return 18;
            break;
        case 'Portland Trail Blazers':
            return 19;
            break;
        case 'Utah Jazz':
            return 20;
            break;
        case 'Golden State Warriors':
            return 21;
            break;
        case 'Los Angeles Clippers':
            return 22;
            break;
        case 'Los Angeles Lakers':
            return 23;
            break;
        case 'Phoenix Suns':
            return 24;
            break;
        case 'Sacramento Kings':
            return 25;
            break;
        case 'Dallas Mavericks':
            return 26;
            break;
        case 'Houston Rockets':
            return 27;
            break;
        case 'Memphis Grizzlies':
            return 28;
            break;
        case 'New Orleans Pelicans':
            return 29;
            break;
        case 'San Antonio Spurs':
            return 30;
            break;
    }
}
