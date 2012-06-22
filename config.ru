require './hello.rb'

use Rack::Auth::Basic do |user, pass|
  user == 'rack' and pass == 'basic'
end

run HelloApp.new
