class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_validation :capitalize_firstname_lastname
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :players, dependent: :destroy
         validates :username, uniqueness: true
         validates :first_name, :last_name, :username, length: { minimum: 3 }


    def username_must_be_unique
      errors.add(:username, "username must be unique")
    end


  private

  def capitalize_firstname_lastname
    self.first_name = first_name.capitalize unless first_name.nil?
    self.last_name = last_name.capitalize unless last_name.nil?
  end

end
