


/*
1. Create an electives advisory  prediction system in Prolog for BTech or MTech student of
IIITD. It needs to advise a student on what electives to take given the career they want
to pursue and the pre-requisites that they have done.
2. Advisory system here refers to a system that will take some inputs from the student and
ask further questions to narrow down choices and then suggest to the student the
appropriate electives. Prediction system here refers to a system that will take all inputs
and then suggest to the student a list of choices with some ranking. DO NOT build a
machine learning system here. We need you to write Prolog clauses and show explicit
knowledge representation and reasoning.
3. You are free to make your own rules regarding career and assert your own facts. For
example, you can consider Subjects, Marks, Grades, Extra-curricular activities, Interest
areas, Aptitude, Opportunities, Projects done, BTP/MTP/dissertation/thesis, Extra
credits, Extra courses done etc. (you are free to choose what you want and name it the
way you want or even create new parameters).
4. Take data from the electives options that students have for various streams in IIITD.
5. You should use Prolog features such as Lists, Input Output, Recursion, Backtracking,
Binding etc.
6. Should work for different inputs for different students. That is don’t make it hard-coded
for one student input.
7. Make your own prediction  advisory system. Make it as good as you can, but the
advise prediction should be useful and practical.
8. You are free to make the program as interesting and as complex as you want – or you
can keep it of moderate complexity (don’t make it simple as that will not demonstrate
your Prolog understanding and skills; and also it really won’t have any reasoning so will
not be a good “AI” program; and will not fetch you marks).
9. Use of some inputs from references below can be useful for an effective prediction 
advisory system. However, you are not bound to use it.
10. Prolog program should work as marks will be based on the working demo of the
program and your explanation of the program.

11. Marks will be awarded for the assignment as follows: Working program (2 marks),
complexity of the program  kind of Prolog features used (3 marks -- to award marks for
non-trivial programs), kind of advice generated (1 mark), ingenuity used (1 mark).
Demonstrate the program to your assigned TAs.
12. User Interface will be the Prolog interface.
13. You should submit a ZIP file consisting of the program and a pdf file listing the program
and sample screenshots of its working. Name the ZIP file as: AI-A1-<Name>-<RollNo>

References that may be useful in planning career related electives.
1. https://iiitd.ac.in/sites/default/files/docs/placements/2020/Placement%20Brochure%2
02020-21.pdf
2. https://www.prospects.ac.uk/job-profiles/data-analyst
3. https://www.northeastern.edu/graduate/blog/career-in-artificial-intelligence
4. https://jobs.smartrecruiters.com/BoschGroup/743999716898847-phd-combined-
reasoning-and-learning-approaches

write('What are your plans for your future -\n 1. Sit for placements \n 2. Pursue Masters \n 3. Pursue MBA Run a startup,'),nl,
    read(Future),nl,
*/


elective('Machine Learning',5,['IP','LA','PNS','M3/RA'],['csai','cse'],'Research').
elective('Big Data Analytics',5,['DBMS'],['cse','csam'],'Jobs').
elective('Data Mining',5,['DBMS','PS','M1'],['cse'],'Research').
elective('Mobile Computing',5,[],['cse'],'Research').
elective('Security and Privacy',5,[],['cse'],'Security').
elective('Foundations of Computer Security ',5,['CN'],['cse'],'Security').
elective('Communication Networks',5,[],['ece'],'Research').
elective('Digital Signal Processing',5,['SNS'],['ece'],'Research').
elective('Internet of Things',5,[],['ece'],'Research').
elective('Foundations of Finance',5,[],['cse','ece','csam','csd','csb','csss','csai'],'Economics').
elective('Economics',5,[],['ece'],'Economics').
elective('Digital Hardware Design',5,['ELD'],['ece'],'Research').
elective('Theory of Deep Learning',5,['SML','ML'],['cse','ece'],'Research').
elective('Radar Systems',5,['SNS'],['ece'],'Research').
elective('Number Theory',5,[],['csam'],'Mathematical Research').
elective('Numerical Methods',5,['M1','M4'],['csam'],'Mathematical Research').
elective('Digital Image Processing',5,['M1','PS'],['cse','csd','csss'],'Design').
elective('Computer Vision',5,['M2'],['cse','csd'],'Design').
elective('Machine Learning in BioMedical Applications',5,[],['cse','csb'],'HealthCare Research').
elective('Data Mining in HealthCare',5,[],['cse','csb'],'HealthCare Research').
elective('Introduction to mathematical biology',5,['M1'],['cse','csb'],'HealthCare Research').
elective('Data Science in Genomics',5,[],['cse','csb'],'HealthCare Research').
elective('Enterprenuial Khichdi',5,[],['cse','ece','csam','csd','csb','csss','csai'],'HealthCare Research').
elective('Managing Businesses',5,[],['cse','ece','csam','csd','csb','csss','csai'],'HealthCare Research').
elective('Modern Algorithm Design',5,['ADA','AP'],['cse','ece','csam','csd','csb','csss','csai'],'Jobs').
elective('Alogirthm Apporximation',5,['ADA','AP'],['cse','ece','csam','csd','csb','csss','csai'],'Jobs').
elective('Advanced Algorithms',5,['ADA','AP'],['cse','ece','csam','csd','csb','csss','csai'],'Jobs').

