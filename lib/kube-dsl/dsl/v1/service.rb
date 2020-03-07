module KubeDSL::DSL::V1
  class Service < ::KubeDSL::DSLObject
    object_field(:metadata) { KubeDSL::DSL::Meta::V1::ObjectMeta.new }
    object_field(:spec) { KubeDSL::DSL::V1::ServiceSpec.new }
    object_field(:status) { KubeDSL::DSL::V1::ServiceStatus.new }

    def serialize
      {}.tap do |result|
        result[:apiVersion] = "v1"
        result[:kind] = "Service"
        result[:metadata] = metadata.serialize
        result[:spec] = spec.serialize
        result[:status] = status.serialize
      end
    end

    def kind_sym
      :service
    end
  end
end
