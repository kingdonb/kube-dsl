# typed: strict

module KubeDSL
  module DSL
    module Discovery
      module V1beta1
        class ForZone < ::KubeDSL::DSLObject
          value_field :name

          validates :name, field: { format: :string }, presence: false

          def serialize
            {}.tap do |result|
              result[:name] = name
            end
          end

          def kind_sym
            :for_zone
          end
        end
      end
    end
  end
end