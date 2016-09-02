Bbs::User.class_eval do
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
