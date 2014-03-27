/**
 * Created by git on 14-3-26.
 */
Ext.define('Lis.store.Patients', {
    extend: 'Ext.data.Store',
    model: 'Lis.model.Patient',
    autoSync: false,
    proxy: {
        url: 'lis/patients',
        type: 'rest',
        format: 'json',
        reader: {
            type: 'json'
        }
    },
    remoteFilter: true
})
