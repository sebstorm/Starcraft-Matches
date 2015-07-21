class RemovePlayerIdColumnFromMatches < ActiveRecord::Migration
  def change

    remove_column :matches, :player_id
  end
end
