FILENAME china 'downloads/china.dat';
DATA china;
	INFILE china obs=10;
	INPUT YEARS TOTAL EXPORTS IMPORTS;
RUN;

PROC PRINT DATA=china;
RUN;
DATA china2;
	SET china;
	TradeBalance = EXPORTS - IMPORTS;
    IF 1950<=YEARS<1960 THEN OUTPUT china2;
RUN;
PROC PRINT data = china2; 
	var TradeBalance Years;
RUN;
DATA china3;
    SET china2;
	IF 1950<=YEARS<1960 THEN OUTPUT china3;
	IF 1980<=YEARS<1990 THEN OUTPUT china3;
RUN;
PROC means DATA = china3 mean; 
	var TradeBalance;
RUN;
PROC means DATA = china3 STD; 
	var TradeBalance;
RUN;


FILENAME handinj 'downloads/handinj.dat';
DATA handinj;
	INFILE handinj obs=10;
	INPUT ID$ Type $ Days Cost;
RUN;
PROC PRINT DATA=handinj;
RUN;

DATA handinj2;
    SET handinj;
    COST = 1.54 * COST;
RUN;
PROC PRINT data = handinj2; 
RUN; 

DATA handinj3;
	If type = 'sport' then output handinj3;
RUN;
PROC SORT DATA = handinj OUT = handinj3;
    BY DESCENDING Days; 
RUN;
PROC PRINT DATA = handinj3;
	var ID DAYS;
RUN; 
