DROP TABLE IF EXISTS study_module CASCADE;
DROP TABLE IF EXISTS study_group CASCADE;
DROP TABLE IF EXISTS study_project CASCADE;
DROP TABLE IF EXISTS student CASCADE;

DROP SEQUENCE IF EXISTS study_module;
DROP SEQUENCE IF EXISTS study_group;
DROP SEQUENCE IF EXISTS study_project;
DROP SEQUENCE IF EXISTS student;

CREATE TABLE study_module(
	id integer NOT NULL,
    title varchar(100) NOT NULL,
    abbreviation varchar(50) NOT NULL
);

CREATE TABLE study_group(
	id integer NOT NULL,
    abbreviation VARCHAR(10) NOT NULL,
    study_module integer NOT NULL
);

CREATE TABLE study_project(
	id integer NOT NULL,
    title varchar(100) NOT NULL,
    abbreviation varchar(10) NOT NULL,
    description varchar(500) NOT NULL

);

CREATE TABLE student(
	id integer NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    index_num varchar(20).
    study_group integer NOT NULL
    study_project integer NOT NULL

);

ALTER TABLE study_module ADD CONSTRAINT PK_study_module
	PRIMARY KEY(id);
ALTER TABLE study_group ADD CONSTRAINT PK_study_group
	PRIMARY KEY(id);
ALTER TABLE study_project ADD CONSTRAINT PK_study_project
	PRIMARY KEY(id);
ALTER TABLE student ADD CONSTRAINT PK_student
	PRIMARY KEY(id);

ALTER TABLE study_group ADD CONSTRAINT FK_study_group_study_module
	FOREIGN KEY (study_module) REFERENCES study_module (id);
ALTER TABLE student ADD CONSTRAINT FK_student_study_group
	FOREIGN KEY (study_group) REFERENCES study_group (id);
ALTER TABLE student ADD CONSTRAINT FK_student_study_project
	FOREIGN KEY (study_project) REFERENCES study_project (id);

CREATE INDEX IDXFK_study_group_study_module
	ON study_group (study_module);
CREATE INDEX IDXFK_student_study_group
	ON student (study_group);
CREATE INDEX IDXFK_student_study_project
	ON student (study_project);
	
CREATE SEQUENCE study_module_seq
INCREMENT 1;
CREATE SEQUENCE study_group_seq
INCREMENT 1;
CREATE SEQUENCE study_project_seq
INCREMENT 1;
CREATE SEQUENCE student_seq
INCREMENT 1;
