DROP TABLE IF EXISTS doctors, speciality, rooms, reception, patients, diagnosis, service, feedback;

CREATE TABLE doctors(
 doctors_id SERIAL NOT NULL PRIMARY KEY,
 first_name VARCHAR(255) NOT NULL,
 last_name VARCHAR(255) NOT NULL,
 birth_date DATE NOT NULL,
 gender VARCHAR(255) NOT NULL,
 mobile_number VARCHAR(255) NOT NULL,
 address VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL,
 hire_date DATE,
 diplom_number INT NOT NULL
);

CREATE TABLE speciality(
 speciality_id SERIAL PRIMARY KEY,
 speciality_name VARCHAR(255),
 salary CHAR(25) NOT NULL,
 rooms_id INT NOT NULL,
 doctors_id INT NOT NULL
);

CREATE TABLE rooms(
 rooms_id SERIAL NOT NULL PRIMARY KEY,
 room_number INT NOT NULL
);

CREATE TABLE reception(
 reception_number SERIAL NOT NULL PRIMARY KEY,
 visit_date DATE NOT NULL,
 patient_id INT NOT NULL
);

CREATE TABLE diagnosis(
 diagnosis_id SERIAL PRIMARY KEY, 
 diagnosis_name VARCHAR(50) NOT NULL, 
 description TEXT NOT NULL, 
 specialty_id INT NOT NULL
);
CREATE TABLE patients(
 patient_id SERIAL PRIMARY KEY , 
 first_name VARCHAR(50) NOT NULL, 
 last_name VARCHAR(50) NOT NULL, 
 gender VARCHAR(50) NOT NULL,
 birth_date DATE NOT NULL, 
 address VARCHAR(255)  NOT NULL, 
 mobile_number CHAR(15) NOT NULL, 
email CHAR(50) NOT NULL, 
 diagnosis_id INT NOT NULL
);



CREATE TABLE service(
 service_id SERIAL PRIMARY KEY, 
 service_name VARCHAR(100), 
 description TEXT NOT NULL, 
 price CHAR(10) NOT NULL, 
 specialty_id INT NOT NULL
);

CREATE TABLE feedback(
 feedback_id SERIAL,
 suggestions VARCHAR(255),
 complaint VARCHAR(255),
 patient_id INT 
);

ALTER TABLE reception
ADD FOREIGN KEY (patient_id) REFERENCES patients(patient_id);
ALTER TABLE patients
ADD FOREIGN KEY (diagnosis_id) REFERENCES  diagnosis(diagnosis_id);
ALTER TABLE diagnosis
ADD FOREIGN KEY (specialty_id) REFERENCES  speciality(speciality_id);
ALTER TABLE feedback
ADD FOREIGN KEY (patient_id) REFERENCES patients(patient_id);
ALTER TABLE service
ADD FOREIGN KEY (specialty_id) REFERENCES speciality(speciality_id);
ALTER TABLE speciality
ADD FOREIGN KEY (rooms_id) REFERENCES rooms(rooms_id);
ALTER TABLE speciality
ADD FOREIGN KEY (doctors_id) REFERENCES doctors(doctors_id);




insert into rooms (room_number) values (1);
insert into rooms (room_number) values (2);
insert into rooms (room_number) values (3);
insert into rooms (room_number) values (4);
insert into rooms (room_number) values (5);
insert into rooms (room_number) values (6);
insert into rooms (room_number) values (7);
insert into rooms (room_number) values (8);
insert into rooms (room_number) values (9);
insert into rooms (room_number) values (10);
insert into rooms (room_number) values (11);
insert into rooms (room_number) values (12);
insert into rooms (room_number) values (13);
insert into rooms (room_number) values (14);
insert into rooms (room_number) values (15);

