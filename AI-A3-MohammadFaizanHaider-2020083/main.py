# Write a python program using durable-rules module with forward-chaining rules for
# career advisory system for a graduating student of IIITD based on courses done, grades
# got & interest areas. Make your own rules & test it out with facts.
# 2. By doing this system right, you will learn about a proactive AI system that will take data
# in & suggest possible career options for that student based on forward-chaining rules.

# Made by 
# Faizan Haider
# 2020083

from durable.lang import *

class pair:
    def __init__(self,subject,grade) -> None:
        self.subject = subject
        self.grade = grade

# RuleSet for subjects that have been studied

with ruleset('subject'):

    @when_all((m.choice == "dsa") & (m.grade > 7))
    def dsa(c):
        
        c.assert_fact({'action':'Pursue','predicate':'Freelancing','object':'development roles'})
        c.assert_fact({'action':'Pursue','predicate':'jobs','object':'SDE role'})
    
    @when_all(( m.choice == "ada") & (m.grade > 7))
    def dsa(c):
        
        c.assert_fact({'action':'Pursue','predicate':'Freelancing','object':'development roles'})
        c.assert_fact({'action':'Pursue','predicate':'jobs','object':'SDE role'})


    @when_all((m.choice == "vdc" ) & (m.grade > 7))
    def design(c):
        
        c.assert_fact({'action':'Pursue','predicate':'Freelancing','object':'design roles'})
        c.assert_fact({'action':'Pursue','predicate':'jobs','object':'UI/UX development roles'})

    @when_all(( m.choice == "dpp") & (m.grade > 7))
    def design(c):
        
        c.assert_fact({'action':'Pursue','predicate':'Freelancing','object':'design roles'})
        c.assert_fact({'action':'Pursue','predicate':'jobs','object':'UI/UX development roles'})

    @when_all((m.choice == "gt" ) & (m.grade > 7))
    def eco(c):
       
        c.assert_fact('interest',{'activity':'entrepreneur'})
        c.assert_fact({'action':'Pursue','predicate':'jobs','object':'Strategic roles'})

    @when_all(( m.choice == "eco") & (m.grade > 7))
    def eco(c):
       
        c.assert_fact('interest',{'activity':'entrepreneur'})
        c.assert_fact({'action':'Pursue','predicate':'jobs','object':'Strategic roles'})
    
    @when_all((m.choice == "aco" ) & (m.grade > 7))
    def hardware(c):
        
        c.assert_fact('interest',{'activity':'hardwareResearch'})
        c.assert_fact({'action':'Pursue','predicate':'jobs','object':'Hardware engineer'})

    @when_all(( m.choice == "sns") & (m.grade > 7))
    def hardware(c):
        
        c.assert_fact('interest',{'activity':'hardwareResearch'})
        c.assert_fact({'action':'Pursue','predicate':'jobs','object':'Hardware engineer'})
    

    @when_all((m.choice == "ml") & (m.grade > 7))
    def machinelearning(c):
       
        c.assert_fact({'action':'Pursue','predicate':'research','object':'Machine Learning'})
        c.assert_fact({'action':'Pursue','predicate':'jobs','object':'SDE role'})
    
    @when_all(( m.choice == "dl" ) & (m.grade > 7))
    def machinelearning(c):
       
        c.assert_fact({'action':'Pursue','predicate':'research','object':'Deep Learning'})
        c.assert_fact({'action':'Pursue','predicate':'jobs','object':'SDE role'})

    @when_all(( m.choice == "nn") & (m.grade > 7))
    def machinelearning(c):
       
        c.assert_fact({'action':'Pursue','predicate':'research','object':'Neural Networks'})
        c.assert_fact({'action':'Pursue','predicate':'jobs','object':'SDE role'})

    @when_all((m.choice == "fcs") & (m.grade > 7))
    def fcs(c):
        
        c.assert_fact({'action':'Pursue','predicate':'research','object':'System Security'})
        c.assert_fact({'action':'Pursue','predicate':'jobs','object':'Security engineer'})

    @when_all(( m.choice == "vda" ) & (m.grade > 7))
    def youtube(c):
        
        c.assert_fact({'action':'Pursue','predicate':'Freelancing','object':'Video editing'})
        c.assert_fact({'action':'Pursue','predicate':'jobs','object':'VFX Artist'})

    @when_all((  m.choice == "adp") & (m.grade > 7))
    def youtube(c):
       
        c.assert_fact({'action':'Pursue','predicate':'Freelancing','object':'Video editing'})
        c.assert_fact({'action':'Pursue','predicate':'jobs','object':'VFX Artist'})


    @when_all(m.grade >= 9)
    def topper(c):
        
        c.assert_fact('interest',{'activity':'Masters'})
        c.assert_fact('interest',{'activity':'MBA'})
        c.assert_fact('interest',{'activity':'Teaching'})
    
    @when_all(m.grade <= 7)
    def notTopper(c):
        
        c.assert_fact('interest',{'activity':'BankExams'})
        c.assert_fact('interest',{'activity':'GovernmentJobsExams'})
        c.assert_fact('interest',{'activity':'entrepreneur'})
    


    @when_all(+m.action)
    def output(c):
        print('Fact: {0} {1} in {2}'.format(c.m.action, c.m.predicate, c.m.object))

