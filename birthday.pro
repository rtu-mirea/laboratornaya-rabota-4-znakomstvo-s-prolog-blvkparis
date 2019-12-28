domains 
	a=symbol 
	b=integer 
predicates 
	birthday(a,b,a) 
	likes(a,a) 
clauses birthday(nataly, 8, september). 
	birthday(yana, 25, august). 
	birthday(nina, 28, september). 
	birthday(peter, 2, august). 
	birthday(ivan, 12, august). 
	likes(nataly, books). 
	likes(nataly, sport). 
	likes(yana, books). 
	likes(yana, dances). 
	likes(peter, music). 
	likes(peter, dances). 
	likes(ivan, sport). 
	likes(ivan, books). 
goal 
	birthday(ivan, Num, Month).
	birthday(Who, Num, september).
	likes(Who, music).
	likes(yana, What).
	birthday(Who, 25, august).
	likes(peter, What).
	
	