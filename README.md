# Bank Test

## Installation

Dependencies:

This application uses rspec, simplecov and rubocop in order to run tests and lint code.

Before running the application, bundle install in order to install these test gems on your machine.

Testing:

In order to run the rspec tests included in the project, enter the rspec command.

To run the code linter, run the rubocop command.

Running the program:

In order to run the account manager, begin by instantiating an Account class that will handle deposits and withdrawals: account = Account.new

Next, instantiate a Balance class with your Account class as its argument. This Balance class will generate a transaction history for you. balance = Balance.new(account)

Finally, instantiate a Statement class with the Balance class and then the Account class as its arguments. This will allow you to generate a readable statement that will sum up your transaction history.

In order to make a deposit:

account.deposit(AMOUNT)

In order to make a withdrawal:

account.withdraw(AMOUNT)

In order to total your current balance:

balance.total

In order to print your statement:

statement.print

Below is an example of the manager in action:



## Approach

In order to ensure complete separation of concerns, 3 classes were used. The Account tackled the most basic day-to-day usage of the account: Despositing and Withdrawing money. It was therefore the most granular and low-level class.

The Balance class would be used a little less often, as it would total up the grand sum of money in the account.

Finally, the statement would only be used when the user wanted an easy to read output summarizing all of their interactions with their account. It would therefore be the most high-level class.