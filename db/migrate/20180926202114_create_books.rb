class CreateBooks < ActiveRecord::Migration #[5.1]
  belongs_to :guser
  
  def change
    create_table :books do |t|
      t.text :title
      t.text :isbn
      #t.integer :user_id
      #t.text :author

      #t.references :user
      t.timestamps 
    end
  end
end
