require "geee/version"

module Geee
  def self.generate(arg_string)
    if File.exist?('bin/rails')
      exec "rails generate #{arg_string}"
    elsif File.exist?('.ember-cli')
      exec "ember generate #{arg_string}"
    else
      puts 'you are not currently inside of a monolith'
    end
  end
end
