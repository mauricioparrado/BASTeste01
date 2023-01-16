sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'Teste/ParametrosGerais/test/integration/FirstJourney',
		'Teste/ParametrosGerais/test/integration/pages/ParametrosList',
		'Teste/ParametrosGerais/test/integration/pages/ParametrosObjectPage'
    ],
    function(JourneyRunner, opaJourney, ParametrosList, ParametrosObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('Teste/ParametrosGerais') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheParametrosList: ParametrosList,
					onTheParametrosObjectPage: ParametrosObjectPage
                }
            },
            opaJourney.run
        );
    }
);