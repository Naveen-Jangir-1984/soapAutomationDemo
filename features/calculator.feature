Feature: Calculator

    As a user I want to perform some basic operations on calculator

    Scenario Outline: Add two numbers
        Given a number <number1> is entered
        And another number <number2> is entered
        When add button is pressed
        Then result is <result>

        Examples:
        | number1 | number2 | result |
        | 3       | 2       | 5      |
        | 33      | 22      | 55     |
    
    Scenario Outline: Subtract two numbers
        Given a number <number1> is entered
        And another number <number2> is entered
        When subtract button is pressed
        Then result is <result>

        Examples:
        | number1 | number2 | result |
        | 3       | 2       | 1      |
        | 33      | 22      | 11     |
