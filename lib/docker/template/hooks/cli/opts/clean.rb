# Frozen-string-literal: true
# Copyright: 2015 Jordon Bedwell - Apache v2.0 License
# Encoding: utf-8

Docker::Template::Hooks.register :cli, :opts do |parser, opts|
  parser.on("-c", "--[no-]clean", "Clean out your cache folder if it is used.") do |bool|
    opts["clean"] = bool
  end
end