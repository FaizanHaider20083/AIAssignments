quick_sort([],[]).
quick_sort([H|T],Sorted):-
	pivoting(H,T,L1,L2),quick_sort(L1,Sorted1),quick_sort(L2,Sorted2),
	append(Sorted1,[H|Sorted2]).
   
pivoting(H,[],[],[]).
pivoting(H,[X|T],[X|L],G):-X=<H,pivoting(H,T,L,G).
pivoting(H,[X|T],L,[X|G]):-X>H,pivoting(H,T,L,G).

quick_sort2(List,Sorted):-q_sort(List,[],Sorted).
q_sort([],Acc,Acc).
q_sort([H|T],Acc,Sorted):-
	pivoting(H,T,L1,L2),
	q_sort(L1,Acc,Sorted1),q_sort(L2,[H|Sorted1],Sorted).


naive_sort(List,Sorted):-perm(List,Sorted),is_sorted(Sorted).
   
is_sorted([]).
is_sorted)[_]).
is_sorted([X,Y|T]):-X=<Y,is_sorted([Y|T]).

perm([],[]).
   perm(L,[H|T]) :-
    append(V,[H|U],L),
    append(V,U,W), perm(W,T).