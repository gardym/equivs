actions :install

attribute :package_name, kind_of: String, name_attribute: true
attribute :version, kind_of: String, default: '1.0'

def initialize(*args)
  super
  @action = :install
  @supports = { report: true, exception: true }
end
