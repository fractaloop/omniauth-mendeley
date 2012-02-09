$:.unshift File.expand_path('..', __FILE__)
$:.unshift File.expand_path('../../lib', __FILE__)

require 'rspec'
require 'omniauth'
require 'omniauth-mendeley'

RSpec.configure do |config|
end
