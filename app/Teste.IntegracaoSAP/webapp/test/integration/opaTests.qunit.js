sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'Teste/IntegracaoSAP/test/integration/FirstJourney',
		'Teste/IntegracaoSAP/test/integration/pages/IntegracaoSAPList',
		'Teste/IntegracaoSAP/test/integration/pages/IntegracaoSAPObjectPage'
    ],
    function(JourneyRunner, opaJourney, IntegracaoSAPList, IntegracaoSAPObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('Teste/IntegracaoSAP') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheIntegracaoSAPList: IntegracaoSAPList,
					onTheIntegracaoSAPObjectPage: IntegracaoSAPObjectPage
                }
            },
            opaJourney.run
        );
    }
);