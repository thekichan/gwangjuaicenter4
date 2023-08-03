-- file name : test.sql
-- pwd : /project_name/app/schema/test.sql
 
CREATE DATABASE testsmart;
 
use testsmart;
 
CREATE TABLE smarttable(
    idx      INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    test     VARCHAR(256) NOT NULL
)