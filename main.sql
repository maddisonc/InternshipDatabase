CREATE TABLE internships
(
  position TEXT,
  office TEXT,
  location TEXT,
  deadline boolean,
  payPerHr double,
  link TEXT
);

INSERT INTO internships values
  ('Ophthalmic/Optometric Technician Intern ', ' Orange County Eye Institute ', ' Laguna Hills, CA ', false, 14.00, ' https://rb.gy/g1tnjb'),   ('Behavior Technician Clinical Intern ', '  Accel Therapies ', ' Orange, CA ', false, 0.00, ' https://rb.gy/06rthq'),
  ('Primary Care/Addiction Medicine Clinic Intern ', ' Coastal Primary Care ', ' Fullerton, CA ', false, 0.00, ' https://rb.gy/q7sdtx'),
  ('Medical Scientist Training Program ', ' UC San Diego School of Medicine ', ' San Diego, CA ', true, 0.00, ' https://rb.gy/cgnvvr'),
  ('Cell, Developmental & Cancer Biology Summer Research Internship ', ' Knight Cancer Institute ', ' Portland, Oregon ', true, 0.00, ' https://rb.gy/e0ykpp'),
  ('Immersive Pre-health Emergency and Wilderness Medicine Internship ', ' University of Colorado ', ' Aurora, CO ', true, 0.0, ' https://rb.gy/w0g8dc'),
  ('Ophthalmic Intern ', ' Century Eye Care ', ' Los Angeles, CA ', false, 16.00, ' https://rb.gy/fvyadp'),
  ('Summer Institute for Training in Biostatistics and Data Science at Columbia ', ' Columbia University Mailman School of Public Health ', ' New York, NY ', true, 0.00, ' https://rb.gy/o8errg'),
  ('Medical Assistant in Family Medicine ', ' PIH Health Physicians ', ' Whittier, CA ', false, 17.00, ' https://rb.gy/mdhcqt'),
  ('Medical Assistant Intern ', ' Comprehensive Community Health Centers ', ' Los Angeles, CA ', false, 0.00, ' https://rb.gy/joraj4');


.print
.print 'All Internships:'
.print
SELECT * FROM internships