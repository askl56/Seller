require 'test_helper'

module Ecom
  class CartControllerTest < ActionController::TestCase
    test 'should get show' do
      get :show
      assert_response :success
    end
  end
end
