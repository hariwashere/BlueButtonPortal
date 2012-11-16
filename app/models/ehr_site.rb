class EhrSite
  attr_accessor :name, :email
  
   def initialize(name, email)
      @name = name
      @email = email
  end
  
  def EhrSite.sites
    return [
      EhrSite.new("Vista EHR", "shari@direct.i3l.gatech.edu"),
      EhrSite.new("Georgia EHR", "blah1"),
      EhrSite.new("Manually processed EHR", "blah2")]
  end
end