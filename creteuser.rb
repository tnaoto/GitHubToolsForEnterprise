require 'octokit'
require 'csv'

admin_client = Octokit::EnterpriseAdminClient.new \
:access_token => ENV['GH_APIKEY'],
:api_endpoint => ENV['GH_ENDPOINT'],
:connection_options => {
  :ssl => {
    :verify => false
  }
}

p ARGV[0]
csv_data = CSV.read(ARGV[0], headers: true)
puts "start..."

csv_data.each do |user|
  p user
  #admin_client.create_user(user["ID"],user["mail"])
end

puts "...END"