insert into doctors (first_name, last_name, birth_date, gender, mobile_number, address, email, hire_date, diplom_number) values ('Wayland', 'Sedgebeer', '1970-12-17', 'Male', '7081412297', '69747 Carberry Alley', 'wsedgebeer0@sciencedaily.com', '2016-01-20', 1034);
insert into doctors (first_name, last_name, birth_date, gender, mobile_number, address, email, hire_date, diplom_number) values ('Ronny', 'Bullocke', '1975-01-04', 'Male', '3690411378', '1 Shopko Plaza', 'rbullocke1@wikipedia.org', '2016-08-29', 665);
insert into doctors (first_name, last_name, birth_date, gender, mobile_number, address, email, hire_date, diplom_number) values ('Yanaton', 'Bootell', '1990-07-17', 'Male', '0509279333', '8404 Heffernan Crossing', 'ybootell2@flickr.com', '2012-07-23', 537);
insert into doctors (first_name, last_name, birth_date, gender, mobile_number, address, email, hire_date, diplom_number) values ('Benedict', 'Grimley', '1987-08-28', 'Male', '3067265718', '27823 Charing Cross Hill', 'bgrimley3@rakuten.co.jp', '2016-05-31', 354);
insert into doctors (first_name, last_name, birth_date, gender, mobile_number, address, email, hire_date, diplom_number) values ('Jacobo', 'McNysche', '1994-01-02', 'Male', '2410271790', '89793 7th Crossing', 'jmcnysche4@ezinearticles.com', '2019-02-10', 314);
insert into doctors (first_name, last_name, birth_date, gender, mobile_number, address, email, hire_date, diplom_number) values ('Ramsey', 'Mompesson', '1995-10-30', 'Male', '5072348997', '54882 Shopko Point', 'rmompesson5@cbslocal.com', '2014-03-12', 924);
insert into doctors (first_name, last_name, birth_date, gender, mobile_number, address, email, hire_date, diplom_number) values ('Gisela', 'Matysiak', '1986-05-04', 'Female', '7035625909', '2 Golden Leaf Circle', 'gmatysiak6@goo.gl', '2018-02-22', 985);
insert into doctors (first_name, last_name, birth_date, gender, mobile_number, address, email, hire_date, diplom_number) values ('Finley', 'Plevey', '1983-11-19', 'Male', '9143814522', '62 Porter Court', 'fplevey7@jalbum.net', '2016-09-02', 433);
insert into doctors (first_name, last_name, birth_date, gender, mobile_number, address, email, hire_date, diplom_number) values ('Henka', 'Settle', '1988-10-08', 'Female', '1862205639', '98 Dorton Avenue', 'hsettle8@myspace.com', '2015-11-18', 901);
insert into doctors (first_name, last_name, birth_date, gender, mobile_number, address, email, hire_date, diplom_number) values ('Danie', 'Elfe', '1989-06-25', 'Male', '2006487310', '505 Sheridan Crossing', 'delfe9@census.gov', '2014-09-18', 687);
insert into doctors (first_name, last_name, birth_date, gender, mobile_number, address, email, hire_date, diplom_number) values ('Cecilla', 'Orable', '1993-03-27', 'Female', '1859885594', '5122 Eliot Road', 'corablea@hostgator.com', '2018-01-20', 1106);
insert into doctors (first_name, last_name, birth_date, gender, mobile_number, address, email, hire_date, diplom_number) values ('Lesley', 'Gockeler', '1981-10-16', 'Male', '6087289895', '6157 Ruskin Lane', 'lgockelerb@devhub.com', '2015-04-27', 974);
insert into doctors (first_name, last_name, birth_date, gender, mobile_number, address, email, hire_date, diplom_number) values ('Cozmo', 'Riden', '1979-10-23', 'Male', '7510487978', '88 Aberg Center', 'cridenc@adobe.com', '2015-02-03', 1011);


