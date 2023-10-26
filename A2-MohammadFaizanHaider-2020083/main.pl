:- use_module(library(pairs)).

/*


append([],X,X).
append([H|T],X,[H|Z]) :- append(T,X,Z).


findall bfs below

bfs(Source,Destination,CurrentSolution):- 

   write("In bfs"),nl,call(distance(Source,Destination,_); distance(Destination,Source,_)), !,
         write(CurrentSolution),append(CurrentSolution,[Destination],NewSolution),write("Line 1  "),write(NewSolution);
    write("Line 2 "),distance(Source,X,_),not(member(X,CurrentSolution)),append(CurrentSolution,[X],NewSolution),bfs(X,Destination,NewSolution).


bfs(Source,Destination,CurrentSolution, Distance):- 

   (
       (distance(Source,Destination,_); distance(Destination,Source,_)),write(CurrentSolution),append(CurrentSolution,[Destination],NewSolution),write("Distance is   "),write(Distance),nl,write(NewSolution);
       write("Line 2 "),findall(Node,(distance(Source,Node,_);distance(Node,Destination,_),not(member(X,CurrentSolution))),List),write(List),processNodesfromList(List,CurrentSolution,Destination,Distance)
   ).


bfs(Source,Destination,CurrentSolution):- 

   write("In bfs"),nl,call(distance(Source,Destination,_); distance(Destination,Source,_)), !,
         write(CurrentSolution),append(CurrentSolution,[Destination],NewSolution),write("Line 1  "),write(NewSolution);
    write("Line 2 "),distance(Source,X,_),not(member(X,CurrentSolution)),append(CurrentSolution,[X],NewSolution),bfs(X,Destination,NewSolution).



Algorithm -
    Look for all 20 options if you haven't already been there,

    bfs(Source,Destination,CurrentSolution, Distance):- 


    write("Distance is"),write(Distance),nl,
       findall(Node,((distance(Source,Node,_);distance(Node,Source,_)),not(member(Node,CurrentSolution))),List),
       sort(List,AdvancedList),write(CurrentSolution),nl,processNodesfromList(AdvancedList,CurrentSolution,Destination,Distance,Source).
   
         

*/
/*
TODO


    Remove Unnecessay comments
    Make it presnetable
    Remove print statements


    bfs is wrong right now
    bfs right now is kinda like astar ? Turn it into bfs
    Add distance so that best out of the paths can be chosen
    Print best path


    best first search
    Study what best first search is
    Implement it


     Best-First-Search(Graph g, Node start)
    1) Create an empty PriorityQueue
       PriorityQueue pq;
    2) Insert "start" in pq.
       pq.insert(start)
    3) Until PriorityQueue is empty
          u = PriorityQueue.DeleteMin
          If u is the goal
             Exit
          Else
             Foreach neighbor v of u
                If v "Unvisited"
                    Mark v"Visited"                    
                    pq.insert(v)
             Mark u "Examined"                    
End procedure



A* Search Algorithm
1.  Initialize the open list
2.  Initialize the closed list
    put the starting node on the open 
    list (you can leave its f at zero)

3.  while the open list is not empty
    a) find the node with the least f on 
       the open list, call it "q"

    b) pop q off the open list
  
    c) generate q's 8 successors and set their 
       parents to q
   
    d) for each successor
        i) if successor is the goal, stop search
        
        ii) else, compute both g and h for successor
          successor.g = q.g + distance between 
                              successor and q
          successor.h = distance from goal to 
          successor (This can be done using many 
          ways, we will discuss three heuristics- 
          Manhattan, Diagonal and Euclidean 
          Heuristics)
          
          successor.f = successor.g + successor.h

        iii) if a node with the same position as 
            successor is in the OPEN list which has a 
           lower f than successor, skip this successor

        iV) if a node with the same position as 
            successor  is in the CLOSED list which has
            a lower f than successor, skip this successor
            otherwise, add  the node to the open list
     end (for loop)
  
    e) push q on the closed list
    end (while loop)

*/

checkSource(Source, Response):-
    call(distance(Source,_,_)), !,
    Response = 1;
    write('Source City Doesen\'t exist... Terminating Program'), fail.


checkDestination(Destination, DestResponse) :-
    call(distance(Destination,_,_)), !,
    DestResponse = 1;
    nl,write('Destination City Doesen\'t exist... Terminating Program'), fail.


member(X,[X|_]).
member(X,[H|T]):- member(X,T).



solve(Source, Destination):-
    append([],[Source],Solution),bfs(Destination,[],Solution,0).



:- use_module(library(pairs)).

sort_atoms_by_length(Atoms, ByLength) :-
        map_list_to_pairs(atom_length, Atoms, Pairs),
        keysort(Pairs, Sorted),
        pairs_values(Sorted, ByLength).

bubble_sort(List,Sorted):-b_sort(List,[],Sorted).
b_sort([],Acc,Acc).
b_sort([H|T],Acc,Sorted):-bubble(H,T,NT,Max),b_sort(NT,[Max|Acc],Sorted).
   
bubble(X,[],[],X).
bubble(X,[Y|T],[Y|NT],Max):-X>Y,bubble(X,T,NT,Max).
bubble(X,[Y|T],[X|NT],Max):-X=<Y,bubble(Y,T,NT,Max).


   
pivoting(H,[],[],[]).
pivoting(H,[X|T],[X|L],G):-X=<H,pivoting(H,T,L,G).
pivoting(H,[X|T],L,[X|G]):-X>H,pivoting(H,T,L,G).

quick_sort2(List,Sorted):-q_sort(List,[],Sorted).
q_sort([],Acc,Acc).
q_sort([H|T],Acc,Sorted):-
	pivoting(H,T,L1,L2),
	q_sort(L1,Acc,Sorted1),q_sort(L2,[H|Sorted1],Sorted).



