actions :create, :remove
default_action :create

attribute :site_name, :name_attribute => true, :kind_of => String
attribute :site_port, :default => 80, :kind_of => Fixnum
# attribute :document_root, :default => "/srv/apache/#{new_resource.site_name}"
