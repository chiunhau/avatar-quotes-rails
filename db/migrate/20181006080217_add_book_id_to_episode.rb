class AddBookIdToEpisode < ActiveRecord::Migration[5.2]
  def change
    add_reference :episodes, :book, foreign_key: true
  end
end
