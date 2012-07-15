directory "#{node['rbenv']['root_path']}/plugins" do
  recursive true
end

git "#{node['rbenv']['root_path']}/plugins/rbenv-vars" do
  repository node['rbenv_vars']['git_url']
  reference node['rbenv_vars']['git_ref']

  if node['rbenv_vars']['upgrade_strategy'] == "none"
    action :checkout
  else
    action :sync
  end
end
