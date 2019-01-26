require "spec_helper"

Dir[File.expand_path(File.join(File.dirname(__FILE__), "support", "**", "*.rb"))].each { |f| require f }

$thor_runner = true
ARGV.clear
Thor::Base.shell = Thor::Shell::Basic

RSpec.configure do |config|
  config.include Spec::Helpers::OutputHelper
end
