from zeep import Client
from behave import given, when, then

wsdl = 'http://www.dneonline.com/calculator.asmx?wsdl'
client = Client(wsdl=wsdl)

@given('a number {number1:d} is entered')
def step_impl(context, number1):
    context.number1 = number1

@given('another number {number2:d} is entered')
def step_impl(context, number2):
    context.number2 = number2

@when('add button is pressed')
def step_impl(context):
    context.result = client.service.Add(context.number1, context.number2)

@when('subtract button is pressed')
def step_impl(context):
    context.result = client.service.Subtract(context.number1, context.number2)

@then('result is {result:d}')
def step_impl(context, result):
    assert context.result == result, 'Operation Failed !'