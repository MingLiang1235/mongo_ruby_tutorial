require 'mongo'

#puts Mongo::Logger
#puts Mongo::Logger::level
#Mongo::Logger::level = 1
Mongo::Logger::level = 0  # DEBUG
#Mongo::Logger::level = Logger::INFO  # Note:  Logger level is ether 0(DEBUG) or 1(INFO)

client = Mongo::Client.new([ '10.10.5.36:3605' ], :database => 'test')
db = client.database
puts db
