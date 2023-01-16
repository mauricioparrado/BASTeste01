sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'Teste/OperadorEstrangeiro/test/integration/FirstJourney',
		'Teste/OperadorEstrangeiro/test/integration/pages/OperadorEstrangeiroList',
		'Teste/OperadorEstrangeiro/test/integration/pages/OperadorEstrangeiroObjectPage'
    ],
    function(JourneyRunner, opaJourney, OperadorEstrangeiroList, OperadorEstrangeiroObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('Teste/OperadorEstrangeiro') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheOperadorEstrangeiroList: OperadorEstrangeiroList,
					onTheOperadorEstrangeiroObjectPage: OperadorEstrangeiroObjectPage
                }
            },
            opaJourney.run
        );
    }
);