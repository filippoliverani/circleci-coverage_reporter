require 'json'

require_relative '../abstract_reporter'
require_relative 'build_result'
require_relative 'current_result'

module CircleCI
  module CoverageReporter
    module RubyCritic
      class Reporter < AbstractReporter
        DEFAULT_PATH = 'rubycritic'.freeze

        # @note Implement {AbstractReporter#name}
        # @return [String]
        def name
          'RubyCritic'
        end

        private

        # @note Implement {AbstractReporter#create_build_result}
        # @param build [Build, nil]
        # @return [BuildResult, nil]
        def create_build_result(build)
          return unless build
          BuildResult.new(path, build)
        end

        # @note Implement {AbstractReporter#create_current_result}
        # @return [CurrentResult]
        def create_current_result
          CurrentResult.new(path)
        end
      end
    end
  end
end
