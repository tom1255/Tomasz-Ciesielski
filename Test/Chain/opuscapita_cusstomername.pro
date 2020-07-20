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

	, [ check_text( `test1` ), set( chain, `bla` ), trace( [ `bla` ] ) ]

	, [ check_text( `test2` ), set( chain, `blabla` ), trace( [ `blabla` ] ) ]

	, [ check_text( `test3` ), set( chain, `blablabla` ), trace( [ `blablabla` ] ) ]

<<<<<<< HEAD
	, [ check_text( `test` ), set( chain, `test` ), trace( [ `Teleoffice Commitment AB` ] ) ]

=======
=======
	
<<<<<<< HEAD
<<<<<<< HEAD
	, [ check_text( `` ), set( chain, `` ), trace( [ `` ] ) ]

	, [ check_text( `testing` ), set( chain, `` ), trace( [ `` ] ) ]

	,[ check_text( `test` ), set( chain, `` ), trace( [ `` ] ) ]
=======
	, [ check_text( `test` ), set( chain, `test` ), trace( [ `Teleoffice Commitment AB` ] ) ]
>>>>>>> 11973ae997b51e98d02da56e5787da98a8ddbe0f
=======
<<<<<<< HEAD
>>>>>>> 57745e9314c6e0a16087ce3323e472dae83c1f89
	, [ check_text( `123` ), set( chain, `coa` ), trace( [ `dsa dsa AB` ] ) ]

	, [ check_text( `456` ), set( chain, `aS` ), trace( [ `dsa Commitment AB` ] ) ]

	, [ check_text( `test` ), set( chain, `s` ), trace( [ `dsad Commitment AB` ] ) ]

	, [ check_text( `test` ), set( chain, `TeleofficeCommitmentAB_AdvokatfirmanCederquistKB` ), trace( [ `Teleoffice Commitment AB` ] ) ]

	,[ check_text( `test` ), set( chain, `TeleofficeCommitmentAB_AdvokatfirmanCederquistKB` ), trace( [ `Teleoffice Commitment AB` ] ) ]
<<<<<<< HEAD
=======
>>>>>>> 4cf6cca28ff74ae60dda20f3c72554648be2b682
>>>>>>> 96c86a2983fbad6e382fd2604c8f1497c8320622
>>>>>>> 57745e9314c6e0a16087ce3323e472dae83c1f89
	
	, [ check_text( `test` ), set( chain, `TeleofficeCommitmentAB_AdvokatfirmanCederquistKB` ), trace( [ `Teleoffice Commitment AB` ] ) ]
<<<<<<< HEAD

=======
>>>>>>> 96c86a2983fbad6e382fd2604c8f1497c8320622
>>>>>>> f3892bee51fc2b4e66096a879ddad0a3265d514e


	, , [ check_text( `hello world` ), set( chain, `s` ), trace( [ `dsad Commitment AB` ] ) ]
>>>>>>> b1432438f1968c01b527a4bb7c4f84188d29f36a
	% , [ check_text( `` ), set( chain, `` ), trace( [ `` ] ) ]

] ) ] ).
