library(rmarkdown)

rmarkdown::clean_site(preview = TRUE)

rmarkdown::clean_site()

rmarkdown::render_site()

rmarkdown::render_site("index.Rmd")
rmarkdown::render_site("about.Rmd")
rmarkdown::render_site("govdown.Rmd")
