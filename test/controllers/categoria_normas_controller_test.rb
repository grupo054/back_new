require 'test_helper'

class CategoriaNormasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categoria_norma = categoria_normas(:one)
  end

  test "should get index" do
    get categoria_normas_url
    assert_response :success
  end

  test "should get new" do
    get new_categoria_norma_url
    assert_response :success
  end

  test "should create categoria_norma" do
    assert_difference('CategoriaNorma.count') do
      post categoria_normas_url, params: { categoria_norma: { descripcion: @categoria_norma.descripcion } }
    end

    assert_redirected_to categoria_norma_url(CategoriaNorma.last)
  end

  test "should show categoria_norma" do
    get categoria_norma_url(@categoria_norma)
    assert_response :success
  end

  test "should get edit" do
    get edit_categoria_norma_url(@categoria_norma)
    assert_response :success
  end

  test "should update categoria_norma" do
    patch categoria_norma_url(@categoria_norma), params: { categoria_norma: { descripcion: @categoria_norma.descripcion } }
    assert_redirected_to categoria_norma_url(@categoria_norma)
  end

  test "should destroy categoria_norma" do
    assert_difference('CategoriaNorma.count', -1) do
      delete categoria_norma_url(@categoria_norma)
    end

    assert_redirected_to categoria_normas_url
  end
end
