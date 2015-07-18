require 'my_affiliates/view_helpers'
module Affiliates
  class Railtie < Rails::Railtie
    initializer "affiliates.view_helpers" do
      ActiveSupport.on_load( :action_view ){ include Affiliates::ViewHelpers }
    end
  end
end