require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    fill_in "Name", with: 'Djoe'
    fill_in "Password", with: 'secret'
    fill_in "Confirm", with: 'secret'
    click_on "Create User"

    assert_text "Djoe was successfully created"
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    fill_in "Name", with: 'Bjoe'
    fill_in "Password", with: 'secret'
    fill_in "Confirm", with: 'secret'
    click_on "Update User"

    assert_text "Bjoe was successfully updated"
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Please Log In"
  end
end
