# typed: strict

module KubeDSL
  module DSL
    module V1
      class NodeAddress < ::KubeDSL::DSLObject
        T::Sig::WithoutRuntime.sig {
          returns(
            T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
          )
        }
        def serialize; end

        T::Sig::WithoutRuntime.sig { returns(Symbol) }
        def kind_sym; end

        T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
        def address(val = nil); end

        T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
        def type(val = nil); end
      end
    end
  end
end