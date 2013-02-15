Ext.Loader.setPath 'Ext', 'assets/sencha/src'
Ext.Loader.setPath 'app', 'assets/sencha/app'

Ext.application
    name: 'SenchaApp'
    appFolder: Ext.Loader.getPath 'app'

    views: ['Main']
    controllers: ['Main']

    launch: ->
        Ext.Viewport.add Ext.create('SenchaApp.view.Main')
