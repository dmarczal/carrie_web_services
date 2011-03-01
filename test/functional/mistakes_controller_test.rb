require 'test_helper'

class MistakesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Mistake.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Mistake.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Mistake.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to mistake_url(assigns(:mistake))
  end

  def test_edit
    get :edit, :id => Mistake.first
    assert_template 'edit'
  end

  def test_update_invalid
    Mistake.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Mistake.first
    assert_template 'edit'
  end

  def test_update_valid
    Mistake.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Mistake.first
    assert_redirected_to mistake_url(assigns(:mistake))
  end

  def test_destroy
    mistake = Mistake.first
    delete :destroy, :id => mistake
    assert_redirected_to mistakes_url
    assert !Mistake.exists?(mistake.id)
  end
end
