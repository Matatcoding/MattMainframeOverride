psql -f init.sql

psql

\l

\c mainframe_override

\d
--hint gave that we should look through forum posts
\d forum_posts
--checking to see all the columns and types inside of forum_posts
SELECT date FROM forum_posts;
--checking to see how the date is formatted
SELECT * FROM forum_posts WHERE date BETWEEN '2048-03-31' AND '2048-05-01';
--SHOULD GIVE me all the content in april
--looks like smart-money-44 is the username of the guy
\d forum_accounts
--checking out how this is structured
SELECT * FROM forum_accounts WHERE username = 'smart-money-44';
--looks like the guy's name is Brad Steele
--time to find the dad
SELECT * FROM forum_accounts WHERE last_name  = 'Steele';
--two others have the last name Steele: Kevin and Andrew
SELECT * FROM emptystack_accounts  WHERE last_name  = 'Steele';
--gives me the Andrew Steele (triple-cart-38, password456) and Lance Steele (lance-main-11, password789)
--andrew is the only repeat
node mainframe
psql -f emptystack.sql
psql
\c mainframe_override
\d
SELECT * FROM emptystack_messages WHERE body LIKE '%taxis%';
--nothing
SELECT * FROM emptystack_messages WHERE body ILIKE '%taxis%';
--capitalization
SELECT * FROM emptystack_accounts WHERE username = 'your-boss-99'; 
--gotcha Skylar Singer (your-boss-99, notagaincarter)
\d emptystack_projects
SELECT id FROM emptystack_projects WHERE code = 'TAXI';
--DczE0v2b