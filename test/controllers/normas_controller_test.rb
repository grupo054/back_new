require 'test_helper'

class NormasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @norma = normas(:one)
  end

  test "should get index" do
    get normas_url
    assert_response :success
  end

  test "should get new" do
    get new_norma_url
    assert_response :success
  end

  test "should create norma" do
    assert_difference('Norma.count') do
      post normas_url, params: { norma: { categoria_normas_id: @norma.categoria_normas_id, descripcion: @norma.descripcion, img_vid: @norma.img_vid, tipo: @norma.tipo } }
    end

    assert_redirected_to norma_url(Norma.last)
  end

  test "should show norma" do
    get norma_url(@norma)
    assert_response :success
  end

  test "should get edit" do
    get edit_norma_url(@norma)
    assert_response :success
  end

  test "should update norma" do
    patch norma_url(@norma), params: { norma: { categoria_normas_id: @norma.categoria_normas_id, descripcion: @norma.descripcion, img_vid: @norma.img_vid, tipo: @norma.tipo } }
    assert_redirected_to norma_url(@norma)
  end

  test "should destroy norma" do
    assert_difference('Norma.count', -1) do
      delete norma_url(@norma)
    end

    assert_redirected_to normas_url
  end
end
