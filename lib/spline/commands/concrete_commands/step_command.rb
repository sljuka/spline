require_relative "../command"

module Spline

  class StepCommand < Command

    argument :namespace, :desc => "Namespace of the action"
    argument :name, :desc => "Name of the action"

    def generate_action
      template('templates/action.tt', "process_definition/actions/#{namespace}/#{name}.rb")
    end

  end

end