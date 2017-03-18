require_relative 'abstract_result'

module CircleCI
  module CoverageReporter
    class AbstractBuildResult < AbstractResult
      # @param path [String]
      # @param build [Build]
      def initialize(path, build)
        @path = path
        @build = build
      end

      private

      attr_reader :build, :path

      # @param end_with [String]
      # @return [Artifact]
      def find_artifact(end_with)
        build.artifacts.find { |artifact| artifact.end_with?("#{path}/#{end_with}") }
      end
    end
  end
end
