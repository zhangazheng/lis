/**
 * Created by git on 14-3-26.
 */
Ext.define('Lis.model.Patient', {
    extend: 'Ext.data.Model',
    fields: [
        {name: 'name', type: "string"},
        {name: 'age', type: "integer"}
    ]
})
