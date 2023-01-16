sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'Teste/PUComex/test/integration/FirstJourney',
		'Teste/PUComex/test/integration/pages/PUComexList',
		'Teste/PUComex/test/integration/pages/PUComexObjectPage'
    ],
    function(JourneyRunner, opaJourney, PUComexList, PUComexObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('Teste/PUComex') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePUComexList: PUComexList,
					onThePUComexObjectPage: PUComexObjectPage
                }
            },
            opaJourney.run
        );
    }
);