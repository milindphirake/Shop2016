class AddPicToProduct < ActiveRecord::Migration
  def self.up
    drop_attached_file :products, :photo
    end
  end

  
end
