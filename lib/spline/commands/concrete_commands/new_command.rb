require_relative "../command"

module Spline

  class NewCommand < Command
    
    argument :name, :desc => "The name of the project"

    def generate_gemfile
      template('templates/configs/gemfile.tt', "#{name}/Gemfile")
    end

    def setup_project
      template('templates/samples/my_first_step.tt', "#{name}/process_definition/steps/example/my_first_step.rb")
      template('templates/samples/my_second_step.tt', "#{name}/process_definition/steps/example/my_second_step.rb")
      template('templates/samples/my_process.tt', "#{name}/process_definition/processes/my_process.rb")
      say("spline is setup, don't forget to cd into #{name}")
    end

    def self.description
      "generates a project skeleton"
    end

    def self.usage
      "new NAME"
    end

  end

end