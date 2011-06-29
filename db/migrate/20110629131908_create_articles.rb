class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :title, :null => false
      t.text :body, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
