require_relative "../cli_command"

module Spline

  class ProcessCommand < CliCommand
    
    argument :name, :desc => "The name of the process"

    def generate_process
      template('templates/process.tt', "process_definition/processes/#{name}.rb")
    end

  end

end