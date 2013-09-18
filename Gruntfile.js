
module.exports = function(grunt) {

    "use strict";

    var fs = require('fs'), pkginfo = grunt.file.readJSON("package.json");

    grunt.initConfig({

        pkg: pkginfo,

        copy: {
            uikit: {
                files: [{ expand: true, cwd: "uikit/dist/css", src: ["uikit.multimc.min.css"], dest: "dist/assets/" },
                        { expand: true, cwd: "uikit/dist/js", src: ["uikit.min.js"], dest: "dist/assets/" },
                        { expand: true, cwd: "src", src: ["*.html"], dest: "dist" }]
            }
        }

    });

    // Load grunt tasks from NPM packages
    grunt.loadNpmTasks("grunt-contrib-copy");

    // Register grunt tasks
    grunt.registerTask("default", ["copy"]);

};