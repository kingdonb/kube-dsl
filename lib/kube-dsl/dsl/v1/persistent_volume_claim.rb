module KubeDSL::DSL::V1
  class PersistentVolumeClaim < ::KubeDSL::DSLObject
    object_field(:metadata) { KubeDSL::DSL::Meta::V1::ObjectMeta.new }
    object_field(:spec) { KubeDSL::DSL::V1::PersistentVolumeClaimSpec.new }
    object_field(:status) { KubeDSL::DSL::V1::PersistentVolumeClaimStatus.new }

    def serialize
      {}.tap do |result|
        result[:apiVersion] = "v1"
        result[:kind] = "PersistentVolumeClaim"
        result[:metadata] = metadata.serialize
        result[:spec] = spec.serialize
        result[:status] = status.serialize
      end
    end

    def kind_sym
      :persistent_volume_claim
    end
  end
end
