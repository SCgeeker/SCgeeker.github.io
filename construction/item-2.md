---
layout: page
title: How to post in use of Rmarkdown
permalink: /construction/item-2/
---

To make a blog post in this website, I installed `brocks` package developed by [Brendan Rocks](https://github.com/brendan-r). The introduction of `brocks` package is available in [his blog post](https://brendanrocks.com/blogging-with-rmarkdown-knitr-jekyll/).

There are some mikstakes(bugs?) to be fixed when `new_post()` is executed to generate a new Rmarkdown file. The default front matter is as following:  

        ---  
        layout: post  
        title:  new post  
        date: `r Sys.time()`  
        published: true  
        tags: [example1, example2]  
        ---  

I have to change this yaml section as following then the post is available.  

        ---  
        layout: post
        title:  new post
        date: `r Sys.Date()`
        categories: example1, example2
        ---

In addition, before the new blog post and article will be published, old `_site` folder is better to be deleted.  
