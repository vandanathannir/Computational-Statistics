FILENAME utility 'downloads/utility.dat';
DATA utility;
	INFILE utility obs=10;
	INPUT MONTH $ YEAR TELEPHONE ELECTRICITY FUEL;
RUN;
PROC PRINT data=utility; TITLE 'Descriptive Statistics for Utilities'; 
RUN;

DATA utility2;
	SET utility;
RUN;
PROC univariate data=utility2;
	TITLE 'Descriptive Statistics for Utilities'; 
	var Telephone Fuel;
RUN;


FILENAME china 'downloads/china.dat';
DATA china;
	INFILE china;
	INPUT YEARS TOTAL EXPORTS IMPORTS;
RUN;
PROC PRINT DATA=china;
RUN;

DATA china2;
	SET china;
	Trade_Balance = EXPORTS - IMPORTS;
RUN;
PROC PRINT data = china2; 
RUN;

DATA china3;
	SET china2;
RUN;
PROC Univariate data = china3; 
	var Imports Exports Trade_Balance;
	histogram; 
RUN;

DATA china4;
	SET china2;
RUN;
PROC Univariate data = china4; 
	var Exports;
	histogram /
	midpoints= 0 to 4 by 4; 
RUN;

