在require 'mongo'之后自动启动了logger， 这个logger只可以设置成INFO 和 DEBUG
另外, 在/var/lib/gems/2.3.0/gems/mongo-2.1.2/lib/mongo/logger.rb中，目前改
了default logger 为 $stderr （原先为$stdout）, 这样应该可以避免每次引入mongo
都重置Mongo::Logger::level.
又改为$file， 每次都：export file=/home/jishan/s_c/Ruby/mongo/log.txt
然后就可以改变程序log输出。
