# NFL Stats

"the Rush" is a web app that displays a sample set of rushing stats for NFL Players.

## Background
We have sets of records representing football players' rushing statistics. All records have the following attributes:
* `Player` (Player's name)
* `Team` (Player's team abbreviation)
* `Pos` (Player's postion)
* `Att/G` (Rushing Attempts Per Game Average)
* `Att` (Rushing Attempts)
* `Yds` (Total Rushing Yards)
* `Avg` (Rushing Average Yards Per Attempt)
* `Yds/G` (Rushing Yards Per Game)
* `TD` (Total Rushing Touchdowns)
* `Lng` (Longest Rush -- a `T` represents a touchdown occurred)
* `1st` (Rushing First Downs)
* `1st%` (Rushing First Down Percentage)
* `20+` (Rushing 20+ Yards Each)
* `40+` (Rushing 40+ Yards Each)
* `FUM` (Rushing Fumbles)

In this repo is a sample data file [`rushing.json`](/db/rushing.json).

## Requirements

### 1. Create a web app. This must be able to do the following steps

I created a Rails 6 app.  There's only one route: http://localhost:3000/players

To save time, I'm using [Bootstrap 5](https://getbootstrap.com/docs/5.0/getting-started/introduction/) and [SQLite](https://www.sqlite.org/index.html).

#### 1. Create a webpage which displays a table with the contents of [`rushing.json`](/db/rushing.json)

The contents of the [`rushing.json`](/db/rushing.json)can be found on the main players page: http://localhost:3000/players

#### 2. The user should be able to sort the players by _Total Rushing Yards_, _Longest Rush_ and _Total Rushing Touchdowns_

The Yds, TD and Lng columns are sortable by clicking on the column headers.  This is driven by the `sort_by` parameter.

For testing convenience:
* http://localhost:3000/players?sort_by=rushing_yards
* http://localhost:3000/players?sort_by=rushing_touchdowns
* http://localhost:3000/players?sort_by=rushing_long

Each column is sorted in descending, with category leaders displayed at the top.

#### 3. The user should be able to filter by the player's name

To filter by player name, the user can type in a string in the Search field.  This is driven by the `name_search` parmater.

![Name Search](/screenshots/name-search.png)

Example:
* http://localhost:3000/players?name_search=Aaron

#### 4. The user should be able to download the sorted data as a CSV, as well as a filtered subset

To download data to a CSV, click on the Export to CSV button.  It will download the data as currently displayed on the page.

![Export Button](/screenshots/export-button.png)

The CSV export is driven by the `players.csv` route.  For example:
* http://localhost:3000/players.csv?name_search=Smith&sort_by=rushing_long
    
### 2. The system should be able to potentially support larger sets of data on the order of 10k records.

To handle potentially larger sets of data, I implemented pagination using [will_paginate](will_paginate).  The current page and page size are driven by the `page` and `page_size` parameters.  Example:
* http://localhost:3000/players?page=3&page_size=5

![Pagination](/screenshots/pagination.png)

## Installation and running this solution

### Setup

Install Ruby dependencies:
```
bundle install
```

Install JavaScript dependencies:
```
yarn install
```

Database setup (including data seeding):
```
rails db:reset
```

### Start the Server

```
rails s
```

Then go to: http://localhost:3000/players

If everything is working, you should see a table with player stats.
