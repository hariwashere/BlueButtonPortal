class EhrSite
  attr_accessor :name, :email
  
   def initialize(name, email)
      @name = name
      @email = email
  end
  
  def EhrSite.sites
    return [
      EhrSite.new("Vista EHR", "gtvista@direct.i3l.gatech.edu"),
      EhrSite.new("Georgia EHR", "blah1"),
      EhrSite.new("Manually processed EHR", "storage@direct.i3l.gatech.edu")]
  end
end