# RuleSet created for interests
# Masters Mba Teaching BankExams GovernmentJobsExams Entrepreneur HardwareResearch

with ruleset('interest'):
	
    @when_all(m.activity == 'Masters')
    def Masters(e):
        e.assert_fact({'subject':'Study further','predicate':'Masters Course'})

    @when_all(m.activity == 'Mba')
    def Mba(e):
        e.assert_fact({'subject':'Study further','predicate':'MBA Course'})

    @when_all(m.activity == 'Teaching')
    def Teaching(e):
        e.assert_fact({'subject':'Prepare','predicate':'Teaching Profession'})

    @when_all(m.activity == 'BankExams')
    def BankExams(e):
        e.assert_fact({'subject':'Prepare','predicate':'Bank offical examinations'})

    @when_all(m.activity == 'GovernmentJobsExams')
    def BankExams(e):
        e.assert_fact({'subject':'Prepare','predicate':'Government Jobs exams'})

    @when_all(m.activity == 'entrepreneur')
    def BankExams(e):
        e.assert_fact({'subject':'Build','predicate':'Entreprenuial Occupation'})

    
    @when_all(m.activity == 'hardwareResearch')
    def BankExams(e):
        e.assert_fact({'subject':'Study','predicate':'Hardware Research Areas'})



    @when_all(+m.subject)
    def output(e):
        print('Fact: {0} for {1}'.format(e.m.subject, e.m.predicate))

    

		
def getCourses(gpa):
    subjectDict = {1:'dsa', 2:'ada', 3:'vdc', 4:'dpp', 5:'gt', 6:'eco', 7:'sns', 8:'aco', 9:'ml', 10:'dl', 11:'nn', 12:'fcs', 13:'vda', 14:'adp' }
    subjectsDone = []
    interestDict = {1:'Masters', 2:'Mba', 3:'Teaching', 4: 'BankExams', 5:'GovernmentJobsExams', 6: 'entrepreneur', 7:'hardwareResearch'}
    interestList = []
    notTopper = False
    try:
        print("Please enter the index of the courses that you have done. Enter -1 when you have entered all relevant courses")
        course = 0
        print(" 1. Data Structures & Algorithms\n 2. Algorithm Design & Analysis\n 3. Visual Design & Concepts\n 4. Design Perspective & Practices\n 5. Game Theory\n 6. Econometrics\n 7. Signals & Systems\n 8. Advanced Computer Organisation \n 9. Machine Learning\n 10. Deep Learning\n 11. Neural Networks\n 12.Foundations Of Computer Security \n 13. Video Design & Animation\n 14. Audio design principles ")
        while (course != -1):
            
            
            course = int(input("Please choose a subject from the above list: "))
            if (course != -1):
                courseGrade = int(input("Please enter your grade in the selected subject: "))
                if (courseGrade <= 7):
                    notTopper = True
                subjectsDone.append(pair(course,courseGrade))
                # try:
                #     assert_fact('interests', {'interest':6, 'grade':2})

                # except BaseException as e:
                #     print('Your grade does not satisfy the criteria for taking courses based on your Interest! You need to work hard on grade!' )
            
        # print("While loop exit")
        print("Please choose an interest from the below list. Enter -1 if not interested in any")
        print("1. Masters Degree \n 2. MBA\n 3.Teaching\n 4. Bank Exams \n 5. Government Service Jobs \n 6. Entrepreneurship \n 7. Hardware Research")
        interest = int(input())
        for x in subjectsDone:
           
            
            assert_fact('subject',{'choice':subjectDict[x.subject],'grade':x.grade})
        if (interest != -1 & notTopper == False):
            assert_fact('interest',{'activity':interestDict[interest]})

    except Exception as e:
        print(e)
        print("Incorrect option entered. Retrying.... ")
        getCourses(gpa)
    

def intro():
    try:
        print("Welcome to Career advisory System - ")
        print("We will suggest possible career options based on your gpa, & the courses you have done, & your fields of interest.")
        print("Please enter your gpa ( <= 10 ) to begin")
        gpa = float(input())
        getCourses(gpa)
        

    except Exception as e:
        print(e)
        print("Incorrect gpa entered. Please enter again")
        intro()
    


if __name__ == '__main__':
    intro()