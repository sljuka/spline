require_relative "../command"

module Spline
  
  class InstallCommand < Command

    def install
      processes_dir_exists = File.directory?("#{Dir.pwd}/process_definition/processes")
      steps_dir_exists = File.directory?("#{Dir.pwd}/process_definition/steps")

      if processes_dir_exists && steps_dir_exists
        say("spline is already setup")
        return
      end

      template('templates/samples/my_first_step.tt', "process_definition/steps/example/my_first_step.rb")
      template('templates/samples/my_second_step.tt', "process_definition/steps/example/my_second_step.rb")
      template('templates/samples/my_process.tt', "process_definition/processes/my_process.rb")
    end
  end
end