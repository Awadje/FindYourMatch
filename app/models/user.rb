class User < ApplicationRecord
  has_and_belongs_to_many :days
  has_many :first_matches, :class_name => "Day", :foreign_key => "student_a"
  has_many :second_matches, :class_name => "Day", :foreign_key => "student_b"


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
