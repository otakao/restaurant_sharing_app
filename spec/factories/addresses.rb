FactoryBot.define do

  factory :address do
    last_name             {"山田"}
    first_name            {"太郎"}
    shop_name             {"ぽんた"}
    shop_category         {"和食, 1"}
    position              {"オーナー, 4"}
    postal_code           {"1000006"}
    prefecture_name       {"東京都"}
    city                  {"千代田区有楽町"}
    street                {"1-2-2"}
    building              {"東宝日比谷ビル"}
    tel                   {"0335009700"}
  end
end