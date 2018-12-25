module Blueimp
  module Gallery
    module Generators
      class InstallGenerator < Rails::Generators::Base
        desc "Generates the initializer"

        source_root File.expand_path('../templates', __FILE__) 
        
        def generate_intializer
          copy_file "initializer.rb", "config/initializers/blueimp-gallery.rb"
        end   
      end
    end
  end
end        
