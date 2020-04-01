class User < ActiveRecord::Base
  def to_clear_string
    "#{id} .  #{user_name}  #{user_email} "
  end
end
