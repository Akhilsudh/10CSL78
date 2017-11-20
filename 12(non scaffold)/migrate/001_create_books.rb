class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
    t.column :accession_number, :string
    t.column :title, :string
    t.column :author, :string
    t.column :edition, :string
    t.column :publisher, :string
     end
  end

  def self.down
    drop_table :books
  end
end
