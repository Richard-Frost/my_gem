class NyBaseballNews::News

  attr_accessor :mets_headlines, :yanks_headlines

  
  def self.todays_news
    mn = []
    mn << self.mets_post
    mn
  end
  

  def self.mets_post 
    
    mets_doc = Nokogiri::HTML(open("http://nypost.com/tag/new-york-mets/"))
    a = mets_doc.search("article header h3 a[href]").each_with_object({}) do |m|
    mets = self.new
    mets.mets_headlines = m.text
    
    mets
    end
  end
  
  def self.yankees_post
    yanks_doc = Nokogiri::HTML(open("http://nypost.com/tag/new-york-yankees/"))
    b = yanks_doc.search("article header h3 a[href]").each_with_object({}) do |y|
    yanks = self.new

    yanks.yanks_headlines = y.text
    end
  end  
  
end

#NyBaseballNews::News.nypost

