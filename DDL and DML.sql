create database tasks;

create table district(id int,district_name varchar(20),no_of_taluks int,major_rivers varchar(20),pincode int,total_population bigint,
total_area bigint,landmark varchar(25),literacy_rate varchar(5),annual_rainfall varchar(20));

INSERT INTO district VALUES (1, 'Bagalkote', 6, 'Krishna', 587101, 1889752, 6575, 'Badami Caves', '70%', '600-700 mm');
INSERT INTO district VALUES (2, 'Bengaluru Urban', 5, 'Arkavathi', 560001, 9621551, 2190, 'Vidhana Soudha', '89%', '800-900 mm');
INSERT INTO district VALUES (3, 'Belagavi', 10, 'Krishna, Malaprabha', 590001, 4779661, 13415, 'Belagavi Fort', '74%', '1200 mm');
INSERT INTO district VALUES (4, 'Ballari', 7, 'Tungabhadra', 583101, 1400970, 4252, 'Hampi', '67%', '700 mm');
INSERT INTO district VALUES (5, 'Bidar', 5, 'Manjra', 585401, 1703300, 5448, 'Bidar Fort', '71%', '850 mm');
INSERT INTO district VALUES (6, 'Vijayapura', 6, 'Krishna', 586101, 2177331, 10369, 'Gol Gumbaz', '69%', '700-800 mm');
INSERT INTO district VALUES (7, 'Chamarajanagar', 5, 'Kaveri', 571313, 1020791, 5101, 'Biligiri Ranganath Temple', '61%', '900 mm');
INSERT INTO district VALUES (8, 'Chikkamagaluru', 3, 'Tunga, Bhadra', 577101, 1071045, 7202, 'Mullayanagiri', '79%', '1500 mm');
INSERT INTO district VALUES (9, 'Chikkaballapura', 6, 'Penna, Ponnaiyar', 562101, 1024198, 3866, 'Nandi Hills', '68%', '700 mm');
INSERT INTO district VALUES (10, 'Chitradurga', 4, 'Vedavathi', 577501, 1670878, 8440, 'Chitradurga Fort', '73%', '600-700 mm');
INSERT INTO district VALUES (11, 'Dakshina Kannada', 7, 'Netravati, Gurupura', 575001, 2084423, 598, 'Mangaluru Beach', '87%', '3000 mm');
INSERT INTO district VALUES (12, 'Davanagere', 6, 'Siri, Hagari', 577001, 1958542, 4204, 'Chandravalli', '76%', '700 mm');
INSERT INTO district VALUES (13, 'Dharwad', 6, 'Tungabhadra', 580001, 1847023, 4263, 'Unkal Lake', '80%', '800 mm');
INSERT INTO district VALUES (14, 'Gadag', 4, 'Gadag', 582101, 1065215, 4496, 'Trikuteshwara Temple', '73%', '700 mm');
INSERT INTO district VALUES (15, 'Hassan', 8, 'Hemavathi, Yagachi', 573201, 1722039, 6811, 'Hoysala Temples', '75%', '1200 mm');
INSERT INTO district VALUES (16, 'Haveri', 6, 'Varada', 581110, 1597442, 4922, 'Blackbuck Sanctuary', '74%', '800 mm');
INSERT INTO district VALUES (17, 'Kalaburagi', 7, 'Bhima, Kagna', 585101, 2566326, 10951, 'Kalaburagi Fort', '69%', '700 mm');
INSERT INTO district VALUES (18, 'Kodagu', 5, 'Kaveri', 571201, 555985, 4102, 'Abbey Falls', '82%', '3000 mm');
INSERT INTO district VALUES (19, 'Kolar', 4, 'Ponnaiyar', 563101, 1893860, 4020, 'Kolar Gold Fields', '75%', '700 mm');
INSERT INTO district VALUES (20, 'Koppal', 4, 'Tungabhadra', 583231, 1377124, 5417, 'Anegundi', '68%', '650 mm');

DESC district;
Select * from district;

select * from district where major_rivers='Krishna' and no_of_taluks=6;
select * from district where total_area>7802 and literacy_rate='69%';
select * from district where no_of_taluks>7 and literacy_rate>'70%';
select * from district where major_rivers='Malaprabha' and annual_rainfall='900 mm';
select * from district where major_rivers='Tungabhadra' and annual_rainfall>'600 mm';

