Redmine::Plugin.register :highlights_plugin do
  name 'Highlights Plugin plugin'
  author 'Xabi Aleman'
  description 'This is a plugin to att highlights to issues'
  version '0.0.1'
  url 'https://github.com/Xabite/highlights_plugin'


  # extend the application menu
  menu :application_menu,
    :highlights_plugin,
    {
      :controller => 'highlight',
      :action => 'index'
    },
    :caption => 'highlight',
    :after => :issues
  # extend the project menu to add the highlight by project view
  permission :highlight_by_project,
    {
      :highlight_by_project => [
        :index
      ]
    },
    :public => true
  menu :project_menu,
    :highlights_plugin,
    {
      :controller => 'highlight_by_project',
      :action => 'index'
    },
    :caption => 'highlight_by_project',
    :after => :issues,
    :param => :project_id

end
