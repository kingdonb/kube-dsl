# typed: strict

module KubeDSL
  module DSL
    module V1
      class ResourceQuotaStatus < ::KubeDSL::DSLObject
        T::Sig::WithoutRuntime.sig {
          returns(
            T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
          )
        }
        def serialize; end

        T::Sig::WithoutRuntime.sig { returns(Symbol) }
        def kind_sym; end

        T::Sig::WithoutRuntime.sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
        def hard(&block); end

        T::Sig::WithoutRuntime.sig { params(block: T.nilable(T.proc.void)).returns(::KubeDSL::KeyValueFields) }
        def used(&block); end
      end
    end
  end
end