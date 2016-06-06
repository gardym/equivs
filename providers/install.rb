use_inline_resources

def package_installed?(package_name)
  dpkg_l = Chef::ShellOut.new("dpkg -l | grep #{package_name}")
  dpkg_l.run_command
  (dpkg_l.exitstatus == 0)
end


action :install do
  package_name = new_resource.package_name

  unless package_installed?(package_name)
    tmp_dir = Chef::Config[:file_cache_path]
    control_file = "#{tmp_dir}/#{package_name}"
    deb_file = "#{control_file}_1.0_all.deb"

    # generate the control file from the cookbook file
    template control_file do
      cookbook 'equivs'
      source 'equiv-control-template.erb'
      variables(
        package_name: package_name
      )
      mode 0644
    end

    # call equivs-build on the control file
    execute 'equivs-build' do
      cwd tmp_dir
      command "equivs-build #{package_name}"
    end

    # call dpkg -i
    dpkg_package package_name do
      source deb_file
      action :install
    end
    new_resource.updated_by_last_action(true)
  end
end
