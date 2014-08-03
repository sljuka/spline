require_relative "../command"

module Spline

  class ProcessCommand < Command
    
    argument :name, :desc => "The name of the process"

    def generate_process
      template('templates/definitions/process.tt', "process_definition/processes/#{name}.rb")
    end

  end

end