class Ecom::InstallGenerator < ::Rails::Generators::Base
  include Rails::Generators::Migration
  source_root File.expand_path('../templates', __FILE__)
  desc "Installs Ecom Store"

  def install
    route 'mount Ecom::Engine => "/store"'
    copy_file "../../../../config/locales/en.yml", "config/locales/ecom.en.yml"
  end
end
