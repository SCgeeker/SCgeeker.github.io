---
layout: post
author: Sau-Chin Chen
title:  Manage a blog for the bibliography management optimization
date: 2017-05-08
modified: 2017-05-09
comments: true
categories: [blog_skills, knowledge_management]
---

- Because of my limited experiences, the recommendations might be useless for the users of EndNote, Mendeley, and the other reference management software. Although the concrete suggesions for the bloggers on many blog services are unavailable, the special recommendations and experiences are welcome. 

Many promoters of open-accessible literature spread their preprinted articles through the personal and collaborative blogs. Bloggers and followers like me usually manage the last updated posts in the reference managers. My [zotero][1] have collected a lot of blog posts to be commented and to be cited in my coming articles. After collected hundreds of posts, I found that zotero not always imported the meta data of the blog posts for the correct citations. This post presents why not all the necessary meta data can be imported by the reference managers, and shows how the readers and bloggers could manage these situations.

Referring to the 76th example of APA 6th style and the [explain of Timothy McAdoo (2016)][2], I demonstrates the reference format of a blog post like following: 

    "Who". (Year, Month, Day). "Title of the post"[Blog post]. Retrieved from "my url"

For a long time, I had been confused why some imported posts have no released date, and some do not include the author's name. Until read this blog post about [social meta tags][3], I realized that **zotero** establish the items for the blog posts and webpages in terms of the `meta` tags in the source html files. To have the correct citation of a blog post, a post at least has to have the three `meta` tags: `author`, `article:published_time`, `og:title`. I built a [template][4] showing how these tag are included in my `head.html`.

Many of my collected posts are from the active psychologists and statisticans. [PsychBrief][5] has gathered the [43 this kind of academic blogs][6]. After a short survey, I found that **WordPress** is the favorite of these bloggers (29 blogs). **Google blogpost** is the second preference (7 blogs). Almost all the **WordPress** blog posts are able to export the `meta` tags for the correct citations. However, some collaborative blogs, such as Andrew Gelman's [Statistical Modeling, Causal Inference, and Social Science][7], have no the `author` tag. **Google blogpost** at default have no the tag `article:published_time`. As a user of **zotero**, I have to fill in these information by hands after imported these blog posts.

To help the supporters of open accessible literature have the efficient bibliography management, I summarize three situations according to my survey and experience:  

1. Single bloggers manages the **WordPress** blog.  
*For readers*: It's fortune. All necessary tags are able to be imported.  
*For bloggers*: The author's name have been registered since the day you opened your blog. When some posts are collaborative works, the default `author` tag many not show the authorship as your wish.  

2. Many bloggers share one **WordPress** blog; Bloggers manage the personal site in the other services.  
*For readers*: Keep in mind that not all the necessary tags could be exported from these posts.  
*For bloogers*: If you want to help your readers' bibliography managements easier, you could take hours to study how to put all the necessary `meta` tags on each post.    

3. Bloggers manage the **jekyll-based** blog.  
*For readers*: It's the worst that many jekyll themes set the fewest `meta` tags at default. On the ohter hand, it's the best that the bloggers realized every things the readers need.   
*For bloggers*: In use of the [markdown syntax][8], your blog post is able to fetch the `author`, `published_time`, and `og:title` in [YAML][9]. There is the flexibility that a blog collects the works of a single author and the collaborative consequence. 

[1]: https://www.zotero.org/
[2]: http://blog.apastyle.org/apastyle/2016/04/how-to-cite-a-blog-post-in-apa-style.html
[3]: https://moz.com/blog/meta-data-templates-123
[4]: http://scchen.com/blog/2017/05/templete-of-a-citable-blog-post.html
[5]: http://psychbrief.com
[6]: http://psychbrief.com/psychological-methods-blog-feed/
[7]: http://andrewgelman.com/
[8]: https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
[9]: https://en.wikipedia.org/wiki/YAML
