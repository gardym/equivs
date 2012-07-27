actions :install

attribute :package_name, :kind_of => String, :name_attribute => true

def initialize(*args)
  super
  @action = :install
  @supports = {:report => true, :exception => true}
end
