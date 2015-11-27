class ActiveAdmin::CommentPolicy < GeneralPolicy
  def index?
    false
  end
end
