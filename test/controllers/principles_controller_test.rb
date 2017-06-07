require 'test_helper'

class PrinciplesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @principle = principles(:one)
  end

  test "should get index" do
    get principles_url
    assert_response :success
  end

  test "should get new" do
    get new_principle_url
    assert_response :success
  end

  test "should create principle" do
    assert_difference('Principle.count') do
      post principles_url, params: { principle: { content: @principle.content, index: @principle.index, name: @principle.name, principle_explain: @principle.principle_explain, team_id: @principle.team_id } }
    end

    assert_redirected_to principle_url(Principle.last)
  end

  test "should show principle" do
    get principle_url(@principle)
    assert_response :success
  end

  test "should get edit" do
    get edit_principle_url(@principle)
    assert_response :success
  end

  test "should update principle" do
    patch principle_url(@principle), params: { principle: { content: @principle.content, index: @principle.index, name: @principle.name, principle_explain: @principle.principle_explain, team_id: @principle.team_id } }
    assert_redirected_to principle_url(@principle)
  end

  test "should destroy principle" do
    assert_difference('Principle.count', -1) do
      delete principle_url(@principle)
    end

    assert_redirected_to principles_url
  end
end
