[![Test Coverage](https://api.codeclimate.com/v1/badges/a99a88d28ad37a79dbf6/test_coverage)](https://codeclimate.com/github/codeclimate/codeclimate/test_coverage) [![Maintainability](https://api.codeclimate.com/v1/badges/a99a88d28ad37a79dbf6/maintainability)](https://codeclimate.com/github/codeclimate/codeclimate/maintainability)

# The Task

Create a programme that can output a user's bank statement to interact with via a REPL. 

The goal of this challenge is to apply the best practises, including clean code and TDD, to simulate a tech test. As the time is limitied, the focus is on code quality, not necessarily building all the features. 

This programme allows a user to deposit and withdraw an amount from their account and return a bank statement with the details of each transaction. 

![alt text](images/irb_screenshot.png)

### Technlogies

This programme is written in Ruby and tested with RSpec and Timecop. To ensure high code quality, I used Rubocop as a linter, Simplecov for test coverage and Code Climate for readability.

### Quick Setup 
```
- Fork/Clone this repo
- Bundle install
- IRB
- require './lib/bank.rb'
```

### For Testing 
 
```
- Fork/Clone this repo
- Bundle install
- Rspec
```

# My Process

I spent the first hour reading the criteria, setting up the testing environment and starting on the README. I started with writing the simplest tests - depositing and withdrawing - and after they passed, I added in the timestamp. 

I used the gem Timecop to freeze the time according to the criteria but in hindsight I took the criteria too literally. I didn't need to save the dates in my tests to be exactly what was written. I also went back to planning and drew the table out clearly as I realised I had initially missed the differentiation between the Debit and Credit columns. 

Date | Credit | Debit | Balance
 ---- | ------ | ----- | ------
14/01/2012 |  | 500.00 | 2500.00
13/01/2012 | 2000.00 |  | 3000.00
10/01/2012 | 1000.00 |   | 1000.00

If I had more time, I would seperate the bank class into at least one other class, if not two, as the code I have at the moment is repetative and a couple of methods in relation to storing the transactions are longer than I would like. I would draw a class diagram to clearly differentiate the methods for effective encapsulation. Instead of having just the bank class, I would add an account and transaction class.  

I will set up a timer for the next challenge and write my goals for each 30 minute time block in the git wiki. After the time is up I will document what I acheived. 


## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).


### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```