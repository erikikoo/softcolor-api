require 'test_helper'

class OrcamentoControllerTest < ActionDispatch::IntegrationTest
  test "should get send" do
    get orcamento_send_url
    assert_response :success
  end

end
