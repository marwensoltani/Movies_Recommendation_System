CREATE USER 'student'@'%' IDENTIFIED BY 'Metadata0';
GRANT ALL PRIVILEGES ON *.* TO 'student'@'%';


CREATE TABLE `test`.`test_table` (
  `col1` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `col2` VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (`col1`)  COMMENT '')
ENGINE = MyISAM;

INSERT INTO `test`.`test_table` (col2)
VALUES ('Hello'), ('World'); 