weirdListSort(Weirdlist, ListWanted):-
    keysort(Weirdlist, ListWanted).

naive_sort(List,Sorted):-perm(List,Sorted),is_sorted(Sorted).
   
is_sorted([]).
is_sorted([_]).
is_sorted([X,Y|T]):-X=<Y,is_sorted([Y|T]).

perm([],[]).
perm(L,[H|T]) :-
    append(V,[H|U],L),
    append(V,U,W), perm(W,T).



checkNotMajor(City,CityResponse):-
    call(distance(_,City,_)), !,
    CityResponse = 1;
    CityResponse = 2.

memberKeyValuePair(List,Key,Val):-
    pairs_keys_values(List,Key,Val).

topOflist([H|T],Top):- Top = H.

bfs(Destination,CurrentSolution,[Head|RestOfQueue],Dist):- 
    
    call(distance(Head,Destination,D); distance(Destination,Head,D)), !,
         append(CurrentSolution,[Head,Destination],NewSolution),nl,write('Path Traversed is '),write(NewSolution),nl,write('Distance Traverelled is '),K is Dist + D,write(K);

    
    findall(X,((distance(Head,X,D);distance(X,Head,D)),not(member(X,CurrentSolution))),List),append(RestOfQueue,List,NewSolution),topOflist(NewSolution,Node),(distance(Head,Node,T);distance(Node,Head,T)),append(Solution,[Head],Comeon),K is Dist + T,bfs(Destination,Comeon,NewSolution,K).



processNodesfromList([],CurrentSolution,Destination,Distance,Source).
processNodesfromList([H|T],CurrentSolution,Destination,Distance,Source) :-
    append(CurrentSolution,[H],NewSolution),checkNotMajor(H,CityResponse),
    (
        CityResponse == 1 ->distance(Source,H,X),NewDistance is Distance + X,bfs(H,Destination,NewSolution,NewDistance),processNodesfromList(T,CurrentSolution,Destination,Distance,Source);
        CityResponse == 2 ->processNodesfromList(T,CurrentSolution,Destination,Distance,Source)
    ).
    

/*
    bfs(Current Node, Node I have to reach, Current Solution that i have)
    bfs(Source,Destination,Solution,0).
    Solution is [Source] at this stage
    => what this means is, while processing, Source is already in list of visited nodes

    astar(Node,Node,Psf,CurrentDistance):- write(Psf).

astar(Source,Destination,Psf) :-
    write("This is A* search"),createHeuristic(Source,Destination,List),
    bubble_sort(List),findNode(List,Node),
    append(Psf,[Node],NewPsf),astar(Node,Destination,NewPsf).
*/

swapLists(List1,List2) :- List2 is List1.

createFirstHeuristic(Source,ExistingHeuristics, NewHeuristics,ExistingHeuristicsNode,SourceDistance) :- 
    % Return a list containing the f(Node) values for the neighbor of Source
    findall( Dist - Node,
        ((heuristic(Source,Node,CityDistance,Distance);heuristic(Node,Source,CityDistance,Distance)),not(member(Node,ExistingHeuristics)),(Dist is Distance  + CityDistance)) ,
        NodeList),append(ExistingHeuristicsNode,NodeList,NodeA), 
        weirdListSort(NodeA , Solution),
        append([],Solution,NewHeuristics).

astar(Source,Destination,Psf,DistanceTravelled,Heuristics) :-
    heuristic(Source,Destination,D,_),append(Psf,[Destination],NewPsf),write('Path Taken is '),write(NewPsf),nl, write('Distance Travelled is '),K is DistanceTravelled + D,write(K),nl.

astar(Source,Source,Psf,DistanceTravelled,Heuristics):- write('Path Taken is '),write(Psf),nl, write('Distance Travelled is '),write(DistanceTravelled),nl.

astar(Source, Destination, Psf,DistanceTravelled,Heuristics):-
    createFirstHeuristic(Source,Psf,[Head|NewHeuristics],Heuristics,DistanceTravelled),pairs_keys_values([Head],[Key],[Values]),
    (member(Values,Psf),astar(Values,Destination,Psf,DistanceTravelled,NewHeuristics) ;
    append(Psf,[Values],NewPsf),NewDistance is DistanceTravelled + Key,astar(Values,Destination,NewPsf,NewDistance,NewHeuristics)).
/*

createHeuristic(Source,Destination,HeuristicList,HeuristicNodeList,List):- Return List with f + g values
    findall(Distance,(heuristics(Source,Destination,_,Distance);heuristics(Destination,Source,_,Distance)), )

findNode :- Given list with sorted f+g values, return Node

    There is a gap in my understanding about A* search
    Steps
    Make a PQ
     Pick the start Node, calculate the f(Node) for each neighbouring node and push into PQ
     Pop from PQ and add to Path of that Node, repeat till goal is reached
*/




start:-
    write("Welcome to Shortest Route Calculator"),nl,write("Enter the name of the source city"),nl,read(Source),checkSource(Source,Response),(
        Response == 1 -> write("Enter the name of the destination city"),nl,read(Destination),nl,checkDestination(Destination,DestResponse),(
            DestResponse == 1 -> write("How do you want to search for path ?"),nl,write("           Enter 1 for Breadth First Search"),nl,write("           Enter 2 for A* First Search"),nl,write("           Any other response leads to termination"),nl,read(Choice),nl,(
                Choice == 1 -> write("choice is 1"),nl,solve(Source,Destination),nl,write("Search Ended");
                Choice == 2 -> write("choice is 2"),nl,astar(Source,Destination,[Source],0,[]),nl,write("Search Ended");
                write("choice is None Of The Above"),nl
            )
        ) 

        
    ).