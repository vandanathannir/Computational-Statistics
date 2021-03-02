options NODATE linesize = 78;
data mydata;
input Name $ Score1 Score2 Score3 Score4 Score5 Final;
DATALINES;
Gamma1 11.25 9.75 10 10 10 90
Delta1 9.5 7.5 8 10 10 95
Epsilon1 11.5 10 9.75 3.5 10 100
Theta1 12.5 10 9.5 9 10 100
;
run;
proc print data=mydata;
    var Name Score3 Final;
run;



options NODATE linesize = 78;
data mydata;
input Name $ Score1 Score2 Score3 Score4 Score5 Final@@;
DATALINES;
Gamma1 11.25 9.75 10 10 10 90 Delta1 9.5 7.5 8 10 10 95
Epsilon1 11.5 10 9.75 3.5 10 100 Theta1 12.5 10 9.5 9 10 100
;
run;
proc print data=mydata;
run;




options linesize = 78;
data mydata2;
input 	Name $			 1-18 
		from $			 20-30 
		to 	$			 32-41 
		pounds_million $ 43-47
;
datalines;
Benjamin Mendy     Monaco      Man City   52.0 
Alvaro Morata      Real Madrid Chelsea    58.0 
Romelu Lukaku      Everton     Man United 75.0 
Onsmane Dembele    Dortmund    Barcelona  97.0 
Philippe Countinho Liverpool   Barcelona  105.0
Neymar             Barcelona   PSG        199.8
;
run;
proc print data=mydata2;
run;
