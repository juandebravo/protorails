module Protorails
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      desc "This generator copies an initializer file at config/initializers"
      def copy_initializer
        template "protorails_formats.rb", "config/initializers/protorails_formats.rb"
        template "protorails_mime_types.rb", "config/initializers/protorails_mime_types.rb"
      end  
    end
  end
end