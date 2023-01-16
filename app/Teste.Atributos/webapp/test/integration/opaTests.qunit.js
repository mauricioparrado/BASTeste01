sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'Teste/Atributos/test/integration/FirstJourney',
		'Teste/Atributos/test/integration/pages/AtributosList',
		'Teste/Atributos/test/integration/pages/AtributosObjectPage'
    ],
    function(JourneyRunner, opaJourney, AtributosList, AtributosObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('Teste/Atributos') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheAtributosList: AtributosList,
					onTheAtributosObjectPage: AtributosObjectPage
                }
            },
            opaJourney.run
        );
    }
);