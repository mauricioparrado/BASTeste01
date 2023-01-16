sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'Teste/ProdutoCodigos/test/integration/FirstJourney',
		'Teste/ProdutoCodigos/test/integration/pages/ProdutoCodigosList',
		'Teste/ProdutoCodigos/test/integration/pages/ProdutoCodigosObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProdutoCodigosList, ProdutoCodigosObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('Teste/ProdutoCodigos') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProdutoCodigosList: ProdutoCodigosList,
					onTheProdutoCodigosObjectPage: ProdutoCodigosObjectPage
                }
            },
            opaJourney.run
        );
    }
);