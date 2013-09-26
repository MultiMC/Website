# MultiMC website

Uses Grunt to compile UIkit/the website assets, and DocPad with Jade to generate the content.

Run Grunt in the uikit folder to compile the stylesheets for the project. Do "docpad generate" in the docpad folder to generate the content. Run Grunt in the top-level folder to copy all the assets/content in to the dist folder for use.

Do "grunt connect" to host the dist folder at localhost:8082

UIkit tests are available for the theme in uikit/tests.

TODO:
* Content
* Automatic compilation from the top-level folder using "grunt watch"