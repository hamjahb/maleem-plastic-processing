require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit orders_url
    click_on "New Order"

    fill_in "Customer name", with: @order.customer_name
    check "Delivered" if @order.delivered
    fill_in "Filler", with: @order.filler
    fill_in "Film width", with: @order.film_width
    check "Gusset" if @order.gusset
    fill_in "Material", with: @order.material
    fill_in "Order weight kg", with: @order.order_weight_kg
    fill_in "Size", with: @order.size
    fill_in "Specifications", with: @order.specifications
    fill_in "Total boxes", with: @order.total_boxes
    fill_in "Total printed kg", with: @order.total_printed_kg
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "updating a Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "Customer name", with: @order.customer_name
    check "Delivered" if @order.delivered
    fill_in "Filler", with: @order.filler
    fill_in "Film width", with: @order.film_width
    check "Gusset" if @order.gusset
    fill_in "Material", with: @order.material
    fill_in "Order weight kg", with: @order.order_weight_kg
    fill_in "Size", with: @order.size
    fill_in "Specifications", with: @order.specifications
    fill_in "Total boxes", with: @order.total_boxes
    fill_in "Total printed kg", with: @order.total_printed_kg
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end
end
