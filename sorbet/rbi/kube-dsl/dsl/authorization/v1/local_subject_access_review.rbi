# typed: strict

module KubeDSL
  module DSL
    module Authorization
      module V1
        class LocalSubjectAccessReview < ::KubeDSL::DSLObject
          T::Sig::WithoutRuntime.sig {
            returns(
              T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
            )
          }
          def serialize; end

          T::Sig::WithoutRuntime.sig { returns(Symbol) }
          def kind_sym; end



          T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::Meta::V1::ObjectMeta) }
          def metadata; end

          T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::Authorization::V1::SubjectAccessReviewSpec) }
          def spec; end

          T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::Authorization::V1::SubjectAccessReviewStatus) }
          def status; end
        end
      end
    end
  end
end