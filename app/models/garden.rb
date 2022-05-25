class Garden < ApplicationRecord
  validates :name, :banner_url, presence: true
  validates :name, length: { minimum: 3 }
  validates :banner_url, format: { with: /\Ahttp.+\.(jpg|png)/ }
end
