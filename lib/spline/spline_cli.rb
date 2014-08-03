module Spline

  require 'thor'
  Dir["#{File.dirname(__FILE__)}/commands/concrete_commands/*.rb"].each { |file| require_relative file }

  class SplineCli < Thor

    # register(class_name, subcommand_alias, usage_list_string, description_string)

    commands = Spline.constants.select { |c| c.match(/\w+Command/) && Spline.const_get(c).is_a? Class }
    commands.each do |command|
      commandClass = Spline.const_get(command)
      register(commandClass, commandClass.alias, commandClass.usage_tip, commandClass.description)
    end
    #register(InstallCommand, "install", "install", "setup spline")
    #register(ActionCommand, "paction", "paction", "Generate action stub")
    #register(ProcessCommand, "process", "process", "Generate process stub")
  end
end