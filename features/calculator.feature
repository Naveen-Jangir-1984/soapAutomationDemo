Feature: Calculator

    As a user I want to perform basic operations on calculator

    Scenario Outline: Add two numbers
        Given a number <number1> is entered
        And another number <number2> is entered
        When add button is pressed
        Then result is <result>

        Examples:
        | number1 | number2 | result |
        | 4       | 2       | 6      |
        | 44      | 22      | 66     |
    
    Scenario Outline: Subtract two numbers
        Given a number <number1> is entered
        And another number <number2> is entered
        When subtract button is pressed
        Then result is <result>

        Examples:
        | number1 | number2 | result |
        | 4       | 2       | 2      |
        | 44      | 22      | 22     |
    
    Scenario Outline: Divide two numbers
        Given a number <number1> is entered
        And another number <number2> is entered
        When divide button is pressed
        Then result is <result>

        Examples:
        | number1 | number2 | result |
        | 4       | 2       | 2      |
        | 44      | 22      | 2      |
    
    Scenario Outline: Multiply two numbers
        Given a number <number1> is entered
        And another number <number2> is entered
        When multiply button is pressed
        Then result is <result>

        Examples:
        | number1 | number2 | result |
        | 4       | 2       | 8      |
        | 44      | 22      | 968    |
