class Company < ActiveRecord::Base
        has_many :freebies
        has_many :devs, through: :freebies

        # example how to use this method Company.second.give_freebie(Dev.first, "pencil", 4)
        def give_freebie(dev, item_name, value) 
            Freebie.new(item_name: item_name, value: value, dev: dev, company: self)
        end

        def self.oldest_company
             Company.order(:founding_year).first
        end
end
