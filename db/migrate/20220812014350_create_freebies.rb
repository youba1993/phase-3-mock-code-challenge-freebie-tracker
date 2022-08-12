class CreateFreebies < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |i|
        i.integer   :dev_id
        i.integer   :company_id
        i.string    :item_name
        i.integer   :value
    end
  end
end
