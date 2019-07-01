[![Test Coverage](https://api.codeclimate.com/v1/badges/a99a88d28ad37a79dbf6/test_coverage)](https://codeclimate.com/github/codeclimate/codeclimate/test_coverage) [![Maintainability](https://api.codeclimate.com/v1/badges/a99a88d28ad37a79dbf6/maintainability)](https://codeclimate.com/github/codeclimate/codeclimate/maintainability)

# The Task

Create a programme that can output a user's bank statement to interact with via a REPL. 

The goal of this challenge is to apply the best practises, including clean code and TDD, to simulate a tech test. As the time is limitied, the focus is on code quality, not necessarily building all the features. 

This programme allows a user to deposit and withdraw an amount from their account and return a bank statement with the details of each transaction. 

### Technlogies
----

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
----


# My Process

I was able to output the user's statement however I need to work on formatting the table. At the moment, the transactions fall under the credit column instead of the debit if the transaction is a deposit.

![alt text](images/irb_screenshot.png)


Date | Credit | Debit | Balance
 ---- | ------ | ----- | ------
14/01/2012 |  | 500.00 | 2500.00
13/01/2012 | 2000.00 |  | 3000.00
10/01/2012 | 1000.00 |   | 1000.00



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