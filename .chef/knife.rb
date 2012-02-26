current_dir = File.dirname(__FILE__)
user = ENV['OPSCODE_USER'] || ENV['USER']
home = ENV['HOME']
log_level		:info
log_location		STDOUT
node_name		user
client_key		"#{home}/.chef/#{user}.pem"
validation_client_name	"#{ENV['ORGNAME']}-validator"
validation_key		"#{home}/.chef/#{ENV['ORGNAME']}-validator.pem"
chef_server_url		"https://api.opscode.com/organizations/#{ENV['ORGNAME']}"
cache_type		'BasicFile'
cache_options( :path => "#{home}/.chef/checksums" )
cookbook_path		["#{current_dir}/../cookbooks"]
