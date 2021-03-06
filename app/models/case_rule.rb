class CaseRule < ActiveRecord::Base
  belongs_to :case
  belongs_to :rule
  has_many :case_rule_counts, :dependent => :destroy  

  accepts_nested_attributes_for :case_rule_counts, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
  
end
