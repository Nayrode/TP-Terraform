import os
import boto3

sns = boto3.client('sns')

message = os.environ['SNS_MESSAGE']

topic_arn = os.environ['TOPIC_ARN']

params = {
    'Message': message,
    'TopicArn': topic_arn
}

response = sns.publish(**params)

if 'MessageId' in response:
    print('Message published successfully:', response['MessageId'])
else:
    print('Failed to publish message:', response['ResponseMetadata']['HTTPStatusCode'])