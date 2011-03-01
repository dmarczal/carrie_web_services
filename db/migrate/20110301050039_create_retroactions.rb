class CreateRetroactions < ActiveRecord::Migration
  def self.up
    create_table :retroactions do |t|
      t.references :mistake
      t.timestamps
    end
  end

  def self.down
    drop_table :retroactions
  end
end
