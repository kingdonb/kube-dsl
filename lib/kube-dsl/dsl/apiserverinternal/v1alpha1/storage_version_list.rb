# typed: true

module KubeDSL::DSL::Apiserverinternal::V1alpha1
  class StorageVersionList < ::KubeDSL::DSLObject
    array_field(:item) { KubeDSL::DSL::Apiserverinternal::V1alpha1::StorageVersion.new }
    object_field(:metadata) { KubeDSL::DSL::Meta::V1::ListMeta.new }

    validates :items, array: { kind_of: KubeDSL::DSL::Apiserverinternal::V1alpha1::StorageVersion }, presence: false
    validates :metadata, object: { kind_of: KubeDSL::DSL::Meta::V1::ListMeta }

    def serialize
      {}.tap do |result|
        result[:apiVersion] = "internal.apiserver.k8s.io/v1alpha1"
        result[:items] = items.map(&:serialize)
        result[:kind] = "StorageVersionList"
        result[:metadata] = metadata.serialize
      end
    end

    def kind_sym
      :storage_version_list
    end
  end
end
