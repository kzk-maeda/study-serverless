import boto3
   
dynamodb = boto3.resource('dynamodb')
table    = dynamodb.Table('question_table')
   
def get_question(id):
    response = table.get_item(
            Key={
                 'question_id': id
            }
        )
    return response['Item']


def get_questions():
    response = table.scan()
    return response['Items']
           

def hello(event, context):
    return get_questions() if event['question_id'] == '' else get_question(event['question_id'])
