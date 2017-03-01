class CreatePathways < ActiveRecord::Migration
  def change
    create_table :pathways do |t|

      t.timestamps

    end
  end
end
