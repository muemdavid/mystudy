require 'test_helper'

class MarketingsControllerTest < ActionController::TestCase
  setup do
    @marketing = marketings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:marketings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marketing" do
    assert_difference('Marketing.count') do
      post :create, marketing: { email: @marketing.email, jumlahpeserta: @marketing.jumlahpeserta, keterangan: @marketing.keterangan, nama: @marketing.nama }
    end

    assert_redirected_to marketing_path(assigns(:marketing))
  end

  test "should show marketing" do
    get :show, id: @marketing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @marketing
    assert_response :success
  end

  test "should update marketing" do
    patch :update, id: @marketing, marketing: { email: @marketing.email, jumlahpeserta: @marketing.jumlahpeserta, keterangan: @marketing.keterangan, nama: @marketing.nama }
    assert_redirected_to marketing_path(assigns(:marketing))
  end

  test "should destroy marketing" do
    assert_difference('Marketing.count', -1) do
      delete :destroy, id: @marketing
    end

    assert_redirected_to marketings_path
  end
end
