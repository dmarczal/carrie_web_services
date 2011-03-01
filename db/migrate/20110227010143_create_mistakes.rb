class CreateMistakes < ActiveRecord::Migration
  def self.up
    create_table :mistakes do |t|
      t.binary :object
      t.string :exercise
      t.string :oa
      t.text :description
      t.string :answer
      t.string :correct_answer
      t.string :title
      t.references :user
      t.string :cell
      t.timestamps
    end
  end

  def self.down
    drop_table :mistakes
  end
end
