# README


This application was built to demonstrate how to incorporate an 3rd party bootstrap template into rails.


NEW ROUTES
Rails won't search routes in vendor assets other than stylesheets and javascripts so I had to create new ones in application.rb

  config.assets.paths << Rails.root.join("vendor", "assets", "startbootstrap", "lib", "font-awesome", "fonts")

  Check paths in rails console with "Rails.application.config.assets.paths"


PRECOMPILE PHTOS
  I also had to precomple the photos with this command in application.rb
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)

ADJUST IMAGE PATHS
I had to change the html image tags to rails helpers and adjust the paths so that rails could find them.

I also changed url() to image_url in the vendor style sheets


IMPORT STYLESHEETS
in the application.scss file I had to import the vendor stylesheets

FONT AWESOME
Thanks to a fiverr request I found out that the path to font-awesome was wrong 
in vendor/assets/startbootstrap/lib/font-awesome/scss/_variables.scss

- /*$fa-font-path:        "../fonts" !default;*/
+ $fa-font-path:        "/assets" !default;


EASING.js
This script could be added to the index page though  I tried easing.js to the vendor/assets/javascripts folder and required it in application.js
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script> -->

OK TO DELETE
There were lots of files that came with the template that I could delete such as the less and css versions.