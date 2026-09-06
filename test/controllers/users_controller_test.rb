require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
# ⭕ 修正後
test "should get new" do
  get signup_path     # ← signup_path に変更
  assert_response :success
end
end
