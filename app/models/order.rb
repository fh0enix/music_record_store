class Order < ApplicationRecord
  belongs_to :user
  belongs_to :music_record
end
