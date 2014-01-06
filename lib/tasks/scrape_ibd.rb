desc "Scrape IBD to Top 50"
task :import_top_fifty => :environment do
  require 'mechanize'
  agent = Mechanize.new
  
  agent.get("http://www.investors.com/default.htm")
  agent.page.link_with(:text => "Sign In").click


end


# desc "Import wish list"

#   form = agent.page.forms.first
#   form.password = "secret"
#   form.submit
  
#   agent.page.link_with(:text => "Wish List").click
#   agent.page.search(".edit_item").each do |item|
#     Product.create!(:name => item.text.strip)
#   end
# end