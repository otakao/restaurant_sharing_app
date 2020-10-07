FactoryBot.define do

  factory :post do
    title                 {"千葉ポーク"}
    category_id           {"肉・肉加工品, 1"}
    image                 {File.open("#{Rails.root}/spec/fixtures/bg-mainVisual-pict_pc.jpg")}
    description           {"aaa"}
    price                 {"2000"}
    condition             {"冷蔵, 2"}
    delivery_place        {"当店にて受取, 1"}
    dalivery_date         {"当日, 1"}
    

    after(:build) do |post|
      post.images << build(:image, post: post)
    end
  end
end