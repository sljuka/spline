module Spline

  require 'thor'
  Dir["#{File.dirname(__FILE__)}/commands/concrete_commands/*.rb"].each { |file| require_relative file }

  class SplineCli < Thor

    register(InstallCommand, "install", "install", "setup spline")
    register(ActionCommand, "paction", "paction", "Generate action stub")
    register(ProcessCommand, "process", "process", "Generate process stub")

  end
end