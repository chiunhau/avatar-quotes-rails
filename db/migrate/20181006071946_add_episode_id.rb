class AddEpisodeId < ActiveRecord::Migration[5.2]
  def change
    rename_column :lines, :episode, :episode_name
    add_reference :lines, :episode, foreign_key: true
  end
end
