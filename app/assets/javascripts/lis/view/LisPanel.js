/**
 * Created by git on 14-3-26.
 */
var store = Ext.create('Lis.store.Patients');
Ext.define('Lis.view.LisPanel', {
    extend: 'Ext.grid.Panel',
    alias: 'widget.lis_panel',
    store: store.load(),
    forceFit: true,
    columns: [
        {
            text: '姓名',
            dataIndex: 'name'
        } ,
        {
            text: '年龄',
            dataIndex: 'age'
        }
    ],
    enableRecordButtons: function () {
        Ext.each(Ext.getCmp('m_tabpanel').getActiveTab().children, function (a) {
            if (a.disabled) Ext.ComponentQuery.query('hospital_list button[action=' + a.action + ']')[0].enable()
        })
    },
    disableRecordButtons: function () {
        Ext.each(Ext.getCmp('m_tabpanel').getActiveTab().children, function (a) {
            if (a.disabled) Ext.ComponentQuery.query('hospital_list button[action=' + a.action + ']')[0].disable();
        })
    },
    listeners: {
        afterrender: function () {
            this.addDocked(buildToolBar(Ext.getCmp('m_tabpanel').getActiveTab().children));
        }
    }
})