insert into speciality ( speciality_name,  salary, rooms_id,  doctors_id ) values ( 'Children"s dentistry', '$941.03', 1, 1);
insert into speciality ( speciality_name,  salary, rooms_id,  doctors_id ) values ( 'Orthodontics', '$911.25', 2, 2);
insert into speciality ( speciality_name,  salary, rooms_id,  doctors_id ) values ( 'Cyanocobalamin', '$910.34', 3, 3);
insert into speciality ( speciality_name,  salary, rooms_id,  doctors_id ) values ( 'Orthopedic dentistry', '$884.46', 4, 4);
insert into speciality ( speciality_name,  salary, rooms_id,  doctors_id ) values ( 'Therapeutic dentistry', '$670.38', 5, 5);
insert into speciality ( speciality_name,  salary, rooms_id,  doctors_id ) values ( 'General Dentistry', '$342.91', 6, 6);
insert into speciality ( speciality_name,  salary, rooms_id,  doctors_id ) values ( 'Surgical dentistry', '$608.00', 7, 7);
insert into speciality ( speciality_name,  salary, rooms_id,  doctors_id ) values ( 'Acetaminophen', '$821.00', 8, 8);
insert into speciality ( speciality_name,  salary, rooms_id,  doctors_id ) values ( 'Maxillofacial Surgery', '$894.58', 9, 9);
insert into speciality ( speciality_name,  salary, rooms_id,  doctors_id ) values ( 'dentist-therapist ', '$368.04', 10, 10);
insert into speciality ( speciality_name,  salary, rooms_id,  doctors_id ) values ( 'periodontist dentist', '$313.49', 11, 11);
insert into speciality ( speciality_name,  salary, rooms_id,  doctors_id ) values ( 'pediatric dentist', '$561.86', 13, 13);

insert into diagnosis (diagnosis_name,  description, specialty_id) values ('Dental diseases', 'Dental diseases  are diseases of the periodontal tissues and dental tissues. Diseases of teeth, methods of their prevention and treatment, as well as diseases of the oral cavity, jaws and border areas of the face and neck are dealt with by a special section of medicine - dentistry.', 1);

insert into diagnosis (diagnosis_name,  description, specialty_id) values ('Tooth abscess', 'Tooth abscess  is an infectious process that is caused by the accumulation of pus in the inner or outer surface of the alveolar process of the upper jaw or the alveolar part of the lower jaw. Usually, the cause of an abscess is a bacterial infection that accumulates in the soft, often dead, pulp of the tooth , which can be associated with advanced caries , chipped teeth, or various periodontal diseases . Unsuccessful treatment of the root canal system can also cause an abscess.', 2);
insert into diagnosis (diagnosis_name,  description, specialty_id) values ('Abfraction', 'ac nulla sed vel enim sit amet', 4);
insert into diagnosis (diagnosis_name,  description, specialty_id) values ('Ameloblastoma', 'in faucibus orci luctus et', 5);
insert into diagnosis (diagnosis_name,  description, specialty_id) values ('Apical periodontitis', 'velit eu est congue elementum', 6);
insert into diagnosis (diagnosis_name,  description, specialty_id) values ('Hyperesthesia of teeth', 'nulla ut erat id mauris vulputate elementum', 7);
insert into diagnosis (diagnosis_name,  description, specialty_id) values ('Hypoplasia of teeth', 'felis eu sapien cursus vestibulum proin eu', 8);
insert into diagnosis (diagnosis_name,  description, specialty_id) values ('Hypophosphatasia', 'quisque id justo sit amet sapien dignissim', 9);
insert into diagnosis (diagnosis_name,  description, specialty_id) values ('Demineralization', 'dapibus duis at velit eu est congue', 10);
insert into diagnosis (diagnosis_name,  description, specialty_id) values ('Toothache', 'luctus et ultrices posuere cubilia', 11);
insert into diagnosis (diagnosis_name,  description, specialty_id) values ('Tooth decay', 'habitasse platea dictumst aliquam augue quam sollicitudin vitae', 12);
insert into diagnosis (diagnosis_name,  description, specialty_id) values ('Wedge-shaped defect', 'nulla eget eros elementum pellentesque quisque', 2);
insert into diagnosis (diagnosis_name,  description, specialty_id) values ('Non-carious dental lesions', 'in sagittis dui vel nisl duis ac', 3);
insert into diagnosis (diagnosis_name,  description, specialty_id) values ('Pathological anatomy of hard tissues of the tooth', 'amet nunc viverra dapibus nulla suscipit ligula in', 6);
insert into diagnosis (diagnosis_name,  description, specialty_id) values ('Pathological abrasion of teeth', 'amet nunc viverra dapibus nulla suscipit ligula in', 10);
insert into diagnosis (diagnosis_name,  description, specialty_id) values ('Pulpitis', 'amet nunc viverra dapibus nulla suscipit ligula in', 6);
insert into diagnosis (diagnosis_name,  description, specialty_id) values ('Fluorosis (dentistry)', 'amet nunc viverra dapibus nulla suscipit ligula in', 2);
insert into diagnosis (diagnosis_name,  description, specialty_id) values ('Cementoma', 'amet nunc viverra dapibus nulla suscipit ligula in', 9);
insert into diagnosis (diagnosis_name,  description, specialty_id) values ('Erosion of tooth enamel', 'amet nunc viverra dapibus nulla suscipit ligula in', 4);


