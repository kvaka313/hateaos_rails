class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.belongs_to :writer, :class_name=>'Author'

    end
  end
end
