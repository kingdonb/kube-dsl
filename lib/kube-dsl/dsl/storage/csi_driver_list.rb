module KubeDSL::DSL::Storage
  class CSIDriverList
    extend ::KubeDSL::ValueFields

    array_field(:item) { KubeDSL::DSL::Storage::CSIDriver.new }
    object_field(:metadata) { KubeDSL::DSL::Meta::ListMeta.new }

    def serialize
      {}.tap do |result|
        result[:apiVersion] = "storage.k8s.io/v1beta1"
        result[:kind] = "CSIDriverList"
        result[:items] = items.map(&:serialize)
        result[:metadata] = metadata.serialize
      end
    end

    def to_resource
      ::KubeDSL::Resource.new(serialize)
    end

    def kind
      :csi_driver_list
    end
  end
end
