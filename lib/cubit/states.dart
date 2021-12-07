/*
in the states :
1. create abstract class
2. create initial state from abstract class (extends)
3. create class fro each state
*/

abstract class CounterStates {}

class CounterInitialState extends CounterStates {}

class PlusCounterState extends CounterStates {}

class MinusCounterState extends CounterStates {}
