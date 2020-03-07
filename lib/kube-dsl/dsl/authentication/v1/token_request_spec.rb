module KubeDSL::DSL::Authentication::V1
  class TokenRequestSpec < ::KubeDSL::DSLObject
    value_fields :expiration_seconds
    array_field :audience
    object_field(:bound_object_ref) { KubeDSL::DSL::Authentication::V1::BoundObjectReference.new }

    def serialize
      {}.tap do |result|
        result[:expirationSeconds] = expiration_seconds
        result[:audiences] = audiences
        result[:boundObjectRef] = bound_object_ref.serialize
      end
    end

    def kind_sym
      :token_request_spec
    end
  end
end
