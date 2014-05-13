require 'rubygems'
require 'aws-sdk' 

s3 = AWS::S3.new()

bucket_name = 'level11-devops-demo' 

ARGV.each do |obj_name| 

  srcfile = s3.buckets[bucket_name].objects[obj_name] 
  destfile = '/etc/chef/' + obj_name

  File.open(destfile, "w") do |f| 
    f.write(srcfile.read) 
  end 

end
