class Squad < ActiveRecord::Base

  has_many :squad_users
  has_many :users, :through => :squad_users
<<<<<<< HEAD
  has_many :warriors,  :dependent => :destroy
  accepts_nested_attributes_for :warriors, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
=======
  has_many :warriors, :dependent => :destroy
  accepts_nested_attributes_for :warriors, :reject_if => lambda {|a| a[:name].blank? }, :allow_destroy => true

>>>>>>> squad-login-views

  attr_accessor :can_edit
  alias :can_edit? :can_edit

  def editable
    self.can_edit = true
  end


end




#     # in your User model...
# has_one :profile
# before_create :build_default_warrior

# private
# def build_default_warrior
#   # build default profile instance. Will use default params.
#   # The foreign key to the owning User model is set automatically
#   build_warrior
#   true # Always return true in callbacks as the normal 'continue' state
#        # Assumes that the default_profile can **always** be created.
#        # or
#        # Check the validation of the profile. If it is not valid, then
#        # return false from the callback. Best to use a before_validation
#        # if doing this. View code should check the errors of the child.
#        # Or add the child's errors to the User model's error array of the :base
#        # error item
# end


