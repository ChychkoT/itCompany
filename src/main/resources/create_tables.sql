CREATE TABLE EMPLOOYES(
    ID INT NOT NULL AUTO_INCREMENT,
    NAME_EMPLOOYE VARCHAR(45) NOT NULL,
    DATE_OFBIRTH DATE NOT NULL,
	SALARY INT NOT NULL,
    PRIMARY KEY ( ID )
    );
    
    CREATE TABLE ADDRESS(
    ID INT NOT NULL AUTO_INCREMENT,
    COUNTRY VARCHAR(45) NOT NULL,
    CITY VARCHAR(45) NOT NULL,
	STREET VARCHAR(45) NOT NULL,
    HOUSE VARCHAR(45) NOT NULL,
    PRIMARY KEY ( ID ),
    FOREIGN KEY (ID) REFERENCES EMPLOOYES (ID)
    );
    
	CREATE TABLE ADMINISTRATION(
    ID INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY ( ID ),
    FOREIGN KEY (ID) REFERENCES EMPLOOYES (ID)
    );
    
    CREATE TABLE MARKETING(
    ID INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY ( ID ),
    FOREIGN KEY (ID) REFERENCES EMPLOOYES (ID)
    );
    
    CREATE TABLE DEVELOPMENT(
    ID INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY ( ID ),
    FOREIGN KEY (ID) REFERENCES EMPLOOYES (ID)
    );
    
    CREATE TABLE DIRECTORS(
    ID INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY ( ID ),
    FOREIGN KEY (ID) REFERENCES EMPLOOYES (ID)
    );
    
    CREATE TABLE HRMANAGERS(
    ID INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY ( ID ),
    FOREIGN KEY (ID) REFERENCES EMPLOOYES (ID)
    );
    
    CREATE TABLE MARKETOLOGS(
    ID INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY ( ID ),
    FOREIGN KEY (ID) REFERENCES EMPLOOYES (ID)
    );
    
    CREATE TABLE SALES(
    ID INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY ( ID ),
    FOREIGN KEY (ID) REFERENCES EMPLOOYES (ID)
    );
    
    CREATE TABLE BACKENDS(
    ID INT NOT NULL AUTO_INCREMENT,address
    PRIMARY KEY ( ID ),
    FOREIGN KEY (ID) REFERENCES EMPLOOYES (ID)
    );
    
    CREATE TABLE FRONTENDS(
    ID INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY ( ID ),
    FOREIGN KEY (ID) REFERENCES EMPLOOYES (ID)
    );
   COMMIT;
   
    
    