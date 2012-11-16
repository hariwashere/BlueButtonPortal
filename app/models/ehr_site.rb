class EhrSite
  attr_accessor :name, :email
#  @@sites = [
#   EhrSite.new("Vista EHR", "blah"),
#   EhrSite.new("Georgia EHR", "blah1"),
#   EhrSite.new("Manually processed EHR", "blah2"),
#  ]

   def initialize(name, email)
      @name = name
      @email = email
  end
  
  def EhrSite.sites
    return [EhrSite.new("Vista EHR", "blah"), EhrSite.new("Georgia EHR", "blah1"), EhrSite.new("Manually processed EHR", "blah2")]
  end
end