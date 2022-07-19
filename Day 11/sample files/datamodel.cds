namespace anubhav.db;

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