insert into patients (first_name, last_name, birth_date, gender, address, mobile_number, email, diagnosis_id ) values ('Robbie', 'Canner', '1993-03-25', 'Male', '21 Starling Place', '8577563847', 'rcanner0@vinaora.com', 1);
insert into patients (first_name, last_name, birth_date, gender, address, mobile_number, email,  diagnosis_id) values ('Hal', 'Ruzicka', '1983-12-07', 'Male', '9570 Karstens Hill', '5969373834', 'hruzicka1@ning.com',2);
insert into patients (first_name, last_name, birth_date, gender, address, mobile_number, email, diagnosis_id) values ('Frederigo', 'Balhatchet', '1979-02-28', 'Male', '72824 Mesta Terrace', '8605036087', 'fbalhatchet2@earthlink.net', 3);
insert into patients (first_name, last_name, birth_date, gender, address, mobile_number, email, diagnosis_id) values ('Elfrida', 'Dunstan', '1990-05-28', 'Female', '5086 Barby Way', '3894776706', 'edunstan3@amazonaws.com', 4);
insert into patients (first_name, last_name, birth_date, gender, address, mobile_number, email, diagnosis_id) values ('Milka', 'Curee', '1988-07-25', 'Female', '1 Graceland Road', '6102292340', 'mcuree4@wikia.com', 5);
insert into patients (first_name, last_name, birth_date, gender, address, mobile_number, email, diagnosis_id) values ('Barton', 'Ortiger', '1983-01-16', 'Male', '41210 Shopko Place', '3783713897', 'bortiger5@theglobeandmail.com', 6);
insert into patients (first_name, last_name, birth_date, gender, address, mobile_number, email, diagnosis_id) values ('Mitchael', 'Darben', '1984-04-11', 'Male', '6221 Scoville Hill', '7163888325', 'mdarben6@ucsd.edu', 7);
insert into patients (first_name, last_name, birth_date, gender, address, mobile_number, email, diagnosis_id) values ('Nertie', 'Cardello', '1982-03-28', 'Female', '5776 Magdeline Crossing', '4918367216', 'ncardello7@who.int', 8);
insert into patients (first_name, last_name, birth_date, gender, address, mobile_number, email, diagnosis_id) values ('Dorian', 'Fer', '1994-07-29', 'Male', '2 Tennessee Alley', '0271729635', 'dfer8@creativecommons.org', 9);
insert into patients (first_name, last_name, birth_date, gender, address, mobile_number, email, diagnosis_id) values ('Scotti', 'Herity', '1973-06-11', 'Male', '4 Kennedy Trail', '5733352019', 'sherity9@typepad.com', 10);
insert into patients (first_name, last_name, birth_date, gender, address, mobile_number, email, diagnosis_id) values ('Kris', 'Peattie', '1990-04-01', 'Female', '88445 Glendale Center', '2684020264', 'kpeattiea@webmd.com', 11);
insert into patients (first_name, last_name, birth_date, gender, address, mobile_number, email, diagnosis_id) values ('Brandy', 'Drane', '1990-12-29', 'Male', '170 Holy Cross Plaza', '4411627663', 'bdraneb@opera.com', 12);
insert into patients (first_name, last_name, birth_date, gender, address, mobile_number, email, diagnosis_id) values ('Zed', 'Cresswell', '1981-08-10', 'Male', '56 Beilfuss Alley', '5455376209', 'zcresswellc@si.edu', 13);
insert into patients (first_name, last_name, birth_date, gender, address, mobile_number, email, diagnosis_id) values ('Lucio', 'Rajchert', '1981-09-27', 'Male', '7954 Pepper Wood Center', '1509954503', 'lrajchertd@ed.gov', 14);
insert into patients (first_name, last_name, birth_date, gender, address, mobile_number, email, diagnosis_id) values ('Tommy', 'Rowbury', '1991-10-03', 'Male', '20 Dennis Junction', '1762806193', 'trowburye@instagram.com', 15);
insert into patients (first_name, last_name, birth_date, gender, address, mobile_number, email, diagnosis_id) values ('John', 'Odell', '1979-08-10', 'Male', '56 Beilfuss Alley', '5455376209', 'zcrevwellc@si.edu', 16);
insert into patients (first_name, last_name, birth_date, gender, address, mobile_number, email, diagnosis_id) values ('Timmy', 'Fletcher', '1996-09-27', 'Male', '7954 Pepper Wood Center', '1509954563', 'lrajwhertd@ed.gov', 17);
insert into patients (first_name, last_name, birth_date, gender, address, mobile_number, email, diagnosis_id) values ('Jack', 'Vorobey', '1999-10-03', 'Male', '20 Dennis Junction', '1782806193', 'trowburrye@instagram.com', 18);

