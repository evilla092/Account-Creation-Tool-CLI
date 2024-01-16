class UserAccount
  require "date"


  attr_accessor :first_name, :last_name, :dob, :username, :password, :id

  def initialize(first_name, last_name, dob, username, password, id)
    self.first_name = first_name
    self.last_name = last_name
    self.dob = dob
    @username = username
    @password = password
    @id = id
    
  end

  def first_name=(value)
    unless value.is_a?(String)
      raise "value must be a string"
    end
    @first_name = value.capitalize
  end

  def last_name=(value)
    unless value.is_a?(String)
      raise "value must be a string"
    end
    @last_name = value.capitalize
  end

  def dob=(value)
    value = Date.parse(value)
    @dob = value.strftime("%b %d %Y")
  end


end
