% Vim, this is Prolog!

roman_arabic(R, A) :- one(R, A), !.
roman_arabic(R, A) :- ten(R, A), !.
roman_arabic(R, A) :- hundred(R, A), !.
roman_arabic(R, A) :- thousand(R, A), !.

% replace it with a grammar!
roman_arabic(R, A) :-
  thousand(RM, M),
  hundred(RH, H),
  ten(RT, T),
  one(RO, O),
  A is O + T + H + M,
  foldl(string_concat, [RO, RT, RH, RM], "", R).

one("IX", 9).
one("VIII", 8).
one("VII", 7).
one("VI", 6).
one("V", 5).
one("IV", 4).
one("III", 3).
one("II", 2).
one("I", 1).
one("", 0).

ten("XC", 90).
ten("LXXX", 80).
ten("LXX", 70).
ten("LX", 60).
ten("L", 50).
ten("XL", 40).
ten("XXX", 30).
ten("XX", 20).
ten("X", 10).
ten("", 0).

hundred("CM", 900).
hundred("DCCC", 800).
hundred("DCC", 700).
hundred("DC", 600).
hundred("D", 500).
hundred("CD", 400).
hundred("CCC", 300).
hundred("CC", 200).
hundred("C", 100).
hundred("", 0).

thousand("M", 1000).
thousand("MM", 2000).
thousand("MMM", 3000).
thousand("", 0).
