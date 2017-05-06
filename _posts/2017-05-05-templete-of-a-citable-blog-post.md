---
layout: post
title:  Template of a citable blog post
date: 2017-05-05
comments: true
categories: [blog_skills, knowledge_management]
---

## This post is for future posts.


Check the lines 5 to 9 of my post template [`head.html`](https://github.com/SCgeeker/SCgeeker.github.io/blob/master/_includes/head.html). 
```html
    <meta name="generator" content="blogger"/>
    <meta name="author" content="Sau-Chin Chen"/>
    # A if-then loop imports page.title.
    <meta property="og:title" content="{% if page.title %}{{ page.title }}{% else %}{{ site.title }}{% endif %}"/>
    # A if-then loop imports page.date.
    <meta property="article:published_time" content="{% if page.date %}{{ page.date | date: "%B %-d, %Y"}}{% else %}{{ site.date }}{% endif %}"/>
    <meta property="og:site_name" content="Sau-Chin Chen's website"/>
```

