require 'stumptowner.rb'
require 'jsonp.rb'

use Rack::JSONP
use Rack::ContentLength

app = lambda { |env| [200, { 'Content-Type' => 'application/json' }, Stumptowner.to_json ] }
run app