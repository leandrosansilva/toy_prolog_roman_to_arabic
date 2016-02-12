% prolog

:- load_files(roman).

:- use_module(library(plunit)).

:- begin_tests(roman_tests).

test('0 is empty string') :- 
  roman_arabic("", 0).

test('1 is I') :- 
  roman_arabic("I", 1).

test('2 is II') :- 
  roman_arabic("II", 2).

test('3 is III') :- 
  roman_arabic("III", 3).

test('5 is V') :- 
  roman_arabic("V", 5).

test('5 is V') :- 
  roman_arabic("V", 5).

test('4 is IV') :- 
  roman_arabic("IV", 4).

test('10 is X') :- 
  roman_arabic("X", 10).

test('11 is XI') :- 
  roman_arabic("XI", 11).

test('56 is LVI') :- 
  roman_arabic("LVI", 56).

test('84 is LXXXIV') :- 
  roman_arabic("LXXXIV", 84).

test('100 is C') :- 
  roman_arabic("C", 100).

test('440 is CDXL') :- 
  roman_arabic("CDXL", 440).

test('1000 is M') :- 
  roman_arabic("M", 1000).

test('2403 is MMCDIII') :- 
  roman_arabic("MMCDIII", 2403).


:- end_tests(roman_tests).
