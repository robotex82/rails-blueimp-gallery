module Blueimp
  module Gallery
    class ApplicationViewHelper < Rao::ViewHelper::Base
      def prepare_modal(options = {})
        c.render partial: 'blueimp/gallery/application_view_helper/prepare_modal'
      end
    end
  end
end