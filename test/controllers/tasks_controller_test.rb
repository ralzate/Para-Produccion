require 'test_helper'

class ProductosControllerTest < ActionController::TestCase
  setup do
    @producto = productos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto" do
    assert_difference('producto.count') do
      post :create, producto: { completed: @producto.completed, due_date: @producto.due_date, name: @producto.name, user_id: @producto.user_id }
    end

    assert_redirected_to producto_path(assigns(:producto))
  end

  test "should show producto" do
    get :show, id: @producto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto
    assert_response :success
  end

  test "should update producto" do
    patch :update, id: @producto, producto: { completed: @producto.completed, due_date: @producto.due_date, name: @producto.name, user_id: @producto.user_id }
    assert_redirected_to producto(assigns(:producto))
  end

  test "should destroy producto" do
    assert_difference('producto.count', -1) do
      delete :destroy, id: @producto
    end

    assert_redirected_to productos_path
  end
end
