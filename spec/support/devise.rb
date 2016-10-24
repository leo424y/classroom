# 讓 controller test 有辦法抓到 devise 的 syntax
RSpec.configure do |config|
  config.include Devise::Test::ControllerHelpers, type: :controller
end
