CREATE TABLE PRONUNCIATIONS(
	id INTEGER,  
	symbol varchar(50) NOT NULL,
	audio varchar(50),
	count INTEGER default 0,
	is_correct boolean NOT NULL,
	term INTEGER NOT NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP, 
	updated_at timestamp DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT PK_PRONUNCIATIONS_ID PRIMARY KEY(ID),
	CONSTRAINT FK_TERMS_ID FOREIGN KEY(term) REFERENCES TERMS(ID)
);