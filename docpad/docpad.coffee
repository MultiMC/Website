# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
    # ...

    templateData:
        site:
            title: "MultiMC"
            description: "Manage Minecraft instances with ease"
            url: "http://multimc.org"
            author: "drayshak"

    collections:
        posts: ->
            @getCollection('documents').findAllLive({relativeOutDirPath:'posts'},[date:-1])

    plugins:
        rss:
            collection: 'posts'
            url: '/rss.xml'
}

# Export the DocPad Configuration
module.exports = docpadConfig