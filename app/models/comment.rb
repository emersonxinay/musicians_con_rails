class Comment < ApplicationRecord
  belongs_to :regular_user
  belongs_to :post
end
