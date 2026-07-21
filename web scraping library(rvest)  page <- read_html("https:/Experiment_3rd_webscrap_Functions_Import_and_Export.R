#web scraping
library(rvest)

page <- read_html("https://books.toscrape.com")

titles <- page %>%
  html_elements("h3 a") %>%
  html_attr("title")

print(titles)
