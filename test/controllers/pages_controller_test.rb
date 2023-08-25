require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get accueil" do
    get pages_accueil_url
    assert_response :success
  end

  test "should get tarifs" do
    get pages_tarifs_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

  test "should get nos_realisations" do
    get pages_nos_realisations_url
    assert_response :success
  end
end
