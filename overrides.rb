base_scripts = Autoproj.manifest.find_autobuild_package('base/scripts')
Autoproj.env.remove_path 'ROBY_PLUGIN_PATH', File.join(base_scripts.srcdir, 'lib', 'rock', 'roby_plugin.rb')

