class CreateBloggers < ActiveRecord::Migration
  def self.up
    create_table :bloggers do |t|
      t.string :username
      t.text :url
      t.text :rss

      t.timestamps
    end
  end

  def self.down
    drop_table :bloggers
  end
end
