# sql-exploration
A collection of exploratory exercises to improve SQL skills.

## `01-animals_db`

### Create a Database

    To create a database in pgAdmin, follow these steps:

    1 – In the pgAdmin editor, right-click `PostgreSQL 15` on the left-hand side panel.
    
    2 - From the menu, hover `Create` to instantiate a new database.
    
    3 – Enter `animals_db` as the database name. Make sure the owner is set as the default `postgres`, and then click Save.


### Create a Table

    `01-create_tables.sql` contains a sample table creation script with several different data types.


### Insert Values

    `02-insert_values.sql` contains a sample record insertion script that demonstrates basic data entry.


### Query All Records

    `03-query_all_records.sql` contains the most basic full-table query script.
    `03-query_all_records_results.csv` shows the query results.


### Filtered Query

    `04-filtered_query.sql` contains a query script that retrieves only some fields from records that meet several criteria.
    `04-filtered_query_results.csv` shows the query results.


## `02-city_info`

### Procedure

    1. Create a new database in pgAdmin named `city_info`.

    2. Using the query tool, create an empty table named `cities`. Be sure to match the data types!

    3. Insert data into the new table. The result should match the following image.

        ![cities_table.png](sql-exploration/images/cities_table.png)

        | city<br>character varying (30) | state<br>character varying (30) | population<br>integer |
        |----|----|----|
        | Alameda | California | 79177 |
        | Mesa | Arizona | 496401 |
        | Boerne | Texas | 16056 |
        | Anaheim | California | 352497 |
        | Tucson | Arizona | 535677 |
        | Garland | Texas | 238002 |

    4. Query the table to recreate the image below.

        ![cities_only.png](images/cities_only.png)

        | city<br>character varying (30) |
        |----|
        | Alameda |
        | Mesa |
        | Boerne |
        | Anaheim |
        | Tucson |
        | Garland |
        
### Bonus

    1. Filter the table to view only cities in Arizona.

    2. Filter the table to view only cities with a population of less than 100,000.

    3. Filter the table to view California cities with a population of less than 100,000.

    ## Hints

    * For the second bonus question, you will need to use a [`WHERE` clause](https://www.tutorialspoint.com/sql/sql-where-clause.htm) to filter the original query.

    * For the third bonus question, an [`AND` clause](https://www.tutorialspoint.com/sql/sql-and-or-clauses.htm) will also be necessary.
