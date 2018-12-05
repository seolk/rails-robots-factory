class AddRobotsToInventors < ActiveRecord::Migration[5.2]
  def change
    add_reference :inventors, :inventor, foreign_key: true
  end
end
