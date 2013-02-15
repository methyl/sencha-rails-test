Ext.define 'SenchaApp.view.Main'
  extend: 'Ext.tab.Panel'
  xtype: 'main'
  requires: ['Ext.TitleBar']
  config: 
    tabBarPosition: 'bottom'

    items: [
      {
        title: 'Welcome'
        iconCls: 'home'

        styleHtmlContent: true
        scrollable: true

        html: "Hello from Sencha!"
        items:
          docked: 'top'
          xtype: 'titlebar'
          title: 'Welcome to Sencha Touch 2'
          items:
            xtype: 'button' 
            text: "Full version" 
            id: "fullVersionButton"
      }
      {
        title: 'Test'
        iconCls: 'home'

        styleHtmlContent: true
        scrollable: true

        html: "This is test!"
        items:
          docked: 'top'
          xtype: 'titlebar'
          title: 'Test'
          items:
            xtype: 'button' 
            text: "Full version" 
            id: "fullVersionButton"
      }
    ]

