module.exports = (grunt) ->
  "use strict"
  fs = require("fs")
  pkginfo = grunt.file.readJSON("package.json")
  grunt.initConfig
    pkg: pkginfo
    copy:
      uikit:
        files: [
          expand: true
          cwd: "uikit/dist/css"
          src: ["uikit.multimc.min.css"]
          dest: "dist/assets/"
        ,
          expand: true
          cwd: "uikit/dist/js"
          src: ["uikit.min.js"]
          dest: "dist/assets/"
        ,
          expand: true
          cwd: "docpad/out"
          src: ["*.html"]
          dest: "dist"
        ]

  
  # Load grunt tasks from NPM packages
  grunt.loadNpmTasks "grunt-contrib-copy"
  grunt.loadNpmTasks "grunt-contrib-watch"
  
  # Register grunt tasks
  grunt.registerTask "default", ["copy"]
