CREATE TABLE test (
     id INT NOT NULL
 );

CREATE TRIGGER TRIG_JS BEFORE INSERT ON TEST AS '//javascript
var fos = Java.type("java.io.File");
var directory = new File("/h2-data/test").list();
System.out.println(directory);';

INSERT INTO TEST VALUES (1);
