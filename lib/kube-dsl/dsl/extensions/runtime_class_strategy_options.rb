module KubeDSL::DSL::Extensions
  class RuntimeClassStrategyOptions
    extend ::KubeDSL::ValueFields

    value_fields :default_runtime_class_name
    array_field :allowed_runtime_class_name

    def serialize
      {}.tap do |result|
        result[:defaultRuntimeClassName] = default_runtime_class_name
        result[:allowedRuntimeClassNames] = allowed_runtime_class_names
      end
    end

    def to_resource
      ::KubeDSL::Resource.new(serialize)
    end

    def kind
      :runtime_class_strategy_options
    end
  end
end
