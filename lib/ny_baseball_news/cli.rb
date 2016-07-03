class NyBaseballNews::CLI

  def call
    greeting
    menu
    news
    goodbye
  end
  
  def greeting
    puts "Welcome to NY Baseball News"
    puts "***************************"
    puts ""
  end

  def menu
    puts "Press 1 for the latest Mets news"
    puts "Press 2 for the latest Yankees news"
    puts "Enter menu for options"

    input = nil
    while input != "exit"
    input = gets.strip.downcase

      if input.to_i == 1
        news
      elsif input.to_i == 2
        NyBaseballNews::News.yankees_post
      elsif input == "menu"
        menu
      end
    end
  end 

  def news
    @news == NyBaseballNews::News.todays_news

    end
 
  def goodbye
    puts "Have a nice day!"
  end

end









