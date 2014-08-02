require 'thor/group'

module Spline

  class ActionCommand < Thor::Group
    include Thor::Actions

    argument :namespace, :desc => "Namespace of the action"
    argument :name, :desc => "Name of the action"

    def self.source_root
      File.dirname(__FILE__)
    end

    def generate_process
      template('templates/action.tt', "process_definition/actions/#{namespace}/#{name}.rb")
    end

  end

end