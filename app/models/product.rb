class Product < ActiveRecord::Base
 validates :category, :name, :description, :maintn,
  :tn1, :full1, :presence => true
 validates :sequence, :price, :shipping, :numericality => true, :presence => true

 scope :of_type, lambda { |category| where("category = ?", category).order('sequence ASC') }
 scope :collections, lambda { where("category like ?", 'coll%').order('sequence ASC') }

 def max_sequence
  Product.find_all_by_category(self.category).length
 end
 def previous_sequence
  sequence == 1 ?  max_sequence : sequence - 1
 end
 def next_sequence
  sequence == max_sequence ? 1 : sequence + 1 
 end
end
