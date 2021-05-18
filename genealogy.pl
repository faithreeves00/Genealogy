man(abraham).
man(isaac).
man(jacob).
man(judah).
man(perez).
man(zerah).
man(hezron).
man(ram).
man(amminadab).
man(nahshon).
man(salmon).
man(boaz).
man(obed).
man(jesse).
man(david).
man(solomon).
man(rehoboam).
man(abijah).
man(asa).
man(jehoshaphat).
man(joram).
man(uzziah).
man(jotham).
man(ahaz).
man(hezekiah).
man(manasseh).
man(amon).
man(josiah).
man(jeconiah).
man(shealtiel).
man(zerubbabel).
man(abiud).
man(eliakim).
man(azor).
man(zadok).
man(achim).
man(eliud).
man(eleazar).
man(matthan).
man(jacob). 
man(joseph).
man(jesus).

woman(tamar).
woman(rahab).
woman(ruth).
woman(mary).

father(abraham, isaac).
father(isaac, jacob).
father(jacob, judah).
father(judah, perez).
father(judah, zerah).
father(perez, hezron).
father(hezron, ram).
father(ram, amminadab).
father(amminadab, nahshon).
father(nahshon, salmon).
father(salmon, boaz).
father(boaz, obed).
father(obed, jesse).
father(jesse, david).
father(david, solomon).
father(solomon, rehoboam).
father(rehoboam, abijah).
father(abijah, asa).
father(asa, jehoshaphat).
father(jehoshaphat, joram).
father(joram, uzziah).
father(uzziah, jotham).
father(jotham, ahaz).
father(ahaz, hezekiah).
father(hezekiah, manasseh).
father(manasseh, amon).
father(amon, josiah).
father(josiah, jeconiah).
father(jeconiah, shealtiel).
father(shealtiel, zerubbabel).
father(zerubbabel, abiud).
father(abiud, eliakim).
father(eliakim, azor).
father(azor, zadok).
father(zadok, achim).
father(achim, eliud).
father(eliud, eleazar).
father(eleazar, matthan).
father(matthan, jacob).
father(jacob, joseph).
father(joseph, jesus).

mother(tamar, perez).
mother(tamar, zerah).
mother(rahab, boaz).
mother(ruth, obed).
mother(mary, jesus).

siblings(perez, zerah).

% find the father of any man: enter the name of the man whose father you would like to find
father(X) :- father(Y, X), write(Y), write(' is the father of '), write(X).

% find the son of any man: enter the name of the man whose son you would like to find
son(Y) :- father(Y, X), write(X), write(' is the son of '), write(Y).

% find the grandfather of any man: enter the name of the man whose grandfather you would like to find
grandfather(X) :- father(Y, X), father(Z, Y), write(Z), write(' is the grandfather of '), write(X).

% find the mother of any man: enter the name of the man whose mother you would like to find
mother(X) :- mother(Y, X), write(Y), write(' is the mother of '), write(X).

% determine whether siblings: enter the names of two men
checkSiblings(Y, X) :- siblings(Y, X) ; siblings(X, Y).

% lists all pairs of siblings
listSiblings :- siblings(Y, X), write(Y), write(' and '), write(X), write(' are siblings').

% lists all men
listMen :- man(Y), write(Y).

% lists all women
listWomen :- woman(Y), write(Y).