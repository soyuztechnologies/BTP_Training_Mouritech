namespace anubhav.common;
using { Currency } from '@sap/cds/common';

    type AmountT : Decimal(15, 2)@(
        Semantic.amount.currencyCode : 'CURRENCY_CODE',
        sap.unit: 'CURRENCY_CODE'
    );

    aspect Amount {
        GROSS_AMOUNT: AmountT;
        NET_AMOUNT: AmountT;
        TAX_AMOUNT: AmountT;
        CURRENCY_CODE: Currency;
    }


