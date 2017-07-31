class Query < ApplicationRecord
  paginates_per 5
  has_many :answers
end
