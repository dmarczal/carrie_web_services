require 'test_helper'

class HitsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Hit.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Hit.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Hit.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to hit_url(assigns(:hit))
  end

  def test_edit
    get :edit, :id => Hit.first
    assert_template 'edit'
  end

  def test_update_invalid
    Hit.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Hit.first
    assert_template 'edit'
  end

  def test_update_valid
    Hit.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Hit.first
    assert_redirected_to hit_url(assigns(:hit))
  end

  def test_destroy
    hit = Hit.first
    delete :destroy, :id => hit
    assert_redirected_to hits_url
    assert !Hit.exists?(hit.id)
  end
end
