from zeep import Client
from behave import given, when, then

wsdl = "http://calculator-webservice.mybluemix.net/calculator?wsdl"
client = Client(wsdl=wsdl)

@given('a number {number1:d} is entered')
def step_impl(context, number1):
    context.number1 = number1

@given('another number {number2:d} is entered')
def step_impl(context, number2):
    context.number2 = number2

@when('add button is pressed')
def step_impl(context):
    context.result = client.service.add(context.number1, context.number2)    
#     context.result = context.number1 + context.number2

@when('subtract button is pressed')
def step_impl(context):
    context.result = client.service.subtract(context.number1, context.number2)    
#     context.result = context.number1 - context.number2

@when('divide button is pressed')
def step_impl(context):
    context.result = client.service.divide(context.number1, context.number2)    
#     context.result = context.number1 / context.number2

@when('multiply button is pressed')
def step_impl(context):
    context.result = client.service.multiply(context.number1, context.number2)    
#     context.result = context.number1 * context.number2

@then('result is {result:d}')
def step_impl(context, result):
    assert context.result == result, 'Operation Failed !'
