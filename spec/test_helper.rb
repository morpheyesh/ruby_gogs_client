require File.expand_path("#{File.dirname(__FILE__)}/../lib/main/gogs")

require 'rubygems'
gem 'minitest'
require 'minitest/autorun'
require 'time'

SANDBOX_HOST_OPTIONS = {
  :host => 'localhost',
  :port => 6001
}



  def single_entry(options)
    options = SANDBOX_HOST_OPTIONS.merge(options)
    Main::Gogs.new(options)
  end

  def multiple_entries(options={})
    s_options = SANDBOX_HOST_OPTIONS.merge(options)
    #options = s_options.merge(options)
    Main::Gogs.new(s_options)
  end

  def sandbox_json
    {:json =>
      '{"name":"Simpson", "displayName":"test", "mail":"homersimpson@springfield.com", "password":"bart"}'
    }
  end
