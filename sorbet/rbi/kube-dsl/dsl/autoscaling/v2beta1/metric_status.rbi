# typed: strict

module KubeDSL
  module DSL
    module Autoscaling
      module V2beta1
        class MetricStatus < ::KubeDSL::DSLObject
          T::Sig::WithoutRuntime.sig {
            returns(
              T::Hash[Symbol, T.any(String, Integer, Float, T::Boolean, T::Array[T.untyped], T::Hash[Symbol, T.untyped])]
            )
          }
          def serialize; end

          T::Sig::WithoutRuntime.sig { returns(Symbol) }
          def kind_sym; end

          T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::Autoscaling::V2beta1::ContainerResourceMetricStatus) }
          def container_resource; end

          T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::Autoscaling::V2beta1::ExternalMetricStatus) }
          def external; end

          T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::Autoscaling::V2beta1::ObjectMetricStatus) }
          def object; end

          T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::Autoscaling::V2beta1::PodsMetricStatus) }
          def pods; end

          T::Sig::WithoutRuntime.sig { returns(KubeDSL::DSL::Autoscaling::V2beta1::ResourceMetricStatus) }
          def resource; end

          T::Sig::WithoutRuntime.sig { params(val: T.nilable(String)).returns(String) }
          def type(val = nil); end
        end
      end
    end
  end
end