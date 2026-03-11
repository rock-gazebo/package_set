unless Autoproj.config.has_value_for?("GZ_BRANCH")
    os_kind, os_variants = Autoproj.workspace.os_package_resolver.operating_system
    if os_kind.include?("ubuntu") && os_variants.include?("noble")
        Autoproj.config.set "GZ_BRANCH", "gz-new"
    else
        Autoproj.config.set "GZ_BRANCH", "master"
    end
end

Autoproj.config.set 'syskit_use_bundles', false, true
