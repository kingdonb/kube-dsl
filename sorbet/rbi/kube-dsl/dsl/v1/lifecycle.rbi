# typed: strict

module KubeDSL
  module DSL
    module V1
      class Lifecycle < ::KubeDSL::DSLObject
        T::Sig::WithoutRuntime.sig {
          returns(
            T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
          )
        }
        def serialize; end

        T::Sig::WithoutRuntime.sig { returns(Symbol) }
        def kind_sym; end

        T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::V1::Handler) }
        def post_start; end

        T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::V1::Handler) }
        def pre_stop; end
      end
    end
  end
end