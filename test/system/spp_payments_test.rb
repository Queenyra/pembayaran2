require "application_system_test_case"

class SppPaymentsTest < ApplicationSystemTestCase
  setup do
    @spp_payment = spp_payments(:one)
  end

  test "visiting the index" do
    visit spp_payments_url
    assert_selector "h1", text: "Spp payments"
  end

  test "should create spp payment" do
    visit spp_payments_url
    click_on "New spp payment"

    fill_in "Amount", with: @spp_payment.amount
    fill_in "Pay at", with: @spp_payment.pay_at
    fill_in "Spp batch", with: @spp_payment.spp_batch_id
    fill_in "Spp invoice", with: @spp_payment.spp_invoice_id
    fill_in "Spp student", with: @spp_payment.spp_student_id
    fill_in "Tipe", with: @spp_payment.tipe
    fill_in "User", with: @spp_payment.user_id
    click_on "Create Spp payment"

    assert_text "Spp payment was successfully created"
    click_on "Back"
  end

  test "should update Spp payment" do
    visit spp_payment_url(@spp_payment)
    click_on "Edit this spp payment", match: :first

    fill_in "Amount", with: @spp_payment.amount
    fill_in "Pay at", with: @spp_payment.pay_at
    fill_in "Spp batch", with: @spp_payment.spp_batch_id
    fill_in "Spp invoice", with: @spp_payment.spp_invoice_id
    fill_in "Spp student", with: @spp_payment.spp_student_id
    fill_in "Tipe", with: @spp_payment.tipe
    fill_in "User", with: @spp_payment.user_id
    click_on "Update Spp payment"

    assert_text "Spp payment was successfully updated"
    click_on "Back"
  end

  test "should destroy Spp payment" do
    visit spp_payment_url(@spp_payment)
    click_on "Destroy this spp payment", match: :first

    assert_text "Spp payment was successfully destroyed"
  end
end
