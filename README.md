# Bank Test

## Installation

Dependencies:

This application uses rspec, simplecov and rubocop in order to run tests and lint code.

Before running the application, bundle install in order to install these test gems on your machine.

Testing:

In order to run the rspec tests included in the project, enter the rspec command.

To run the code linter, run the rubocop command.

Running the program:

In order to instantiate a new Account and its Balance dependency, run <your account name> = Account.new(Balance.new)

From here, you may deposit (<your account name>.deposit(<amount>)), withdraw (<your account name>.withdraw(<amount>)), and view your statement (<your account name>.view_statement).