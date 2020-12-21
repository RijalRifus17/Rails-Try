require "test_helper"

class DivisionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @division = divisions(:one)
  end

  test "should get index" do
    get divisions_url, as: :json
    assert_response :success
  end

  test "should create division" do
    assert_difference('Division.count') do
      post divisions_url, params: { division: { code: @division.code, name: @division.name } }, as: :json
    end

    assert_response 201
  end

  test "should show division" do
    get division_url(@division), as: :json
    assert_response :success
  end

  test "should update division" do
    patch division_url(@division), params: { division: { code: @division.code, name: @division.name } }, as: :json
    assert_response 200
  end

  test "should destroy division" do
    assert_difference('Division.count', -1) do
      delete division_url(@division), as: :json
    end

    assert_response 204
  end
end
