require 'thor/group'

module Spline

  class ProcessCommand < Thor::Group
    include Thor::Actions

    argument :name, :desc => "The name of the process"

    def self.source_root
      File.dirname(__FILE__)
    end

    def generate_process
      template('templates/process.tt', "process_definition/processes/#{name}.rb")
    end

  end

end