class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #

    #can :read, :all

    user ||= User.new # guest user (not logged in)
    if user.is? :admin
      can :manage, :all
    elsif user.is? :moderator
      can :manage, BlogMessage
    elsif user.is? :author
      can :create, BlogMessage
      can :read, BlogMessage
      can :manage, BlogMessage, :user_id => user.id
      can :manage_rating, BlogMessage

      can :manage, User, :id => user.id

      can :create, Comment
      can :read, Comment
      can :manage, Comment, :user_id => user.id

      #can :manage, Message, :sender => user
      #can :read, Message, :recipient => user
    else
      #can :read, BlogMessage
      #can :manage_rating, BlogMessage
      #can :create, BlogMessage

      can :manage, :all
    end

    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