select * from district where district_name='Ballari' or major_rivers='Krishna';
select * from district where major_rivers='Tungabhadra' or literacy_rate='60%';
select * from district where literacy_rate='69%' or total_area=5448;
select * from district where total_population>2505825 or annual_rainfall='900 mm';
select * from district where no_of_taluks=10 or literacy_rate='75%';

select * from district where id in(1,3,5,7,9,11,15,17,19);
select * from district where literacy_rate in('67%','68%','69%','70%');
select * from district where annual_rainfall in('700 mm','650 mm','850 mm');
select * from district where no_of_taluks in(6,7,10);
select * from district where major_rivers in('Tungabhadra','Krishna','Kaveri');

select * from district where id not in(1,3,5,7,9,11,15,17);
select * from district where literacy_rate not in('67%','68%','69%','70%');
select * from district where annual_rainfall  not in('700 mm','650 mm','850 mm');
select * from district where no_of_taluks not in(6,7,10);
select * from district where major_rivers not in('Tungabhadra','Krishna','Kaveri');

select * from district where id between 12 and 20;
select * from district where literacy_rate between '75%' and '90%';
select * from district where annual_rainfall between '800 mm' and '900 mm';
select * from district where no_of_taluks between 8 and 10;
select * from district where pincode between 570001 and 583101;

select * from district where id not between 12 and 20;
select * from district where literacy_rate not between '75%' and '90%';
select * from district where annual_rainfall not between '800 mm' and '900 mm';
select * from district where no_of_taluks not between 8 and 10;
select * from district where pincode not between 570001 and 583101;



CREATE TABLE wildlife_species (id int,species_name VARCHAR(50),common_name VARCHAR(50),category VARCHAR(30),conservation_status VARCHAR(30),
habitat VARCHAR(50),found_in_district VARCHAR(30),population_estimate int,protected_area VARCHAR(50),threats VARCHAR(100));

INSERT INTO wildlife_species VALUES (1, 'P.tigris', 'Tiger', 'Mammal', 'Endangered', 'Forest', 'Chamaraj', 120, 'Bandipur', 'Poaching');
INSERT INTO wildlife_species VALUES (2, 'E.maximus', 'Elephant', 'Mammal', 'Endangered', 'Forest', 'Kodagu', 1500, 'Nagarhole', 'Conflict');
INSERT INTO wildlife_species VALUES (3, 'M.silenus', 'Macaque', 'Mammal', 'Endangered', 'Evergreen', 'Chikmag', 4000, 'Kudremukh', 'Loss');
INSERT INTO wildlife_species VALUES (4, 'B.gaurus', 'Gaur', 'Mammal', 'Vulnerable', 'Grassland', 'Hassan', 3000, 'Bhadra', 'Hunting');
INSERT INTO wildlife_species VALUES (5, 'A.axis', 'Chital', 'Mammal', 'Least Concern', 'Forest', 'Belagavi', 20000, 'Dandeli', 'Predation');
INSERT INTO wildlife_species VALUES (6, 'C.unicolor', 'Sambar', 'Mammal', 'Vulnerable', 'Forest', 'U.Kannada', 5000, 'Anshi', 'Hunting');
INSERT INTO wildlife_species VALUES (7, 'P.pardus', 'Leopard', 'Mammal', 'Vulnerable', 'Hill', 'Tumakuru', 800, 'BRT', 'Conflict');
INSERT INTO wildlife_species VALUES (8, 'H.leucoryphus', 'FishEagle', 'Bird', 'Vulnerable', 'Wetland', 'Raichur', 200, 'Gudavi', 'Wetland loss');
INSERT INTO wildlife_species VALUES (9, 'P.cristatus', 'Peacock', 'Bird', 'Least Concern', 'Grassland', 'Mandya', 10000, 'Ranganathittu', 'Hunting');
INSERT INTO wildlife_species VALUES (10, 'T.blythii', 'Tragopan', 'Bird', 'Vulnerable', 'Montane', 'Kodagu', 600, 'Brahmagiri', 'Logging');
INSERT INTO wildlife_species VALUES (11, 'P.molurus', 'Python', 'Reptile', 'Near Threatened', 'Wetland', 'Ballari', 1200, 'Daroji', 'Killing');
INSERT INTO wildlife_species VALUES (12, 'V.bengalensis', 'Monitor', 'Reptile', 'Least Concern', 'Scrub', 'Koppal', 5000, 'Gudekote', 'Hunting');
INSERT INTO wildlife_species VALUES (13, 'C.palustris', 'Crocodile', 'Reptile', 'Vulnerable', 'River', 'Bagalkot', 800, 'Almatti', 'Pollution');
INSERT INTO wildlife_species VALUES (14, 'M.ursinus', 'SlothBear', 'Mammal', 'Vulnerable', 'Dry', 'Ballari', 350, 'Daroji', 'Habitat loss');
INSERT INTO wildlife_species VALUES (15, 'T.viridis', 'Trogon', 'Bird', 'Least Concern', 'Ghats', 'Udupi', 2000, 'Kudremukh', 'Logging');
INSERT INTO wildlife_species VALUES (16, 'P.eupatria', 'Parakeet', 'Bird', 'Near Threatened', 'Urban', 'Bengaluru', 1500, 'Bannerghatta', 'Trade');
INSERT INTO wildlife_species VALUES (17, 'O.hannah', 'KingCobra', 'Reptile', 'Vulnerable', 'Ghats', 'Shivamogga', 300, 'Agumbe', 'Persecution');
INSERT INTO wildlife_species VALUES (18, 'R.indica', 'Squirrel', 'Mammal', 'Least Concern', 'Forest', 'U.Kannada', 5000, 'Dandeli', 'Deforestation');
INSERT INTO wildlife_species VALUES (19, 'G.gangeticus', 'Gharial', 'Reptile', 'Critically Endangered', 'River', 'Koppal', 50, 'Tungabhadra', 'Fishing');
INSERT INTO wildlife_species VALUES (20, 'G.indicus', 'Vulture', 'Bird', 'Critically Endangered', 'Cliff', 'Chitradurga', 200, 'Jayamangali', 'Poisoning');


