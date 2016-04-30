---
layout: page
title: Reserve Packages While Updated R
permalink: /construction/item-3/
---

[R]() and [Rstudio]() are going to update for a couple of weeks. This website are managed under the version control system and the R package `brocks`. This is the way I reserved the installed package when the last version is released. The below codes for update R core are from [R-statistics blog's](http://www.r-statistics.com/) [post](http://www.r-statistics.com/2013/03/updating-r-from-r-on-windows-using-the-installr-package/).

Package `installr` offers the function to check and install the last version. In the following picture, `check.for.update.R()` found a last version (3.2.5) in GUI of 3.2.4. Therefore `check.for.update.R()` returned `TRUE`. Then I ran `install.R()` and the install procedure began as like R installed for the first time.
  
![updateR](/images/install_last_version_R.png)
  
R GUI (3.2.4) was on my desktop after the install procedure finished. Then I ran `copy.packages.between.libraries()` that copied the libraries in the direcotry of `3.2.3` to the directory of `3.2.5`.(**This might be available in R GUI 3.2.5**). 
  
![copylibraries](/images/copy_installed_packaged_to_last_updated_R.png)
  
The final step was completed in Rstudio. Rstudio has the buttoms to checked the last version of every installed package. 
  
![updatePackage](/images/update_packages_in_Rstudio.png)
  
And I built the new post as the old time.
  
![workafterupdate](/images/available_after_update.png)  

