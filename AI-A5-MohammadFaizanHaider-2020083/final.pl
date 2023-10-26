:-dynamic(recommend/1).
start:-consult('facts.txt'),recommend(X),write(X).