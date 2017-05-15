class AuthorSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :surname,:links
  has_many :articles, foreign_key: "writer_id"
  type :author

  def links
    [
        {
            rel: :self,
            href: author_path(object)
        }
    ]
  end
end