insert into  service ( service_name,  description, price, specialty_id) values ('Acteaminophen, Guaifenesin, Phenylephrine HCl', 'pede morbi porttitor lorem id', '$231.53', 1);
insert into  service ( service_name,  description, price, specialty_id) values ('Buspirone Hydrochloride', 'lectus vestibulum quam sapien varius ut blandit non', '$122.67', 2);
insert into  service ( service_name,  description, price, specialty_id) values ('Diltiazem Hydrochloride', 'aliquam convallis nunc proin at turpis a pede', '$213.85', 3);
insert into  service ( service_name,  description, price, specialty_id) values ('Isopropyl Alcohol', 'donec dapibus duis at velit eu est congue', '$229.54', 4);
insert into  service ( service_name,  description, price, specialty_id) values ('CALCIUM SULFATE ANHYDROUS', 'libero convallis eget eleifend luctus ultricies eu nibh', '$50.82', 5);
insert into  service ( service_name,  description, price, specialty_id) values ('acebutolol hydrochloride', 'congue eget semper rutrum nulla nunc', '$118.71', 6);
insert into  service ( service_name,  description, price, specialty_id) values ('Allantoin', 'sapien non mi integer ac neque', '$113.21', 7);
insert into  service ( service_name,  description, price, specialty_id) values ('Triamterene and Hydrochlorothiazide', 'sapien ut nunc vestibulum ante ipsum', '$211.40', 8);
insert into  service ( service_name,  description, price, specialty_id) values ('Mefloquine Hydrochloride', 'orci nullam molestie nibh in lectus pellentesque at', '$239.71', 9);
insert into  service ( service_name,  description, price, specialty_id) values ('Divalproex Sodium', 'gravida sem praesent id massa id nisl', '$120.85', 10);
insert into  service ( service_name,  description, price, specialty_id) values ('OCTINOXATE, Titanium Dioxide, AVOBENZONE, OCTISALATE, Octocrylene', 'euismod scelerisque quam turpis adipiscing', '$228.69', 11);
insert into  service ( service_name,  description, price, specialty_id) values ('Carduus marianus e fruct. 6 Special Order', 'et ultrices posuere cubilia curae nulla', '$58.29', 12);
insert into  service ( service_name,  description, price, specialty_id) values ('Nefazodone Hydrochloride', 'eleifend donec ut dolor morbi vel', '$99.02', 1);
insert into  service ( service_name,  description, price, specialty_id) values ('PROPOFOL', 'nonummy integer non velit donec diam', '$236.46', 12);
insert into  service ( service_name,  description, price, specialty_id) values ('Glycopyrrolate', 'neque sapien placerat ante nulla justo', '$206.62', 6);


