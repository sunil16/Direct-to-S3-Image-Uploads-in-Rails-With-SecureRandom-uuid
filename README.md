# README



Things you may want to cover:

In Short:

git clone https://github.com/railstutorial/sample_app_rails_4.git
cd sample_app_rails_4
$ bundle install --without production
$ rake db:migrate
$ rails s

* Ruby Rails version
Rails 5.0.2
Ruby 2.3.1p112

* System dependencies
  gem 'aws-sdk-v1'
  $ bundle install   (Execute on Terminal).

* Configuration
  Configure your application with AWS
  1) by config/initializers/aws.rb
    AWS.config(
      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
      )
      S3_BUCKET =  AWS::S3.new.buckets[ENV['S3_BUCKET']]

  2) Directly by Terminal (Execute on Terminal).
  $ export AWS_ACCESS_KEY_ID=INSERT_YOUR_ACCESS_KEY_ID_HERE
  $ export AWS_SECRET_ACCESS_KEY=INSERT_YOUR_SECRET_KEY_HERE
  $ export S3_BUCKET=INSERT_YOUR_BUCKET_NAME  

  #restart your application  

* Database creation
$ rake db:migrate       (Execute on Terminal).
 if any problem
 $ bundle exec rake db:migrate  (Execute on Terminal).

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
