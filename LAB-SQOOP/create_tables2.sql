
create database test2;

CREATE TABLE test_table (
  col1 INT NOT NULL AUTO_INCREMENT COMMENT '',
  col2 VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (col1)  COMMENT '')
ENGINE = MyISAM;

INSERT INTO `test2`.`test_table` (col2)
VALUES ('Hello'), ('World');
