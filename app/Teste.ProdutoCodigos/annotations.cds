using TesteService as service from '../../srv/service';

annotate service.ProdutoCodigos with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'codigo',
            Value : codigo,
        }
    ]
);
annotate service.ProdutoCodigos with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'codigo',
                Value : codigo,
            }
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.ProdutoCodigos with {
    material @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Material',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : material_ProductKey,
                    ValueListProperty : 'ProductKey',
                },
            ],
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.Material with {
    ProductKey @Common.Text : {
        $value : ProductDescription,
        ![@UI.TextArrangement] : #TextOnly,
    }
};
