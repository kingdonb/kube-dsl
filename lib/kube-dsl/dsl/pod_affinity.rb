module KubeDSL::DSL
  class PodAffinity
    extend ::KubeDSL::ValueFields

    array_field(:preferred_during_scheduling_ignored_during_execution) { KubeDSL::DSL::WeightedPodAffinityTerm.new }
    array_field(:required_during_scheduling_ignored_during_execution) { KubeDSL::DSL::PodAffinityTerm.new }

    def serialize
      {}.tap do |result|
        result[:preferredDuringSchedulingIgnoredDuringExecution] = preferred_during_scheduling_ignored_during_executions.map(&:serialize)
        result[:requiredDuringSchedulingIgnoredDuringExecution] = required_during_scheduling_ignored_during_executions.map(&:serialize)
      end
    end

    def to_resource
      ::KubeDSL::Resource.new(serialize)
    end

    def kind
      :pod_affinity
    end
  end
end
