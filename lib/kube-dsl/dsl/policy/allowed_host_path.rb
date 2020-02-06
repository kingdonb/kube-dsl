module KubeDSL::DSL::Policy
  class AllowedHostPath
    extend ::KubeDSL::ValueFields

    value_fields :path_prefix, :read_only

    def serialize
      {}.tap do |result|
        result[:pathPrefix] = path_prefix
        result[:readOnly] = read_only
      end
    end

    def to_resource
      ::KubeDSL::Resource.new(serialize)
    end

    def kind
      :allowed_host_path
    end
  end
end
