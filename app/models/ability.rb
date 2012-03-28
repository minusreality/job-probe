class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new # guest user
    
    if user.role == "admin"
      can :manage, :all
    else
      can :create, Job
      can [:read, :edit, :update, :destroy], Job, :user_id => user.id

      can :create, Ad
      can [:read, :edit, :update, :destroy], Ad, :user_id => user.id
      
      can :create, Recruiter
      can [:read, :edit, :update, :destroy], Recruiter, :user_id => user.id
    end
  end
end

