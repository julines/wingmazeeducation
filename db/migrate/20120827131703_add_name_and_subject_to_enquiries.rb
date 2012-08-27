class AddNameAndSubjectToEnquiries < ActiveRecord::Migration
  def self.up
    add_column :enquiries, :name, :string
    add_column :enquiries, :subject, :string
  end

  def self.down
    remove_column :enquiries, :subject
    remove_column :enquiries, :name
  end
end
