# if you want to provide AWS security credentials manually fill   your secrets  id and key and bucket name.
AWS.config(
  :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
  :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
  )
  S3_BUCKET =  AWS::S3.new.buckets[ENV['S3_BUCKET']]



#   # example
# AWS.config(
#   :access_key_id => 'ABCDFGSHJTKLDJH',
#   :secret_access_key => 'aJKG5jkhdsnosijdgosdk560lsndgno+4ht',
#   :region                 => 'ap-east-2'
#   )
#   S3_BUCKET =  AWS::S3.new.buckets['test-bucket']




# open below code if you want to provide aws credentials by Terminal

# AWS.config(
#   :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
#   :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'],
#   :region                 => 'ap-south-1'
# )
#
# S3_BUCKET =  AWS::S3.new.buckets[ENV['S3_BUCKET']]
