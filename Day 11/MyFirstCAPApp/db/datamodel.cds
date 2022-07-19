namespace anubhav.db;

using { cuid, temporal, managed } from '@sap/cds/common';
using { anubhav.common } from './commons';


context master {
    // Reusable types
    type Guid: Integer;

    //CDS Definition - design time artefact for table
    entity employees {
        key id: Guid;
        firstName: String(120);
        lastName: String(120);
        salary: Integer64;
        currency: String(4);
        gender: String(6);
        smoker: Boolean;
        address: Association to address;
    }

    entity address {
        key id: Guid;
        city: String(80);
        countryCode: String(5);
        region: String(4);
        postal: String(6);
        employees: Association to one employees on employees.address = $self;
    }

}

context transaction {
    entity salesorder : cuid, temporal, common.Amount {
        shipto: String(180);
        soldto: String(180);
        
    }
}