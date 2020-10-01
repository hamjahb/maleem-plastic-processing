require "application_system_test_case"

class RollsTest < ApplicationSystemTestCase
  setup do
    @roll = rolls(:one)
  end

  test "visiting the index" do
    visit rolls_url
    assert_selector "h1", text: "Rolls"
  end

  test "creating a Roll" do
    visit rolls_url
    click_on "New Roll"

    check "Cut complete" if @roll.cut_complete
    check "Gusset complete" if @roll.gusset_complete
    check "Ink complete" if @roll.ink_complete
    fill_in "Machine number", with: @roll.machine_number
    fill_in "Operator name", with: @roll.operator_name
    fill_in "Order", with: @roll.order_id
    fill_in "Roll weight", with: @roll.roll_weight
    click_on "Create Roll"

    assert_text "Roll was successfully created"
    click_on "Back"
  end

  test "updating a Roll" do
    visit rolls_url
    click_on "Edit", match: :first

    check "Cut complete" if @roll.cut_complete
    check "Gusset complete" if @roll.gusset_complete
    check "Ink complete" if @roll.ink_complete
    fill_in "Machine number", with: @roll.machine_number
    fill_in "Operator name", with: @roll.operator_name
    fill_in "Order", with: @roll.order_id
    fill_in "Roll weight", with: @roll.roll_weight
    click_on "Update Roll"

    assert_text "Roll was successfully updated"
    click_on "Back"
  end

  test "destroying a Roll" do
    visit rolls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roll was successfully destroyed"
  end
end
