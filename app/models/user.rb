class User < ApplicationRecord
  rolify :before_add => :before_add_method

  # def is_admin?
  #   self.role.label == "admin"
  #   puts '----------'
  # end

  def before_add_method(role)
    
    # puts ">>>>>>>>>>>>>>>>>>"
  end
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
