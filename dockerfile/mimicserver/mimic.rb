#!/usr/bin/env ruby
require 'mimic'

Mimic.mimic(:Host => '0.0.0.0', :port => 11988, :fork => false, :remote_configuration_path => '/api') do
    # configure your stubs here
end
