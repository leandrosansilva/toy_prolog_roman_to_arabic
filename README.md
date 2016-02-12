# Roman numbers to arabic (and vice-versa) implementation in Prolog

Yes, I am still learning Prolog, and decided to do something light this evening.
You know, Friday night, day to party.... wait. Program in Prolog! :-)

This solution is veeery slow, but I think it's very elegant and simple :-)

Enjoy!

I used swi-prolog to implement it, but I believe it runs in other interpreters.

Usage:

```prolog
?- [roman].
?- roman_arabic("MMCDIII", N).
N = 2403 .

?- roman_arabic(R, 2016).
R = "MMXVI" .
```

To find all possible numbers:
```prolog
findall((R, N), (between(0, 3999, N), roman_arabic(R, N)), S), print(S).
```
