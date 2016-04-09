class Google < ActiveRecord::Base
    
    def scrape_google_news(url)
        begin
        page = Nokogiri::HTML(open('https://news.google.com/news/'))
        page.css('script').remove
        self.title = page.css('h2.esc-lead-article-title').text
        self.body = page.css('.esc-lead-snippet-wrapper').text
        self.time = page.css('.al-attribution-timestamp').text
    end
  end
end
