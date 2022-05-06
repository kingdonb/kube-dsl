# typed: strict

module KubeDSL
  module DSL
    module Discovery
      module V1
        class EndpointSlice < ::KubeDSL::DSLObject
          T::Sig::WithoutRuntime.sig {
            returns(
              T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
            )
          }
          def serialize; end

          T::Sig::WithoutRuntime.sig { returns(Symbol) }
          def kind_sym; end

          T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
          def address_type(val = nil); end


          T::Sig::WithoutRuntime.sig {
            params(
              elem_name: T.nilable(Symbol),
              block: T.nilable(T.proc.returns(KubeDSL::DSL::Discovery::V1::Endpoint))
            ).returns(T::Array[KubeDSL::DSL::Discovery::V1::Endpoint])
          }
          def endpoints(elem_name = nil, &block); end


          T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::Meta::V1::ObjectMeta) }
          def metadata; end

          T::Sig::WithoutRuntime.sig {
            params(
              elem_name: T.nilable(Symbol),
              block: T.nilable(T.proc.returns(KubeDSL::DSL::Discovery::V1::EndpointPort))
            ).returns(T::Array[KubeDSL::DSL::Discovery::V1::EndpointPort])
          }
          def ports(elem_name = nil, &block); end
        end
      end
    end
  end
end