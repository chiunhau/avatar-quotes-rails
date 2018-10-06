class AddEpisodeToLines < ActiveRecord::Migration[5.2]
  def change
    add_column :lines, :episode, :string
  end
end
