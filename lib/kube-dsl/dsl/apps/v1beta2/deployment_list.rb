module KubeDSL::DSL::Apps::V1beta2
  class DeploymentList < ::KubeDSL::DSLObject
    array_field(:item) { KubeDSL::DSL::Apps::V1beta2::Deployment.new }
    object_field(:metadata) { KubeDSL::DSL::Meta::V1::ListMeta.new }

    def serialize
      {}.tap do |result|
        result[:apiVersion] = "apps/v1beta2"
        result[:kind] = "DeploymentList"
        result[:items] = items.map(&:serialize)
        result[:metadata] = metadata.serialize
      end
    end

    def kind_sym
      :deployment_list
    end
  end
end
