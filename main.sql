CREATE TABLE internships
(
  position TEXT,
  office TEXT,
  location TEXT,
  deadline boolean,
  payPerHr double,
  link TEXT
);

-- extra spaces in text for readability
-- null in payPerHr --> not paid
INSERT INTO internships values
  (' Ophthalmic/Optometric Technician Intern ', ' Orange County Eye Institute ', ' Laguna Hills, CA ', false, 14.00, ' https://rb.gy/g1tnjb'),
  (' Behavior Technician Clinical Intern ', ' Accel Therapies ', ' Orange, CA ', false, null, ' https://rb.gy/06rthq'),
  (' Primary Care/Addiction Medicine Clinic Intern ', ' Coastal Primary Care ', ' Fullerton, CA ', false, null, ' https://rb.gy/q7sdtx'),
  (' Medical Scientist Training Program ', ' UC San Diego School of Medicine ', ' San Diego, CA ', true, null, ' https://rb.gy/cgnvvr'),
  (' Cell, Developmental & Cancer Biology Summer Research Internship ', ' Knight Cancer Institute ', ' Portland, Oregon ', true, null, ' https://rb.gy/e0ykpp'),
  (' Immersive Pre-Health Emergency and Wilderness Medicine Internship ', ' University of Colorado ', ' Aurora, CO ', true, null, ' https://rb.gy/w0g8dc'),
  (' Ophthalmic Intern ', ' Century Eye Care ', ' Los Angeles, CA ', false, 16.00, ' https://rb.gy/fvyadp'),
  (' Summer Institute for Training in Biostatistics and Data Science at Columbia ', ' Columbia University Mailman School of Public Health ', ' New York, NY ', true, null, ' https://rb.gy/o8errg'),
  (' Medical Assistant in Family Medicine ', ' PIH Health Physicians ', ' Whittier, CA ', false, 17.00, ' https://rb.gy/mdhcqt'),
  (' Medical Assistant Intern ', ' Comprehensive Community Health Centers ', ' Los Angeles, CA ', false, null, ' https://rb.gy/joraj4');


---------------------------------------------------------------

-- queries

-- query #1
-- prints entire table in numbered list, no sorting
-- tut: https://learnsql.com/cookbook/how-to-number-rows-in-sql/
.print
.print 'Query #1 - All internships in numbered list:'
.print
SELECT ROW_NUMBER() OVER() AS num_row,
* FROM internships;
.print

-- query #2
-- prints paid internships with rate, no sorting
-- tut: https://stackoverflow.com/questions/29679551/sql-select-only-non-empty-columns
.print
.print 'Query #2 - Paid internships:'
.print
SELECT 'Pay per hour: ' AS ColumnName, payPerHr AS ColumnValue,
* FROM internships
WHERE NOT payPerHr IS NULL;
.print

-- query #3
-- prints internships with deadlines
-- tut: https://stackoverflow.com/questions/29679551/sql-select-only-non-empty-columns
.print
.print 'Query #3 - Internships with deadlines:'
.print
SELECT 'Has application deadline: ' AS ColumnName, deadline AS ColumnValue,
* FROM internships
WHERE NOT deadline IS FALSE;
.print

---------------------------------------------------------------
  
-- sorts
.print
.print '---------------------------------------------------------------'
.print
  
-- sort #1
-- alphabetical sort
-- tut: https://learnsql.com/cookbook/how-to-order-alphabetically-in-sql/
.print
.print 'Sort #1 - Internships in alphabetical order by position name:'
.print
SELECT position,
* FROM internships
ORDER BY position ASC;
.print

-- sort #2
-- alphabetical sort
.print
.print 'Sort #2 - Internships in alphabetical order by city name:'
.print
SELECT 'Location: ' AS ColumnName, location AS ColumnValue,
* FROM internships
ORDER BY location ASC; 
.print

-- sort #3
-- length sort
.print
.print 'Sort #3 - Internships by length of position name: (longest to shortest)'
.print
SELECT 'Character length: ', LENGTH(position)-2, position,
* FROM internships
ORDER BY LENGTH(position) DESC;
.print

.print '---------------------------------------------------------------'