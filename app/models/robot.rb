class Robot < ApplicationRecord

  def greet
    if self.friendly
      'Hello'
    else
      'Die Human!'
    end
  end

end
