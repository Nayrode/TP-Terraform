const AWS = require('aws-sdk');

const sns = new AWS.SNS();

const message = 'Hello, world!';

const topicArn = SNS_TOPIC_ARN;

const params = {
    Message: message,
    TopicArn: topicArn
};

sns.publish(params, (err, data) => {
    if (err) {
        console.error('Failed to publish message:', err);
    } else {
        console.log('Message published successfully:', data.MessageId);
    }
});