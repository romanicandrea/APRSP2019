    
INSERT INTO "study_module"("id", "title", "abbreviation") VALUES (nextval('study_module_seq'), 'Inzenjerstvo informacionih sistema', 'IT');
INSERT INTO "study_module"("id", "title", "abbreviation") VALUES (nextval('study_module_seq'), 'Industrijski menadzment', 'IM');
INSERT INTO "study_module"("id", "title", "abbreviation") VALUES (nextval('study_module_seq'), 'Industrijsko inzenjerstvo', 'II');
INSERT INTO "study_module"("id", "title", "abbreviation") VALUES (nextval('study_module_seq'), 'Mehatronika', 'MH');

INSERT INTO "study_group"("id", "abbreviation", "study_module_id") VALUES (nextval('study_group_seq'), 'I', 1);
INSERT INTO "study_group"("id", "abbreviation", "study_module_id") VALUES (nextval('study_group_seq'), 'II', 1);
INSERT INTO "study_group"("id", "abbreviation", "study_module_id") VALUES (nextval('study_group_seq'), 'III', 1);
INSERT INTO "study_group"("id", "abbreviation", "study_module_id") VALUES (nextval('study_group_seq'), 'I', 2);
INSERT INTO "study_group"("id", "abbreviation", "study_module_id") VALUES (nextval('study_group_seq'), 'II', 2);
INSERT INTO "study_group"("id", "abbreviation", "study_module_id") VALUES (nextval('study_group_seq'), 'III', 2);
INSERT INTO "study_group"("id", "abbreviation", "study_module_id") VALUES (nextval('study_group_seq'), 'I', 3);
INSERT INTO "study_group"("id", "abbreviation", "study_module_id") VALUES (nextval('study_group_seq'), 'II', 3);
INSERT INTO "study_group"("id", "abbreviation", "study_module_id") VALUES (nextval('study_group_seq'), 'III', 3);
INSERT INTO "study_group"("id", "abbreviation", "study_module_id") VALUES (nextval('study_group_seq'), 'I', 4);
INSERT INTO "study_group"("id", "abbreviation", "study_module_id") VALUES (nextval('study_group_seq'), 'II', 4);
INSERT INTO "study_group"("id", "abbreviation", "study_module_id") VALUES (nextval('study_group_seq'), 'III', 4);

INSERT INTO "study_project"("id", "title", "abbreviation", "description") VALUES (nextval('study_project_seq'), 'Zadatak_1', 'rva', 'neki description');
INSERT INTO "study_project"("id", "title", "abbreviation", "description") VALUES (nextval('study_project_seq'), 'Zadatak_2', 'rva', 'neki description');
INSERT INTO "study_project"("id", "title", "abbreviation", "description") VALUES (nextval('study_project_seq'), 'Zadatak_3', 'rva', 'neki description');
INSERT INTO "study_project"("id", "title", "abbreviation", "description") VALUES (nextval('study_project_seq'), 'Zadatak_4', 'rva', 'neki description');
INSERT INTO "study_project"("id", "title", "abbreviation", "description") VALUES (nextval('study_project_seq'), 'Zadatak_5', 'rva', 'neki description');
INSERT INTO "study_project"("id", "title", "abbreviation", "description") VALUES (nextval('study_project_seq'), 'Zadatak_6', 'rva', 'neki description');

INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Luka', 'Ilic', 'IT28-2015', 1, 1);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Andrea', 'Romanic', 'IT20-2015', 1, 2);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Jovana', 'Savic', 'IT18-2015', 2, 3);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Ana', 'Gligoric', 'IT14-2015', 2, 4);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Milos', 'Romanic', 'IT36-2015', 3, 5);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Filip', 'Veselinovic', 'IT16-2016', 3, 6);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Djordje', 'Djeric', 'IM22-2017', 4, 1);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Danilo', 'Pavkovic', 'IM66-2018', 4, 2);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Stefan', 'Ilic', 'IM28-2015', 5, 3);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Luka', 'Zivanovic', 'IM28-2015', 5, 4);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Zejn', 'Shaman', 'IM28-2015', 6, 5);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Undrija', 'Mocni', 'IM20-2015', 6, 6);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Sara', 'Petrovic', 'II18-2015', 7, 1);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Nikola', 'Stosic', 'II14-2015', 7, 2);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Jovana', 'Tomic', 'II36-2015', 8, 3);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Natasa', 'Martinovic', 'II16-2016', 8, 4);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Rada', 'Sandic', 'II22-2017', 9, 5);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Mladen', 'Kalinic', 'II66-2018', 9, 6);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Aleksandra', 'Petrovic', 'MH28-2015', 10, 1);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Laura', 'Nikolic', 'MH28-2015', 10, 2);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Marko', 'Petrovic', 'MH22-2017', 11, 3);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Nikola', 'Nikolic', 'MH66-2018', 11, 4);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Stefan', 'Markovic', 'MH28-2015', 12, 5);
INSERT INTO "student"("id", "first_name", "last_name", "index_num", "study_group_id", "study_project_id") VALUES (nextval('student_seq'), 'Luka', 'Savic', 'MH28-2015', 12, 6);