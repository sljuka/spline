require_relative "../cli_command"

module Spline   
  class InstallCommand < CliCommand

    def install
      processes_dir_exists = File.directory?("#{Dir.pwd}/process_definition/processes")
      actions_dir_exists = File.directory?("#{Dir.pwd}/process_definition/actions")

      if processes_dir_exists && actions_dir_exists
        say("spline is already setup")
        return
      end

      template('templates/my_first_action.tt', "process_definition/actions/example/my_first_action.rb")
      template('templates/my_second_action.tt', "process_definition/actions/example/my_second_action.rb")
      template('templates/my_process.tt', "process_definition/processes/my_process.rb")
    end
  end
end