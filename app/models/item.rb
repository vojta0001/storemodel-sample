class Item < ApplicationRecord
  attribute :data, JsonModel::ItemsData.to_type

  validates :data, store_model: true
end