insert into feedback (suggestions, complaint) values ('Polarised bi-directional internet solution', 'Horizontal full-range task-force');
insert into feedback (suggestions, complaint) values ('Persevering intermediate project', 'Organic needs-based frame');
insert into feedback (suggestions, complaint) values ('Optimized stable structure', 'Versatile web-enabled conglomeration');
insert into feedback (suggestions, complaint) values ('Synergized web-enabled open system', 'Open-architected incremental software');
insert into feedback (suggestions, complaint) values ('Enhanced full-range ability', 'Operative dedicated paradigm');
insert into feedback (suggestions, complaint) values ('Programmable eco-centric secured line', 'Universal 6th generation attitude');
insert into feedback (suggestions, complaint) values ('Persistent solution-oriented solution', 'Cross-group next generation infrastructure');
insert into feedback (suggestions, complaint) values ('Face to face systematic hub', 'Intuitive scalable leverage');
insert into feedback (suggestions, complaint) values ('Switchable high-level open architecture', 'Customer-focused foreground challenge');
insert into feedback (suggestions, complaint) values ('Configurable optimizing product', 'Team-oriented secondary attitude');
insert into feedback (suggestions, complaint) values ('Face to face zero administration functionalities', 'Expanded zero tolerance forecast');
insert into feedback (suggestions, complaint) values ('Profit-focused coherent extranet', 'Up-sized bandwidth-monitored benchmark');
insert into feedback (suggestions, complaint) values ('Re-engineered motivating implementation', 'Object-based mobile ability');
insert into feedback (suggestions, complaint) values ('Focused homogeneous website', 'Horizontal leading edge knowledge user');
insert into feedback (suggestions, complaint) values ('Customizable maximized adapter', 'Synergistic real-time Graphic Interface');

insert into reception ( visit_date,  patient_id ) values ('2019-08-27 15:01:24', 1);
insert into reception ( visit_date,  patient_id ) values ('2020-01-14 01:26:29', 2);
insert into reception ( visit_date,  patient_id ) values ('2020-06-04 03:58:19', 3);
insert into reception ( visit_date,  patient_id ) values ('2020-06-06 16:15:00', 4);
insert into reception ( visit_date,  patient_id ) values ('2020-05-14 19:53:17', 5);
insert into reception ( visit_date,  patient_id ) values ('2019-12-09 14:17:24', 6);
insert into reception ( visit_date,  patient_id ) values ('2020-10-15 22:11:43', 7);
insert into reception ( visit_date,  patient_id ) values ('2020-07-17 12:54:36', 8);
insert into reception ( visit_date,  patient_id ) values ('2019-10-17 07:06:17', 9);
insert into reception ( visit_date,  patient_id ) values ('2020-03-26 20:44:03', 10);
insert into reception ( visit_date,  patient_id ) values ('2020-11-06 07:57:47', 11);
insert into reception ( visit_date,  patient_id ) values ('2020-09-26 17:21:25', 12);
insert into reception ( visit_date,  patient_id ) values ('2020-02-27 08:19:42', 13);
insert into reception ( visit_date,  patient_id ) values ('2020-06-20 00:01:11', 14);
insert into reception ( visit_date,  patient_id ) values ('2020-08-27 11:47:10', 15);
insert into reception ( visit_date,  patient_id ) values ('2019-10-29 15:41:54', 16);
insert into reception ( visit_date,  patient_id ) values ('2020-08-18 22:56:36', 17);
insert into reception ( visit_date,  patient_id ) values ('2020-06-17 08:33:27', 18);
 
 SELECT * FROM patients;
  SELECT * FROM reception;
SELECT patients.patient_id, patients.first_name, patients.last_name, diagnosis.diagnosis_name FROM patients FULL OUTER JOIN diagnosis ON patients.diagnosis_id = diagnosis.diagnosis_id;
SELECT reception.reception_number, patients.first_name, patients.last_name,  reception.visit_date FROM patients FULL OUTER JOIN reception ON patients.patient_id = reception.patient_id;

