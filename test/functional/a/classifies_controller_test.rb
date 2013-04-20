require 'test_helper'

class A::ClassifiesControllerTest < ActionController::TestCase
  setup do
    @a_classify = a_classifies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_classifies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_classify" do
    assert_difference('A::Classify.count') do
      post :create, a_classify: { is_visible: @a_classify.is_visible, name: @a_classify.name, parent_id: @a_classify.parent_id, position: @a_classify.position }
    end

    assert_redirected_to a_classify_path(assigns(:a_classify))
  end

  test "should show a_classify" do
    get :show, id: @a_classify
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_classify
    assert_response :success
  end

  test "should update a_classify" do
    put :update, id: @a_classify, a_classify: { is_visible: @a_classify.is_visible, name: @a_classify.name, parent_id: @a_classify.parent_id, position: @a_classify.position }
    assert_redirected_to a_classify_path(assigns(:a_classify))
  end

  test "should destroy a_classify" do
    assert_difference('A::Classify.count', -1) do
      delete :destroy, id: @a_classify
    end

    assert_redirected_to a_classifies_path
  end
end