elective('Computational Methods in Oncology Research',6,['MLBA'],['cse','csb'],'HealthCare Research').
elective('Computer aided drug design',6,[],['cse','csb'],'HealthCare Research').
elective('BioStatistics',6,[],['cse','csb'],'HealthCare Research').
elective('Network Security',6,[],['cse'],'Security').
elective('Decision Procedures',6,[],['cse','csd'],'Design').
elective('Wireless Networks',6,['CN','AP'],['ece'],'Research').
elective('GPU Programming',6,['CV'],['cse','csd'],'Research').
elective('Theory of Modern Cryptology',6,['CN'],['cse'],'Security').
elective('Probalistic Computation Methods',6,['CN'],['cse'],'Research').
elective('Meta Learning',6,[],['cse'],'Research').
elective('Topics of Advanced Cybersecurity',6,['FCS'],['cse'],'Security').
elective('Game Design and development',6,['DDV'],['csd'],'Design').
elective('Introduction to 2d animation',6,['VDC'],['csd'],'Design').
elective('Semantic Web',6,[],['ece','cse'],'Research').
elective('Effective Computing',6,[],['csd','cse'],'Jobs').
elective('Probabalistic Theory',6,[],['csam'],'Mathematical Research').
elective('Combinatoric Methods',6,['M1','M4'],['csam'],'Mathematical Research').
elective('Advanced Human Computer Interactions',6,['HCI'],['cse,csai'],'Design').
elective('Elimination System for Dynamic Systems',6,['AP'],['cse'],'Jobs').
elective('Game Theory',6,[],['csam'],'Economics').
elective('Startup Supremacy',6,[],['cse','ece','csam','csd','csb','csss','csai'],'Economics').
elective('Creativity Innovation and Inventive Problem Solving',6,[],['cse','ece','csam','csd','csb','csss','csai'],'Economics').
elective('Cloud Computing',6,['ADA','AP'],['cse','ece','csam','csd','csb','csss','csai'],'Jobs').
elective('Parallel Computing',6,['ADA','AP'],['cse','ece','csam','csd','csb','csss','csai'],'Jobs').
elective('Optimizations in Computing',6,['ADA','AP'],['cse','ece','csam','csd','csb','csss','csai'],'Jobs').





contains([X|_],X).
contains([_|Y],X) :- contains(Y,X).

addToList([],T,T).
addToList([H|T],H2,[H|L]) :- addToList(T,H2,L).




printList([]).
printList([H|T]) :- write(H),nl,printList(T).

advice(Name,1):-
    write('Here are the electives that the college has to offer :- '),nl,findall(Subject,elective(Subject,_,_,_,_),List),printList(List).
    

advice(Name,2):- 
    format('Choice is 2 ~w',[Name]),nl,
    write('Enter your branch of study: (cse/csai/csd/csam/csb/csss/ece)'),nl,
    read(Branch),nl,
    write('Enter your semester of study (1/2/3/4/5/6/7/8)'),nl,
    read(Semester),nl,
    
    ai(Name,Semester,Branch).

ai(Name,Semester,Branch):-
    ( Semester == 1 -> write('First Semester has no electives. Enjoy while you can.'),nl ; 
      Semester == 2 -> secondSem(Branch);
      Semester == 3 -> thirdSem(Branch);
        Semester == 4 -> fourthSem(Branch);
       (Semester == 5 ; Semester == 7) -> fifthSem(Branch,5);
      (Semester == 6 ;Semester == 8 )-> fifthSem(Branch,6)
    ).


advice(Name,3).



advice(Name,Choice):-
    write('Incorrect Choice. Please try again. '),nl, start.



