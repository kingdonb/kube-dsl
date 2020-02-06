module KubeDSL::DSL
  class SecurityContext
    extend ::KubeDSL::ValueFields

    value_fields :allow_privilege_escalation, :privileged, :proc_mount, :read_only_root_filesystem, :run_as_group, :run_as_non_root, :run_as_user
    object_field(:capabilities) { KubeDSL::DSL::Capabilities.new }
    object_field(:se_linux_options) { KubeDSL::DSL::SELinuxOptions.new }
    object_field(:windows_options) { KubeDSL::DSL::WindowsSecurityContextOptions.new }

    def serialize
      {}.tap do |result|
        result[:allowPrivilegeEscalation] = allow_privilege_escalation
        result[:privileged] = privileged
        result[:procMount] = proc_mount
        result[:readOnlyRootFilesystem] = read_only_root_filesystem
        result[:runAsGroup] = run_as_group
        result[:runAsNonRoot] = run_as_non_root
        result[:runAsUser] = run_as_user
        result[:capabilities] = capabilities.serialize
        result[:seLinuxOptions] = se_linux_options.serialize
        result[:windowsOptions] = windows_options.serialize
      end
    end

    def to_resource
      ::KubeDSL::Resource.new(serialize)
    end

    def kind
      :security_context
    end
  end
end
