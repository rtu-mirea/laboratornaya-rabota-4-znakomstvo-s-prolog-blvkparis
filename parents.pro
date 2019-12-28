domains	
	s=symbol 
predicates
	nondeterm parent(s,s)
	female(s)
  	male(s)
  	mother(s,s)
  	father(s,s)
  	nondeterm ancestor(s,s)
  	child(s,s)
  	grandfather(s,s)
  	grandmother(s,s)
  	nondeterm brother(s,s)
  	sister(s, s)
clauses
	parent(pam,bob).	/* pam - bob's parent */
	parent(tom,bob).
	parent(tom,liz).
	parent(pam,liz).
	parent(bob,ann).
	parent(bob,pat).
	parent(pat,jim).
	parent(clara,george).
	parent(joseph,george).
	parent(mark,joseph).
	female(pam).	/* pam - female */
	female(liz).
	female(ann).
	female(pat).
	female(clara).
	male(tom).	/* tom - male */
	male(bob).
	male(jim).
	male(george).
	male(joseph).
	male(mark).
	child(Y,X):- parent(X,Y). /* Y - child of X, if X - parent of Y */
	mother(X,Y):- parent(X,Y),female(X). /* X - mother of Y, if X - parent of Y and X - female */
	father(X,Y):- parent(X,Y),male(X). /* X - father of Y, if X - parent of Y and X - male */
	ancestor(X,Z):- parent(X,Z).	/* X - ancestor Z, X - relative Z */
	ancestor(X,Z):-	parent(X,Y),ancestor(Y,Z). 
	grandfather(X,Y):- parent(Z,Y),parent(X,Z),male(X).
  	grandmother(X,Y):- parent(Z,Y),parent(X,Z),female(X).
  	sister(X,Y):- parent(Z,X), parent(Z,Y),female(X),X<>Y.
  	brother(X,Y):- parent(Z,Y),parent(Z,X),male(X),X<>Y.
goal
	%grandfather(mark,george).
  	%male(george).
  	%child(george,joseph).
  	%child(clerk,joseph).
  	%ancestor(mark,george).
  	%sister(liz,bob).
  	brother(bob,liz).