rerun(Name):- 
    format('Hello ~w. How can Elective Select help you today ?',[Name]),nl,
    write('1. List available electives for you. 2. Help choose an elective. 3. Exit'),nl,
    read(Choice),nl,
    advice(Name, Choice).

secondSem(Branch):- 
    
    ( (Branch == 'csd' ; Branch == 'csss' ) -> write('You don\'t have any electives this semester. Thank you for using our tool'),nl ;
    (Branch == 'cse' ; Branch == 'ece' ; Branch == 'csam' ; Branch == 'csai'; Branch == 'csb') ->  write('Recommended ssh electives'),nl,printList(['Nations and Narrative','Money and Banking','Environment and ethics']),nl,write('Do you have interest in literature ? y/n'),nl,read(N),(
        N == 'y' -> write('You should choose Nation and Narratives for this semester');
        write('Do you have interest in finance ? y/n'),nl,read(F),(
            F == 'y' -> write('You should choose Money and Banking for this semester');
            write('You should choose Environment and Ethics for this semester')
        )
    );
    write('Incorrect Branch entered')
    
    ).
    
thirdSem(Branch) :- 
    ( (Branch == 'csb' ; Branch == 'csss'; Branch == 'csai' ) -> write('You don\'t have any electives this semester. Thank you for using our tool'),nl ;
    Branch == 'csd' -> write('Recommended Mathematics Elective. Neither choice will deter/promote your career path. No you don\'t have a lot of options. '),printList(['Multivariate Calculus','Discrete Mathematics','Real Analysis']),nl,write('Given below are ssh subjects'),printList(['Research Methods in Social Science and Design','Sociology','KCES','Perceptions in Society']);
    Branch == 'csam' -> write('You have a technical elective and a ssh subject. Neither choice will deter/promote your career path. Given the subjects in their order of increasing difficulty.\nGiven below are technical subjects. '),nl,printList(['Multivariate Calculus','Discrete Structures']),nl,write('Here are recommendations for Ssh courses'),nl,printList(['Research Methods in Social Science and Design','Sociology','KCES','Perceptions in Society']);
    Branch == 'cse' -> write('You have 2 electives this semester. One is a ssh choice, the other is between a Maths and an Electronics subject.'),nl,write('Which subject motivates you more ? Maths or Electronics (m/e)'),nl,read(CseThirdSem),nl,write('Technical Elective for the third semester is '),(
        CseThirdSem == 'm' -> write('Multivariate Calculus');
        CseThirdSem == 'e' -> write('Signal And Systems')
    ),nl,write('Your ssh electives are '),nl,printList(['Research Methods in Social Science and Design','Sociology','KCES','Perceptions in Society']);
    Branch == 'ece' -> write('You can choose Advanced Programming or from a list of ssh\'s for this semester. '),nl, write('Do you have interest in Programming ? Or do you want to go forward for a technical career ? (y/n)'),nl,read(EceThirdSem),nl,write('Your recommendations for the third semester are '),nl,
        (EceThirdSem == 'y' -> printList(['Advanced Programming']);
        printList(['Research Methods in Social Science and Design','Sociology','KCES','Perceptions in Society'])
        );
    
    write('Incorrect Branch entered')
    
    ).

