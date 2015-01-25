# MultiMC website

Development happens on the "develop" branch, "master" is considered appropriate for a live website.

Uses Grunt to compile UIkit/the website assets, and DocPad with Jade to generate the content.

You need Node.js, NPM and DocPad to compile and preview the website. Run "npm install" in the top-level, uikit and docpad folders before running grunt, it will install the other dependencies for you.

You may need to run "npm install -g grunt-cli" to be able to run grunt, and "npm install -g docpad@<VERSION>" to use DocPad.

Run "grunt" in the main folder to start a preview server at localhost:8082. Whilst it's running, edit LESS/JS files in the uikit folder, or anything in docpad/src, and it will automatically attempt to compile the appropriate source files. The output is copied in to the dist folder. Check the associated Gruntfile's for other available tasks.

UIkit tests are available for the theme in uikit/tests.

TODO:
* Show download stats