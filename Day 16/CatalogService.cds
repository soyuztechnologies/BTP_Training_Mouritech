using { anubhav.db } from '../db/datamodel';
using { anubhav.db.CDSView } from '../db/CDSView';
//using { commons } from '@sap/cds/common';


service CatalogService @(path: 'CatalogService') {
    
    entity ProductSet as projection on db.master.product;
    @readonly
    entity BPSet as projection on db.master.businesspartner;
    entity AddressSet as projection on db.master.address;
    entity EmployeeSet as projection on db.master.employees;
    //entity PurchaseOrderSet as projection on db.transaction.purchaseorder;
    entity POItems @(
        title : 'Purchase Order',
    ) as projection on db.transaction.poitems;

    entity POs @(
        title : 'Purchase Order',
        odata.draft.enabled: true
    ) as
        projection on db.transaction.purchaseorder{
        *,
        case LIFECYCLE_STATUS
            when 'N' then 'New'
            when 'D' then 'Delivered'
            when 'B' then 'Blocked'
            end as LIFECYCLE_STATUS: String(20),
        case LIFECYCLE_STATUS
            when 'N' then 2
            when 'B' then 1
            when 'D' then 3
            end as Criticality: Integer,
        Items: redirected to POItems
    }actions{
        function largestOrder() returns array of POs;
        action boost();
    };
    //entity Currencies as projection on commons.Currencies;
    //entity POValues as projection on CDSView.CProductValuesView;
}