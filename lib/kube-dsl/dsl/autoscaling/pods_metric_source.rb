module KubeDSL::DSL::Autoscaling
  class PodsMetricSource
    extend ::KubeDSL::ValueFields

    object_field(:metric) { KubeDSL::DSL::Autoscaling::MetricIdentifier.new }
    object_field(:target) { KubeDSL::DSL::Autoscaling::MetricTarget.new }

    def serialize
      {}.tap do |result|
        result[:metric] = metric.serialize
        result[:target] = target.serialize
      end
    end

    def to_resource
      ::KubeDSL::Resource.new(serialize)
    end

    def kind
      :pods_metric_source
    end
  end
end
