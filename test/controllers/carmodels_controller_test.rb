require 'test_helper'

class CarmodelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carmodel = carmodels(:one)
  end

  test "should get index" do
    get carmodels_url
    assert_response :success
  end

  test "should get new" do
    get new_carmodel_url
    assert_response :success
  end

  test "should create carmodel" do
    assert_difference('Carmodel.count') do
      post carmodels_url, params: { carmodel: { fuel1: @carmodel.fuel1, pollution1: @carmodel.pollution1, range1: @carmodel.range1, speed1: @carmodel.speed1, type1: @carmodel.type1 } }
    end

    assert_redirected_to carmodel_url(Carmodel.last)
  end

  test "should show carmodel" do
    get carmodel_url(@carmodel)
    assert_response :success
  end

  test "should get edit" do
    get edit_carmodel_url(@carmodel)
    assert_response :success
  end

  test "should update carmodel" do
    patch carmodel_url(@carmodel), params: { carmodel: { fuel1: @carmodel.fuel1, pollution1: @carmodel.pollution1, range1: @carmodel.range1, speed1: @carmodel.speed1, type1: @carmodel.type1 } }
    assert_redirected_to carmodel_url(@carmodel)
  end

  test "should destroy carmodel" do
    assert_difference('Carmodel.count', -1) do
      delete carmodel_url(@carmodel)
    end

    assert_redirected_to carmodels_url
  end
end
