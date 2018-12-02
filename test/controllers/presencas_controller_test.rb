require 'test_helper'

class PresencasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @presenca = presencas(:one)
  end

  test "should get index" do
    get presencas_url
    assert_response :success
  end

  test "should get new" do
    get new_presenca_url
    assert_response :success
  end

  test "should create presenca" do
    assert_difference('Presenca.count') do
      post presencas_url, params: { presenca: { treino_id: @presenca.treino_id, user_id: @presenca.user_id } }
    end

    assert_redirected_to presenca_url(Presenca.last)
  end

  test "should show presenca" do
    get presenca_url(@presenca)
    assert_response :success
  end

  test "should get edit" do
    get edit_presenca_url(@presenca)
    assert_response :success
  end

  test "should update presenca" do
    patch presenca_url(@presenca), params: { presenca: { treino_id: @presenca.treino_id, user_id: @presenca.user_id } }
    assert_redirected_to presenca_url(@presenca)
  end

  test "should destroy presenca" do
    assert_difference('Presenca.count', -1) do
      delete presenca_url(@presenca)
    end

    assert_redirected_to presencas_url
  end
end