fourthSem(Branch) :- 
    ( (Branch == 'csb' ; Branch == 'csss'; Branch == 'ece' ) -> write('You don\'t have any electives this semester. Thank you for using our tool'),nl ;
    (Branch == 'csd'; Branch == 'csai') -> write('Do you want to go into Machine Learning ? (y/n)'),nl,read(CsdML),nl, (
        CsdML == 'y' -> write('Technical Elective for this semester should be Maths IV');
        write('Do you want to go into computer hardware ? y/n'),nl,read(CsdCh),nl,(
            CsdCh == 'y' -> write('Technical Elective for this semester should be Theory of Computation'),nl;
            write('Pick any of the ssh'),nl,printList(['Information Technology and Society','Science Technology and Society','Ethics in AI'])
        )
    );
    Branch == 'csam' -> write('Do you want to go into Machine Learning ? (y/n)'),nl,read(CsdML),nl, (
        CsdML == 'y' -> write('Technical Elective for this semester should be Maths IV');
        write('Do you want to go into computer hardware ? y/n'),nl,read(CsdCh),nl,(
            CsdCh == 'y' -> write('Technical Elective for this semester should be Theory of Computation'),nl;
            write('Do you want to go into Software Development ? y/n '),nl,read(CsamSDE),nl,
            (
                CsamSDE == 'y' -> write('Graph Theory');
                write('Pick any of the ssh'),nl,printList(['Information Technology and Society','Science Technology and Society','Ethics in AI'])
            )
            
        )
    );
    Branch == 'cse' -> write('Do you want to go into Machine Learning ? (y/n)'),nl,read(CsdML),nl, (
        CsdML == 'y' -> write('Technical Elective for this semester should be Maths IV');
        write('Do you want to go into computer hardware ? y/n'),nl,read(CsdCh),nl,(
            CsdCh == 'y' -> write('Technical Elective for this semester should be Theory of Computation'),nl;
            write('Do you want to go into Software Development ? y/n '),nl,read(CsamSDE),nl,
            (
                CsamSDE == 'y' -> write('Technical Elective for this semester should be Graph Theory');
                write('Pick any of the ssh'),nl,printList(['Information Technology and Society','Science Technology and Society','Ethics in AI'])
            )
            
        )
    ),nl, write('Do you want to do a design course this sem ? (y/n)'),nl,read(Var1),nl, (
        Var1 == 'y' -> write('Second Elective for this semester should be Prototyping Interactive Systems');
        write('Do you want to go into statistics ? y/n'),nl,read(Var2),nl,(
            Var2 == 'y' -> write('Second Elective for this semester should be Statistical Machine Learning'),nl;
            write('Do you want to study Maths ? y/n '),nl,read(Var3),nl,
            (
                Var3 == 'y' -> write('Second Elective for this semester should be Abstract Algebra');
                write('Since you are so picky, then pick any of the ssh'),nl,printList(['Information Technology and Society','Science Technology and Society','Ethics in AI'])
            )
            
        )
    );
    write('Incorrect Branch entered')
    
    ).

fifthSem(Branch,Semester):-
    write('What is your future career trajectory'),nl,write('1. Research/ Higher Education\n2. Software Engineering Jobs\n3. MBA\n4. Security '),nl,read(Career),(
        Career == 1 -> research(Branch,Semester);
        Career == 2 -> utility('Jobs',Semester);
        Career == 3 -> utility('Economics',Semester);
        Career == 4 -> utility('Security',Semester)
        

    ).
branchInRequired(Branch,[],Ans) :- Ans = 0.
branchInRequired(Branch,[Branch|T],Ans) :- Ans = 1.
branchInRequired(Branch, [H|T], Ans) :- branchInRequired(Branch,T,Ans).


    utility(Domain,Semester):- 
        findall(Subject,(elective(Subject,Semester,_,_,Domain),checkPreReq(Subject)),List),printList(List).
        

checkPreReq(Subject):- 
    elective(Subject,_,List,_,_),askPreReq(List,Can),(
        Can == 'True' -> write('')
        
    ).


askPreReq([],Can) :- Can = 'True'.
askPreReq([H|T],Can):- 
    write('Did you score more than 7 in '),write(H),write(' ? If you didn\'t have the subject answer no. (y/n)'),nl,read(Ans),nl,
    (
        Ans == 'y' -> askPreReq(T,Can)
        
    ).





    research(Branch,Semester) :- 
        write('What is your future Research Domain'),nl,write('1. HealthCare Research\n2. Mathematical Research\n3. Technical Research \n4. Design Research'),nl,read(Research),nl,(
        Research == 1 -> listResearch('HealthCare Research',Semester);
        Research == 2 -> listResearch('Mathematical Research',Semester);
        Research == 3 -> listResearch('Research',Semester);
        Research == 4 -> listResearch('Design',Semester)
        

    ).

    listResearch(Domain,Semester) :-
    findall(Subject,(elective(Subject,Semester,_,_,Domain),checkPreReq(Subject)),List),printList(List),nl,write('It is recommended that you should do a btp to improve chances of success in research\n Have you done a btp before ? y/n'),nl,read(Btp),(
        Btp == 'y' -> write('You\' re all set. All the best for your elective.');
        write('You should pick up a btp in one of the above subjects')
    ).
        

test:- 
    forall(elective(Subject,5,_,_,_),asserta(subjects(Subject))).

start :- 
    retractall(subjects(R)),write('Welcome to Elective Select - Expert AI System'),nl,write('Please enter your name '),
    read(Name),nl,
    format('Hello ~w. How can Elective Select help you today ?',[Name]),nl,
    write('1. List all available electives. 2. Help choose an elective. 3. Exit.'),nl,
    read(Choice),nl,
    advice(Name, Choice).

    

