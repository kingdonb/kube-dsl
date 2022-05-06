# typed: strict
module KubeDSL::DSL::Authorization::V1
  autoload :LocalSubjectAccessReview, 'kube-dsl/dsl/authorization/v1/local_subject_access_review'
  autoload :NonResourceAttributes, 'kube-dsl/dsl/authorization/v1/non_resource_attributes'
  autoload :NonResourceRule, 'kube-dsl/dsl/authorization/v1/non_resource_rule'
  autoload :ResourceAttributes, 'kube-dsl/dsl/authorization/v1/resource_attributes'
  autoload :ResourceRule, 'kube-dsl/dsl/authorization/v1/resource_rule'
  autoload :SelfSubjectAccessReview, 'kube-dsl/dsl/authorization/v1/self_subject_access_review'
  autoload :SelfSubjectAccessReviewSpec, 'kube-dsl/dsl/authorization/v1/self_subject_access_review_spec'
  autoload :SelfSubjectRulesReview, 'kube-dsl/dsl/authorization/v1/self_subject_rules_review'
  autoload :SelfSubjectRulesReviewSpec, 'kube-dsl/dsl/authorization/v1/self_subject_rules_review_spec'
  autoload :SubjectAccessReview, 'kube-dsl/dsl/authorization/v1/subject_access_review'
  autoload :SubjectAccessReviewSpec, 'kube-dsl/dsl/authorization/v1/subject_access_review_spec'
  autoload :SubjectAccessReviewStatus, 'kube-dsl/dsl/authorization/v1/subject_access_review_status'
  autoload :SubjectRulesReviewStatus, 'kube-dsl/dsl/authorization/v1/subject_rules_review_status'
end
