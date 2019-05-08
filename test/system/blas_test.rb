require "application_system_test_case"

class BlasTest < ApplicationSystemTestCase
  setup do
    @bla = blas(:one)
  end

  test "visiting the index" do
    visit blas_url
    assert_selector "h1", text: "Blas"
  end

  test "creating a Bla" do
    visit blas_url
    click_on "New Bla"

    fill_in "Name", with: @bla.name
    click_on "Create Bla"

    assert_text "Bla was successfully created"
    click_on "Back"
  end

  test "updating a Bla" do
    visit blas_url
    click_on "Edit", match: :first

    fill_in "Name", with: @bla.name
    click_on "Update Bla"

    assert_text "Bla was successfully updated"
    click_on "Back"
  end

  test "destroying a Bla" do
    visit blas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bla was successfully destroyed"
  end
end
