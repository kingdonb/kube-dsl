module KubeDSL::DSL::Apps
  class DaemonSetUpdateStrategy
    extend ::KubeDSL::ValueFields

    value_fields :type
    object_field(:rolling_update) { KubeDSL::DSL::Apps::RollingUpdateDaemonSet.new }

    def serialize
      {}.tap do |result|
        result[:type] = type
        result[:rollingUpdate] = rolling_update.serialize
      end
    end

    def to_resource
      ::KubeDSL::Resource.new(serialize)
    end

    def kind
      :daemon_set_update_strategy
    end
  end
end
