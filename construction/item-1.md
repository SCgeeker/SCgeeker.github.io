---
layout: page
title: How to build this site
permalink: /construction/item-1/
---

## Requirement
* [R](https://www.r-project.org/) 
* [Rstudio](https://www.rstudio.com/)
* [Ruby](https://www.ruby-lang.org/en/documentation/installation/) for the installation of jekyll
* [RubyGem](https://rubygems.org/pages/download)
* [jekyll](https://jekyllrb.com/)
* Remote server that supports jekyll: [Amazon S3](https://aws.amazon.com/tw/s3/),[Github](https://github.com) 
* Local repository managed by version control system(e.g., git)

## Install Ruby and RubyGem
* For windows
 - [Rubyinstaller](http://rubyinstaller.org/)
 - Fresh user better use the least version
 - Choose the version based on your OS is 32bits or 64bits.
* For other OS
+ Follow the instructions on the [official website]((https://www.ruby-lang.org/en/documentation/installation/))
* Install RubyGem
+ Turn on `command line`
- Windows: input `cmd` in the dialogue `Run`
+ Input the commands on [official page](https://rubygems.org/pages/download)

## Install Jekyll
- Quick Way: Check [homepage of official site](https://jekyllrb.com/)
- Always run `jekyll serve` in `command line` when test personal blog/websit locally out of Rstudio.

## Initialize local repository
- Clone or download a [jekyll theme](http://jekyllthemes.org/) you like.
- Build folder `_source` for .Rmd files.
- Install R packages as following steps(from [Brendan Rocks' blog](https://brendanrocks.com/blogging-with-rmarkdown-knitr-jekyll/)):  

        install.packages(c("knitr", "servr", "devtools"))     # To process .Rmd files  
        devtools::install_github("hadley/lubridate")         # brocks reqs dev version  
        devtools::install_github("brendan-r/brocks")         # My lazy wrapper funs
  
- Build a R project for the website in Rstudio. Such as `scchencom.Rproj`.
- Open R project and fire the post as following stets:

        library(brocks)
        new_post("My first blog post!")

- Check the website at localhost:4000. Run this command `jekyll serve` in the directory of the website.

## Publish the website on github
- Register a Github account.
- Build a github repo in the name `my_github_account.github.io`.
- Clone the github repo to your local repo.
- Commit everything in your local repo.
- Pull and check `my_github_account.github.io` in the web borwser.
- If you need a customized domain for your website, visit a DNS service you prefer and check this [github help page](https://help.github.com/articles/quick-start-setting-up-a-custom-domain/).
