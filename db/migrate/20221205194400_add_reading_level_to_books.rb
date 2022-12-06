class AddReadingLevelToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :reading_level, :integer
  end
end
