sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'Teste.PUComex',
            componentId: 'PUComexObjectPage',
            entitySet: 'PUComex'
        },
        CustomPageDefinitions
    );
});