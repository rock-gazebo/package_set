setup_package "simulation/rock_gazebo" do |pkg|
    # Tests in bindings/ruby (which are the only tests of this package) are
    # handled by rock.core/overrides.rb. This leads to having to do this setup
    # in here as well, instead of the normal place

    pkg.post_import do
        if pkg.test_utility.enabled?
            pkg.env_set "ROCK_GAZEBO_TESTS_COMMON_MODELS_PATH",
                        Autoproj.manifest.find_autobuild_package("bundles/common_models").srcdir
        end
    end
end
    
