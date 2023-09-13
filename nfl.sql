-- 1. List the names of all NFL teams'
SELECT name FROM teams
1	Buffalo Bills
2	Miami Dolphins
3	New England Patriots
4	New York Jets
5	Baltimore Ravens
6	Cincinnati Bengals
7	Cleveland Browns
8	Pittsburgh Steelers
9	Houston Texans
10	Indianapolis Colts
11	Jacksonville Jaguars
12	Tennessee Titans
13	Denver Broncos
14	Kansas City Chiefs
15	Oakland Raiders
16	San Diego Chargers
17	Dallas Cowboys
18	New York Giants
19	Philadelphia Eagles
20	Washington Redskins
21	Chicago Bears
22	Detroit Lions
23	Green Bay Packers
24	Minnesota Vikings
25	Atlanta Falcons
26	Carolina Panthers
27	New Orleans Saints
28	Tampa Bay Buccaneers
29	Arizona Cardinals
30	St. Louis Rams
31	San Francisco 49ers
32	Seattle Seahawks

-- 2. List the stadium name and head coach of all NFC teams
SELECT stadium, head_coach FROM teams
1	Ralph Wilson Stadium	Doug Marrone
2	Sun Life Stadium	    Joe Philbin
3	Gillette Stadium	    Bill Belichick
4	MetLife Stadium	        Rex Ryan
5	M&T Bank Stadium	    John Harbaugh
6	Paul Brown Stadium	    Marvin Lewis
7	FirstEnergy Stadium	    Mike Pettine
8	Heinz Field	            Mike Tomlin
9	NRG Stadium	            Bill OBrien
10	Lucas Oil Stadium	    Chuck Pagano
11	EverBank Field	        Gus Bradley
12	LP Field	            Ken Whisenhunt
13	Sports Authority Field	John Fox
14	Arrowhead Stadium	    Andy Reid
15	O.co Coliseum	        Tony Sparano
16	Qualcomm Stadium	    Mike McCoy
17	AT&T Stadium	        Jason Garrett
18	MetLife Stadium	        Tom Coughlin
19	Lincoln Financial Field	Chip Kelly
20	FedExField	            Jay Gruden
21	Soldier Field	        Marc Trestman
22	Ford Field	            Jim Caldwell
23	Lambeau Field	        Mike McCarthy
24	TCF Bank Stadium	    Mike Zimmer
25	Georgia Dome	        Mike Smith
26	Bank of America Stadium	Ron Rivera
27	Mercedes-Benz Superdome	Sean Payton
28	Raymond James Stadium	Lovie Smith
29	University of Phoenix Stadium	Bruce Arians
30	Edward Jones Dome	    Jeff Fisher
31	Levis Stadium	        Jim Harbaugh
32	CenturyLink Field	    Pete Carroll

-- 3. List the head coaches of the AFC South
SELECT head_coach FROM teams
WHERE conference = 'AFC'
AND division = 'South';

1	Bill OBrien
2	Chuck Pagano
3	Gus Bradley
4	Ken Whisenhunt

-- 4. The total number of players in the NFL
SELECT COUNT(*) FROM players;

1532

-- 5. The team names and head coaches of the NFC North and AFC East
SELECT name, head_coach FROM teams
WHERE conference = 'NFC' AND division = 'North'
1	Chicago Bears	    Marc Trestman
2	Detroit Lions	    Jim Caldwell
3	Green Bay Packers	Mike McCarthy
4	Minnesota Vikings	Mike Zimmer

SELECT name, head_coach FROM teams
WHERE conference = 'AFC' AND division = 'East'
1	Buffalo Bills	Doug Marrone
2	Miami Dolphins	Joe Philbin
3	New England Patriots	Bill Belichick
4	New York Jets	Rex Ryan

-- 6. The 50 players with the highest salaries
SELECT name FROM players
ORDER BY salary ASC
LIMIT 50

1	Phillip Dillard
2	Tristan Davis
3	Alex Silvestro
4	Ronald Johnson
5	Jonathan Crompton
6	Travon Bellamy
7	Ricky Sapp
8	Jimmy Young
9	Mike Blanc
10	Brett Brackett
11	Doug Worthington
12	Greg Orton
13	Sealver Siliga
14	Mike Mohamed
15	John Clay
16	Chad Spann
17	David Gilreath
18	Jerrod Johnson
19	Kade Weston
20	Marshall McFadden
21	Derrick Jones
22	Lestar Jean
23	Jeremy Beal
24	Adam Grant
25	Austin Sylvester
26	DAndre Goodwin
27	Eric Kettani
28	Mark Dell
29	Pat Devlin
30	Jerome Messam
31	Shaun Draughn
32	Markell Carter
33	Malcolm Williams
34	Armon Binns
35	Mike Hartline
36	Corbin Bryant
37	Mike Rivera
38	Jamie McCoy
39	John Malecki
40	Juamorris Stewart
41	Michael Jasper
42	Aaron Lavarias
43	Trevis Turner
44	Tyler Beiler
45	Armando Allen
46	Rashad Carmichael
47	Kyle Hix
48	Adam Weber
49	Jammie Kirlew
50	Shaky Smithson

