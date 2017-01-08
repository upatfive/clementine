# Make the connection.
Aws.config.update(
 access_key_id:      ENV['AWS_KEY_ID'],
 secret_access_key:  ENV['AWS_KEY'],
 region: 'us-east-1' )

S3 = Aws::S3::Client.new
resp = S3.list_buckets
puts resp.buckets.map(&:name)