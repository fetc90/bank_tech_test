[![Test Coverage](https://api.codeclimate.com/v1/badges/a99a88d28ad37a79dbf6/test_coverage)](https://codeclimate.com/github/codeclimate/codeclimate/test_coverage) [![Maintainability](https://api.codeclimate.com/v1/badges/a99a88d28ad37a79dbf6/maintainability)](https://codeclimate.com/github/codeclimate/codeclimate/maintainability)

# The Task

Create a simple programme to output a user's bank statement.

### Quick Setup 

In your terminal:
```
- Fork/Clone this repo
- Bundle install
- IRB
- require './lib/bank.rb'
```

### Testing 
 
```
- Fork/Clone this repo
- Bundle install
- Rspec
```

To ensure high code quality, this programme uses Rubocop, Simplecov and Code Climate.

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

![Tracking pixel](https://githubanalytics.herokuapp.com/course/individual_challenges/bank_tech_test.md)


### Process

Realised I wasn't adhering to the specification in terms of recording time the deposit was added. 

I had a Bank class and realised I needed to seperate it into two classes: Bank and Account. 