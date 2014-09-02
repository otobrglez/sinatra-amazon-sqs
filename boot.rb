require 'bundler/setup'

# Use this to load my '.env' that contains AWS credentials
require 'dotenv'; Dotenv.load

# We are using Amazon Ruby SDK
require 'aws-sdk'

# We configure AWS Ruby SDK
AWS.config(
  access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID'),
  secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY')
)

# We get SQS Web Service
sqs = AWS::SQS.new

QUEUE = sqs.queues[ENV.fetch('AWS_QUEUE_URL')]
