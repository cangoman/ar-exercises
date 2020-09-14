class Store < ActiveRecord::Base
  has_many :employees
  validates :annual_revenue, numericality: { only_integer: true}
  validates :name, length: {minimum: 3}
  validate :at_least_one_gender_apparel

  before_destroy :has_employees

  private
    def at_least_one_gender_apparel
      if (!womens_apparel && !mens_apparel)
        errors.add(:mens_apparel, "need at least one gender's apparel")
        errors.add(:womens_apparel, "need at least one gender's apparel")
      end
    end
    
    def has_employees
      if (self.employees.size >= 1)
        raise ActiveRecord::Rollback, "Can't delete store with one or more employees!"
      end
    end
  
end
