require_relative "../command"

module Spline

  class StepCommand < Command

    argument :namespace, :desc => "Namespace of the step"
    argument :name, :desc => "Name of the step"

    def generate_step
      template('templates/definitions/step.tt', "process_definition/steps/#{namespace}/#{name}.rb")
    end

  end

end