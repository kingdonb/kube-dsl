module KubeDSL::DSL
  class Sysctl
    extend ::KubeDSL::ValueFields

    value_fields :name, :value

    def serialize
      {}.tap do |result|
        result[:name] = name
        result[:value] = value
      end
    end

    def to_resource
      ::KubeDSL::Resource.new(serialize)
    end

    def kind
      :sysctl
    end
  end
end
