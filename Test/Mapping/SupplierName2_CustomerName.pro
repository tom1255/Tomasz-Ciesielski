%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RULES - gramatica
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

i_version( suppliername_customername, `07/07/2020 19:57:53` ).
i_date_format( _ ).
i_trace_rule_captures.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RULES LIST
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%--------------------------------------------------
%---------------- MANDATORY -----------------------

%0 sender_name
run rul
    sender_name(`Supplier Name`).

%1 invoice_type
run rul q(0,6,line)
, or([
        [
            in, *, `Faktura`, invoice_type(`380`)
        ]
        , 
        [
            in, *, `Kreditfaktura`, invoice_type(`381`)
            , set(credit_note)
        ]
    ]).

%2 invoice_number
% Map invoice number from document.


%3 invoice_date 
% Map invoice date from document.


%4 total_invoice 
% Map total invoice from document. If more than one total amount, map the lowest.


%5 currency 
% Map currency from document. Must be in ISO-3 format.
% Use regexp: currency( f( [ begin, q(alpha,3,3), end ] ) ).

%----------------------------------------------------
%---------------- CONDITIONAL -----------------------

%6 total_vat
% Map total vat from document. Domestic and Norwegian: "Avdragsgill" amount or regular VAT.


%7 supplier_registration_number
% Map supplier organisation number from document.


%8 bankgiro
% Map bankgiro from document.  bankgiro( f( [ begin , q(dec,3,4) , q(other("-"),1,1) , q(dec,4,4) , end ] ) )


%----------------------------------------------
%---------------- NEVER -----------------------

%9 payment_due_date_1
% Map payment due date from document.


%10 plusgiro
% Map plusgiro from document.


%11 supplier_vat_number
% Map supplier vat number from document.


%12 supplier_country_code [ Mandatory item ]
% Map supplier country code from document.
% Possible option:
%   , check(q_sys_sub_string(supplier_vat_number , _ , _ , `SE`) )
%   , supplier_country_code(`SE`).


%13 additional_document_reference_1
% Numbers/Letters, verify from "Er referens", can be first and/or last name

%14 additional_document_reference_2
% Numbers only, Verify from "Ert ordernr", "Er order", "Porjekt", "Projektnummer", "PO nummer" , "Märke", "Godsmärke" , "Godsmärke" , "Littra", "Ordernummer"


%15 total_net
% Map total net from document.


%16 bank_account_number
% Map bank account number from document


%17 payment_terms
% Map payment terms from document.


%18 instruction_id_1
% Map OCR number from document.


%19 total_discount
% Map total discount from document.


