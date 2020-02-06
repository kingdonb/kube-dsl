module KubeDSL::DSL::Extensions
  class HostPortRange
    extend ::KubeDSL::ValueFields

    value_fields :max, :min

    def serialize
      {}.tap do |result|
        result[:max] = max
        result[:min] = min
      end
    end

    def to_resource
      ::KubeDSL::Resource.new(serialize)
    end

    def kind
      :host_port_range
    end
  end
end
