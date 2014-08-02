module Spline

  require 'thor'
  require_relative 'process_command'
  require_relative 'install_command'
  require_relative 'action_command'

  class SplineCli < Thor

    # register(class_name, subcommand_alias, usage_list_string, description_string)
    register(InstallCommand, "install", "install", "setup spline")
    register(ActionCommand, "paction", "paction", "Generate action stub")
    register(ProcessCommand, "process", "process", "Generate process stub")

  end


end