-- 7. The average salary of all NFL players
SELECT AVG(salary) FROM players;
1579692.54

-- 8. The names and positions of players with a salary above 10_000_000
SELECT COUNT(name, position) FROM players
WHERE salary > 10000000

1	Jake Long	T
2	Joe Thomas	T
3	Dwight Freeney	DE
4	Peyton Manning (buyout)	QB
5	Peyton Manning	QB
6	Elvis Dumervil	DE
7	Tamba Hali	DE
8	Philip Rivers	QB
9	Michael Vick	QB
10	Nnamdi Asomugha	CB
11	Trent Williams	T
12	Matthew Stafford	QB
13	Cliff Avril	DE
14	Jared Allen	DE
15	Matt Ryan	QB
16	Brent Grimes	CB
17	Drew Brees	QB
18	Vincent Jackson	WR
19	Calais Campbell	DE
20	Sam Bradford	QB
21	Chris Long	DE

-- 9. The player with the highest salary in the NFL
SELECT name FROM players 
ORDER BY salary DESC
LIMIT 1

1	Peyton Manning

-- 10. The name and position of the first 100 players with the lowest salaries
SELECT name, position FROM players 
ORDER BY salary ASC
LIMIT 100

1	Phillip Dillard	
2	Eric Kettani	RB
3	Austin Sylvester	RB
4	Greg Orton	WR
5	Jerrod Johnson	QB
6	McLeod Bethel-Thompson	QB
7	Jonathan Crompton	QB
8	Travon Bellamy	CB
9	Caleb King	RB
10	Mike Mohamed	LB
11	Kyle Nelson	LS
12	John Malecki	G
13	Nathan Bussey	LB
14	Robert James	LB
15	Markell Carter	DE
16	Aaron Lavarias	DT
17	Mark Dell	WR
18	Ronald Johnson	WR
19	Doug Worthington	DT
20	Derrick Jones	WR
21	Sealver Siliga	DT
22	Chase Beeler	C
23	Kenny Wiggins	T
24	Konrad Reuland	TE
25	Michael Wilhoite	LB
26	Garrett Chisolm	G
27	Juamorris Stewart	WR
28	Chad Spann	RB
29	Trevis Turner	T
30	Justin Medlock	KR
31	Armon Binns	WR
32	Derek Hall	T
33	Shaky Smithson	WR
34	Armando Allen	RB
35	DAndre Goodwin	WR
36	Jeremy Beal	DE
37	Brett Brackett	TE
38	Shaun Draughn	RB
39	John Clay	RB
40	Tristan Davis	RB
41	Curtis Holcomb	CB
42	Jimmy Young	WR
43	Kevin Cone	WR
44	Cory Nelms	CB
45	Ben Guidugli	TE
46	David Gilreath	WR
47	Dontavia Bogan	WR
48	Joe Hastings	WR
49	Marshall McFadden	LB
50	Kade Weston	DT
51	Kyle Hix	T
52	Mark LeGree	S
53	Mike Hartline	QB
54	Jameson Konz	WR
55	Tyler Beiler	
56	Mike Blanc	DT
57	Corbin Bryant	DT
58	Michael Jasper	DT
59	Mike Rivera	LB
60	Pat Devlin	QB
61	Jerome Messam	RB
62	Jamie McCoy	TE
63	Lestar Jean	WR
64	Malcolm Williams	CB
65	Ricky Sapp	DE
66	Rashad Carmichael	CB
67	Alex Silvestro	DT
68	Adam Weber	QB
69	Adam Grant	T
70	Jammie Kirlew	DE
71	Joe Reitz	T
72	Brandon Browner	CB
73	Jeff Byers	C
74	Jed Collins	TE
75	Aaron Berry	CB
76	Logan Payne	WR
77	Marcus Sherels	CB
78	T.J. Conley	PR
79	Cameron Sheffield	LB
80	Kyle Bosworth	LB
81	Garrett McIntyre	DT
82	John Estes	C
83	Thomas Austin	G
84	Emmanuel Stephens	DT
85	Markus White	DE
86	Ricardo Matthews	DT
87	Quinten Lawrence	WR
88	Bilal Powell	RB
89	Taylor Boggs	C
90	Kamar Aiken	WR
91	Dexter Jackson	WR
92	Justin Rogers	CB
93	Johnny White	RB
94	Eron Riley	WR
95	Tracy Wilson	CB
96	DaNorris Searcy	S
97	Chris White	LB
98	Sterling Moore	CB
99	Chris Hairston	T
100	Andrew Hawkins	WR

-- 11. The average salary for a DE in the nfl
SELECT AVG(salary), position FROM players
GROUP BY position

2161326.377049180328	DE

-- 12. The names of all the players on the Buffalo Bills


-- 13. The total salary of all players on the New York Giants


-- 14. The player with the lowest salary on the Green Bay Packers