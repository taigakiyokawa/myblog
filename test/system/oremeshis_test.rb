require "application_system_test_case"

class OremeshisTest < ApplicationSystemTestCase
  setup do
    @oremeshi = oremeshis(:one)
  end

  test "visiting the index" do
    visit oremeshis_url
    assert_selector "h1", text: "Oremeshis"
  end

  test "creating a Oremeshi" do
    visit oremeshis_url
    click_on "New Oremeshi"

    fill_in "Category", with: @oremeshi.category
    fill_in "Final", with: @oremeshi.final
    fill_in "Ingre", with: @oremeshi.ingre
    fill_in "Step1", with: @oremeshi.step1
    fill_in "Step2", with: @oremeshi.step2
    fill_in "Step3", with: @oremeshi.step3
    fill_in "Step4", with: @oremeshi.step4
    fill_in "Time", with: @oremeshi.time
    fill_in "Title", with: @oremeshi.title
    click_on "Create Oremeshi"

    assert_text "Oremeshi was successfully created"
    click_on "Back"
  end

  test "updating a Oremeshi" do
    visit oremeshis_url
    click_on "Edit", match: :first

    fill_in "Category", with: @oremeshi.category
    fill_in "Final", with: @oremeshi.final
    fill_in "Ingre", with: @oremeshi.ingre
    fill_in "Step1", with: @oremeshi.step1
    fill_in "Step2", with: @oremeshi.step2
    fill_in "Step3", with: @oremeshi.step3
    fill_in "Step4", with: @oremeshi.step4
    fill_in "Time", with: @oremeshi.time
    fill_in "Title", with: @oremeshi.title
    click_on "Update Oremeshi"

    assert_text "Oremeshi was successfully updated"
    click_on "Back"
  end

  test "destroying a Oremeshi" do
    visit oremeshis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Oremeshi was successfully destroyed"
  end
end
