require 'test_helper'

class PresupuestoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get presupuesto_index_url
    assert_response :success
  end

end
