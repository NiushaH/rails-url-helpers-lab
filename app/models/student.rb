class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active
    # default is false (or inactive) unless logged in / active
    if @current_user.nil? == true
      @current_user.logged_in? == false
    else
      @current_user.logged_in? == true
    end
  end

end