select * from wildlife_species;

select * from wildlife_species where habitat='forest' and population_estimate>5000;
select * from wildlife_species where conservation_status='Vulnerable' and habitat='forest';
select * from wildlife_species where found_in_district='U.Kannada' and threats='Poaching';
select * from wildlife_species where category='Mammal' and found_in_district='Ballari';
select * from wildlife_species where threats='Hunting' and category='Bird';

select * from wildlife_species where category='Mammal' or habitat='Forest';
select * from wildlife_species where conservation_status='Least Concern' or category='Reptile';
select * from wildlife_species where found_in_district='U.Kannada' or habitat='Ghats';
select * from wildlife_species where threats='Hunting' or conservation_status='Vulnerable';
select * from wildlife_species where habitat='River' or population_estimate>400;

select * from wildlife_species where id in(1,3,5,7,9,11);
select * from wildlife_species where category in('Bird','Mammal');
select * from wildlife_species where conservation_status in('Vulnerable','Least Concern');
select * from wildlife_species where habitat in('Forest','Grassland','Dry');
select * from wildlife_species where threats in('Hunting','Poaching','Predation');

select * from wildlife_species where id not in(1,3,5,7,9,11);
select * from wildlife_species where category not in('Mammal','Bird');
select * from wildlife_species where conservation_status not in('Vulnerable','Least Concern');
select * from wildlife_species where habitat not in('Forest','Grassland','Dry');
select * from wildlife_species where threats not in('Hunting','Poaching','Predation');

select * from wildlife_species where id between 7 and 14;
select * from wildlife_species where population_estimate between 300 and 1200;
select * from wildlife_species where protected_area  between 'Agumbe' and 'Anshi';
select * from wildlife_species where habitat between 'Forest' and 'River';
select * from wildlife_species where conservation_status between 'Least Concern' and 'Near Threatened';

select * from wildlife_species where id not between 10 and 20;
select * from wildlife_species where population_estimate not between 300 and 1200;
select * from wildlife_species where found_in_district not between 'Ballari' and 'U.Kannada';
select * from wildlife_species where protected_area not between 'Agumbe' and 'Anshi';
select * from wildlife_species where habitat not between 'Forest' and 'River';

