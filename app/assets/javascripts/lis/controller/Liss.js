/**
 * Created by git on 14-3-26.
 */
Ext.define('Lis.controller.Liss', {
    extend: 'Ext.app.Controller',

    models: ['Patient'],
    stores: ['Patients'],
    views: ['LisPanel']
})