class AddRedirectionCounterToFeedEntries < ActiveRecord::Migration
  def self.up
    add_column :feed_entries, :redirection_counter, :integer, :default => 0
  end

  def self.down
    remove_column :feed_entries, :redirection_counter
  end
end
