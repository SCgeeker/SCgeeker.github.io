# Sau-chin Chen's personal website

Copyright 2016
Sau-Chin Chen <pmsp96@gmail.com>

## About

This repository contains the source for my website. Private repository is at [bitbucket](https://bitbucket.org/). Public repository is at [Github](https://github.com/).

## Where is the content?

The `master` branch contains the last released version. The content is stored in git branches, each of which corresponds to one particular version of the website site. For example, to view the content under construction, switch to the `gh-pages` branch.

## Structure of this website

* Homepage: root page opened through http://www.scchen.com
* About: see `about.md`
* CV: Link to the least CV I upload to academia.edu
* Article: see markdown files in `article`
* Blog: Rmarkdown posts have the source files in `_source`. I use this format to write the posts when I have to embed the codes or demonstrate the computations. As present I am using R package `brocks`. The instruction for `brocks` is summarzied in [this post](https://brendanrocks.com/blogging-with-rmarkdown-knitr-jekyll/). Markdown post have the source files in `_posts`. I use this format when there are only text and pictures.

## Components
File structure of a jekyll blog is explained in this [official wiki](https://jekyllrb.com/docs/structure/). The following bullets describe the specific files in this theme.
- `_source` collects all the Rmarkdown files. Only the Rmarkdown files in this folder will be transfered to blog post. Use the function `new_post()` in `brocks` package, the default Rmarkdown for blog post will be created in `_source` folder.
- `sass` is a CSS extension used by steve-ngvb theme.
- `figure` collects all the image files conducted by R programming.
- `images` collects all the image files unrelated to R programming.
- `menu.yml` in `_data` folder organizes the responsive buttons on the top of this website.

## License information

<a rel="license" href="http://creativecommons.org/licenses/by/3.0/deed.en_US"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by/3.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Sau-chin Chen's personal website</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://osdoc.cogsci.nl" property="cc:attributionName" rel="cc:attributionURL">Sau-Chin Chen</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/deed.en_US">Creative Commons Attribution 3.0 Unported License</a>.<br />
