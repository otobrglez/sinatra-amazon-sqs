sinatra-amazon-sqs
==================

[Sinatra][sinatra] to [Amazon Simple Queue Service (SQS)][sqs] - example application source code, that is used in my [blog post][blog].

# Usage

Create .env file with following with AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY and AWS_QUEUE_URL credentials.

# Running it

ruby app.rb
ruby worker.rb

[sinatra]:www.sinatrarb.com
[sqs]:http://aws.amazon.com/sqs/
[blog]:http://otobrglez.opalab.com/ruby/2014/08/29/ruby-sinatra-amazon-sqs-sdk.html
