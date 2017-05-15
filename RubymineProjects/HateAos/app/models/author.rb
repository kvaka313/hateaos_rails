class Author < ApplicationRecord
  has_many :articles, foreign_key: "writer_id"
end
