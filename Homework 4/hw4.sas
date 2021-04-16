FILENAME utility 'downloads/utility.dat';
DATA utility;
	INFILE utility;
	INPUT MONTH $ YEAR TELEPHONE ELECTRICITY FUEL;
RUN;
PROC PRINT data=utility; 
RUN;

PROC MEANS data=utility N MEAN STD T PRT;
VAR TELEPHONE;
RUN;

FILENAME handinj 'downloads/handinj.dat';
DATA handinj;
	INFILE handinj;
	INPUT ID$ Type $ Days Cost;
RUN;
PROC PRINT DATA=handinj;
RUN;

PROC ANOVA DATA=handinj;
CLASS DAYS TYPE;
MODEL DAYS = TYPE = "sport" TYPE= "work" TYPE = "sport"*TYPE= "work";;
MODEL DAYS = TYPE = "sport"|TYPE= "work";
MEANS TYPE /tukey;
RUN;
