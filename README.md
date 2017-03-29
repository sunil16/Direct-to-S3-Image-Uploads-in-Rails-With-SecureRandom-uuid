# README



Things you may want to cover:

In Short:

git clone https://github.com/railstutorial/sample_app_rails_4.git <br />
cd sample_app_rails_4 <br />
$ bundle install --without production <br />
$ rake db:migrate<br />
$ rails s <br />

* Ruby Rails version <br />
Rails 5.0.2 <br />
Ruby 2.3.1p112 <br />

* System dependencies <br />
  gem 'aws-sdk-v1' <br />
  $ bundle install   (Execute on Terminal). <br />

* Configuration <br />
  Configure your application with AWS <br />
  1) by config/initializers/aws.rb <br />
    AWS.config( <br />
      :access_key_id => ENV['AWS_ACCESS_KEY_ID'], <br />
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'] <br />
      ) <br />
      S3_BUCKET =  AWS::S3.new.buckets[ENV['S3_BUCKET']]

  2) Directly by Terminal (Execute on Terminal).
  $ export AWS_ACCESS_KEY_ID=INSERT_YOUR_ACCESS_KEY_ID_HERE
  $ export AWS_SECRET_ACCESS_KEY=INSERT_YOUR_SECRET_KEY_HERE
  $ export S3_BUCKET=INSERT_YOUR_BUCKET_NAME  

  #restart your application  

* Database creation <br />
$ rake db:migrate       (Execute on Terminal). <br />
 if any problem <br />
 $ bundle exec rake db:migrate  (Execute on Terminal). <br />
