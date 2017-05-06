---
layout: post
title:  Template of a citable blog post
date: 2017-05-05
comments: true
categories: [blog_skills, knowledge_management]
---

## This post is for future posts.


My post template `head.html` has these meta tags.  
```
  <meta name="generator" content="blogger"/>
  <meta name="author" content="Sau-Chin Chen"/>
  <meta property="og:title" content="{% if page.title %}{{ page.title }}{% else %}{{ site.title }}{% endif %}"/>
  <meta property="article:published_time" content="{% if page.date %}{{ page.date | date: "%B %-d, %Y"}}{% else %}{{ site.date }}{% endif %}"/>
  <meta property="og:site_name" content="Sau-Chin Chen's website"/>
```
