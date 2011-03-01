class CreateHits < ActiveRecord::Migration
  def self.up
    create_table :hits do |t|
      t.string :exercise
      t.string :cell
      t.string :oa
      t.string :answer
      t.string :correct_answer
      t.references :user
      t.timestamps
    end
  end

  def self.down
    drop_table :hits
  end
end
