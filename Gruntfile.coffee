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
          cwd: "uikit/themes/custom/multimc/dist"
          src: [ "uikit.multimc.min.css" ]
          dest: "dist/assets/css"
        ,
          expand: true
          cwd: "uikit/dist/js"
          src: [ "uikit.min.js" ]
          dest: "dist/assets/js"        
        ]

      docpad:
        files: [
          expand: true
          cwd: "docpad/out"
          src: [ "**/*.html", "**/*.ico", "**/*.png", "**/*.js", "**/*.xml", "**/*.css" ]
          dest: "dist"
        ]

    connect:
      server:
        options:
          port: 8082
          base: "dist"
          #keepalive: true

    exec:
      githash:
        command: "git rev-parse --verify HEAD > last_commit.html"

      uikit:
        cwd: "uikit"
        command: "grunt"

      docpad:
        cwd: "docpad"
        command: "docpad generate --env static"

    watch:
      uikit:
        files: [ "uikit/src/**/*.less", "uikit/src/js/*.js" ]
        tasks: [ "exec:uikit", "copy:uikit" ]

      docpad:
        files: [ "docpad/src/**/*" ]
        tasks: [ "exec:docpad", "copy:docpad" ]

    uncss:
      dist:
        files:
          'dist/assets/css/uikit.multimc.min.css': [ 'dist/*.html' ]

  
  # Load grunt tasks from NPM packages
  grunt.loadNpmTasks "grunt-uncss"
  grunt.loadNpmTasks "grunt-contrib-copy"
  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-contrib-connect"
  grunt.loadNpmTasks "grunt-exec"
  
  # Register grunt tasks
  grunt.registerTask "default", [ "connect", "watch" ]
  grunt.registerTask "build", [ "exec", "copy", "uncss" ]
