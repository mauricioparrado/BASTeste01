sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'Teste/Produtos/test/integration/FirstJourney',
		'Teste/Produtos/test/integration/pages/ProdutoList',
		'Teste/Produtos/test/integration/pages/ProdutoObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProdutoList, ProdutoObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('Teste/Produtos') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProdutoList: ProdutoList,
					onTheProdutoObjectPage: ProdutoObjectPage
                }
            },
            opaJourney.run
        );
    }
);