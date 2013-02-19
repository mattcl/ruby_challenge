require 'xmlrpc/client'
require 'uri'

base = URI.parse('http://www.pythonchallenge.com/pc/phonebook.php')
server = XMLRPC::Client.new(base.host, base.path, base.port)
begin
  puts server.call('phone', 'Bert')
rescue XMLRPC::FaultException => e
  puts "Error:"
  puts e.faultCode
  puts e.faultString
end
