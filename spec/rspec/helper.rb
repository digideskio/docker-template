# Frozen-string-literal: true
# Copyright: 2015 Jordon Bedwell - Apache v2.0 License
# Encoding: utf-8

require "support/coverage"
require "luna/rspec/formatters/checks"
require "docker/template"
require "support/helpers"

Dir[File.expand_path("../../support/**/*.rb", __FILE__)].each do |f|
  require f
end
