Redmine::Plugin.register :redmine_cantemo_knowledgebase_link do
  name 'Redmine Cantemo Knowledgebase Link plugin'
  author 'Mattias Amnefelt'
  description 'Adds a Knowledgebase link on the top navigation bar'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
end

Redmine::Plugin.register :redmine_polls do

  menu :top_menu, :knowledgebase, { :controller => 'articles', :action => 'index', :project_id => 'mediabox'}, :caption => :knowledgebase_title, :after => :administration
  menu :project_menu, :cantemo_new_issue, { :controller => 'issues', :action => 'new' }, :caption => :label_issue_new, :after => :issues, :param => :project_id
end
