require 'test_helper'

class RetroactionsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Retroaction.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Retroaction.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Retroaction.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to retroaction_url(assigns(:retroaction))
  end

  def test_edit
    get :edit, :id => Retroaction.first
    assert_template 'edit'
  end

  def test_update_invalid
    Retroaction.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Retroaction.first
    assert_template 'edit'
  end

  def test_update_valid
    Retroaction.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Retroaction.first
    assert_redirected_to retroaction_url(assigns(:retroaction))
  end

  def test_destroy
    retroaction = Retroaction.first
    delete :destroy, :id => retroaction
    assert_redirected_to retroactions_url
    assert !Retroaction.exists?(retroaction.id)
  end
end
