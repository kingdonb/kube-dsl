# typed: strict

module KubeDSL
  module DSL
    module Autoscaling
      module V2beta2
        class PodsMetricSource < ::KubeDSL::DSLObject
          T::Sig::WithoutRuntime.sig {
            returns(
              T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
            )
          }
          def serialize; end

          T::Sig::WithoutRuntime.sig { returns(Symbol) }
          def kind_sym; end

          T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::Autoscaling::V2beta2::MetricIdentifier) }
          def metric; end

          T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::Autoscaling::V2beta2::MetricTarget) }
          def target; end
        end
      end
    end
  end
end