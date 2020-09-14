

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than: 0 }
  validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}

  before_save :create_password


  private
    def create_password
      self.password = (0...8).map { (65 + rand(26)).chr }.join
      # self.update(password: password)
    end

end
