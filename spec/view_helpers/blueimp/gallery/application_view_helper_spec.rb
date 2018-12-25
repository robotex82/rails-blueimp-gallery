require 'rails_helper'

RSpec.describe Blueimp::Gallery::ApplicationViewHelper, type: :view_helper do
  describe 'prepare_modal' do
    it { expect(rendered).to have_xpath("//div[@id='blueimp-gallery']") }
  end
end