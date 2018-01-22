class AddAddressToAgency < ActiveRecord::Migration[5.1]
    def change
        add_column :agencies, :address, :string
        add_column :agencies, :suburb, :string
    end
end
