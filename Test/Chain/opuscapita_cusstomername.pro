%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% GRAMATICA - OPUSCAPITA_NEW_CUSTOMER
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

i_version( opuscapita_advokatfirman, `06/07/2020 20:41:51`  ).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

i_page_split_rule_list( [ set( chain, `unrecognised_document` ), select_rules ] ).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SELECT RULES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%=======================================================================
i_rule( select_rules, [
%=======================================================================

	or( [
	
		[ q0n(line), check_text_id_line ]
		
	] )

] ).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHECK TEXT ID LINE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%=======================================================================
i_line_rule( check_text_id_line, [ or( [
%=======================================================================

	[ check_text( `DataItemName(exactlyasitappearsonSDD)` ), set( chain, `generic test template test` ), trace( [ `GENERIC TEST TEMPLATE TEST` ] ) ]

	, [ check_text( `SE556307560401` ), set( chain, `KontorskraftAB_AdvokatfirmanCederquistKB` ), trace( [ `Kontorskraft AB` ] ) ]

	, [ check_text( `559160-7808` ), set( chain, `LoxodontaStockholmAB_AdvokatfirmanCederquistKB` ), trace( [ `Loxodonta Stockholm AB` ] ) ]

	, [ check_text( `SE556699730901` ), set( chain, `NetNordicSwedenAB_AdvokatfirmanCederquistKB` ), trace( [ `NetNordic Sweden AB` ] ) ]

	, [ check_text( `SE969776522101` ), set( chain, `NordAdvokater_AdvokatfirmanCederquistKB` ), trace( [ `Nord Advokater` ] ) ]

	, [ check_text( `556843-7239` ), set( chain, `PrioritaireSTHLMAB_AdvokatfirmanCederquistKB` ), trace( [ `Prioritaire STHLM AB` ] ) ]

	, [ check_text( `NO919276835MVA` ), set( chain, `PSAConsultingAS_AdvokatfirmanCederquistKB` ), trace( [ `PSA Consulting AS` ] ) ]

	, [ check_text( `SE556131892301` ), set( chain, `RahmsFonsterputsochStadAB_AdvokatfirmanCederquistKB` ), trace( [ `Rahms Fönsterputs och Städ AB` ] ) ]

	, [ check_text( `559229-6536` ), set( chain, `SHultqvistAdvokatAB_AdvokatfirmanCederquistKB` ), trace( [ `S Hultqvist Advokat AB` ] ) ]

	, [ check_text( `556610-2793` ), set( chain, `SkanstullsKiropraktikErgonomiAB_AdvokatfirmanCederquistKB` ), trace( [ `Skanstulls Kiropraktik & Ergonomi AB` ] ) ]

	, [ check_text( `SE556001715301` ), set( chain, `StockholmsStadsParkeringsAB_AdvokatfirmanCederquistKB` ), trace( [ `Stockholms Stads Parkering Aktiebolag` ] ) ]
	
	, [ check_text( `SE556814695401` ), set( chain, `TeleofficeCommitmentAB_AdvokatfirmanCederquistKB` ), trace( [ `Teleoffice Commitment AB` ] ) ]
	
	, [ check_text( `123` ), set( chain, `coa` ), trace( [ `dsa dsa AB` ] ) ]

	, [ check_text( `456` ), set( chain, `aS` ), trace( [ `dsa Commitment AB` ] ) ]

	, [ check_text( `test` ), set( chain, `s` ), trace( [ `dsad Commitment AB` ] ) ]

	
	% , [ check_text( `` ), set( chain, `` ), trace( [ `` ] ) ]

] ) ] ).
