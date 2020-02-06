module KubeDSL::DSL::Storage
  class CSINode
    extend ::KubeDSL::ValueFields

    object_field(:metadata) { KubeDSL::DSL::Meta::ObjectMeta.new }
    object_field(:spec) { KubeDSL::DSL::Storage::CSINodeSpec.new }

    def serialize
      {}.tap do |result|
        result[:apiVersion] = "storage.k8s.io/v1beta1"
        result[:kind] = "CSINode"
        result[:metadata] = metadata.serialize
        result[:spec] = spec.serialize
      end
    end

    def to_resource
      ::KubeDSL::Resource.new(serialize)
    end

    def kind
      :csi_node
    end
  end
end
