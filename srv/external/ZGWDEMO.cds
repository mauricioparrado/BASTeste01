/* checksum : 1cc0739f77879060bfa50a6eafb128c8 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZGWDEMO {};

@cds.external : true
@cds.persistence.skip : true
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
entity ZGWDEMO.SalesOrderLineItemCollection {
  @sap.label : 'SO Item Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrderItemKey : String(32) not null;
  @sap.label : 'Sales Order Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrderKey : String(32) not null;
  @sap.label : 'Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CurrencyCodeDescription : String(255) null;
  @sap.label : 'Opportunity Item Position'
  @sap.updatable : 'false'
  OpportunityItemPosition : String(10) null;
  @sap.label : 'Product Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductName : String(255) null;
  @sap.label : 'Net Sum'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  NetSum : Decimal(15, 2) null;
  @sap.label : 'Total Sum'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TotalSum : Decimal(15, 2) null;
  @sap.label : 'Sales Order Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SalesOrderItem : String(10) null;
  @sap.label : 'Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'currency-code'
  Currency : String(5) null;
  @sap.label : 'Product Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductKey : String(32) null;
  @sap.label : 'Product ID'
  @sap.updatable : 'false'
  ProductID : String(10) null;
  @sap.label : 'Availability'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Availability : String(15) null;
  @sap.label : 'Tax'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Tax : Decimal(15, 2) null;
  @sap.label : 'Note'
  @sap.updatable : 'false'
  Note : String(255) null;
  @cds.ambiguous : 'missing on condition?'
  Product : Association to ZGWDEMO.ProductCollection on Product.ProductKey = ProductKey;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZGWDEMO.SalesOrderCollection {
  @sap.label : 'Sales Order Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrderKey : String(32) not null;
  @m.FC_TargetPath : 'SyndicationTitle'
  @m.FC_KeepInContent : 'true'
  @sap.label : 'Sales Order ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SalesOrderID : String(10) null;
  @sap.label : 'Created By (Employee Last Name)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'familyname'
  CreatedByEmployeeLastName : String(40) null;
  @sap.label : 'Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Status : String(1) null;
  @sap.label : 'Last Changed By (Employee Last Name)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'familyname'
  ChangedByEmployeeLastName : String(40) null;
  @sap.label : 'Last Changed By (Employee User ID)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ChangedByEmployeeUserID : String(12) null;
  @sap.label : 'Net Sum'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  NetSum : Decimal(15, 2) null;
  @sap.label : 'Customer Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CustomerKey : String(32) null;
  @sap.label : 'Created By (Employee User ID)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByEmployeeUserID : String(12) null;
  @sap.label : 'Delivery Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DeliveryStatus : String(1) null;
  @sap.label : 'Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CurrencyCodeDescription : String(255) null;
  @sap.label : 'Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  StatusDescription : String(60) null;
  @sap.label : 'Last Changed By (Customer Name)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'org'
  ChangedByCustomerName : String(80) null;
  @sap.label : 'Created By (Employee First Name)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'givenname'
  CreatedByEmployeeFirstName : String(40) null;
  @sap.label : 'Delivery Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DeliveryStatusDescription : String(60) null;
  @sap.label : 'Note'
  Note : String(255) null;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.label : 'Created On'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedAt : Timestamp null;
  @sap.label : 'Tax'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Tax : Decimal(15, 2) null;
  @sap.label : 'Total Sum'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TotalSum : Decimal(15, 2) null;
  @sap.label : 'Created By (Customer Name)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'org'
  CreatedByCustomerName : String(80) null;
  @sap.label : 'Last Changed By (Employee First Name)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'givenname'
  ChangedByEmployeeFirstName : String(40) null;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @m.FC_TargetPath : 'SyndicationUpdated'
  @m.FC_KeepInContent : 'false'
  @sap.label : 'Changed On'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ChangedAt : Timestamp null;
  @sap.label : 'Customer ID'
  @sap.updatable : 'false'
  CustomerID : String(10) null;
  @sap.label : 'Customer Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'org'
  CustomerName : String(80) null;
  @sap.label : 'Billing Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingStatus : String(1) null;
  @sap.label : 'Billing Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingStatusDescription : String(60) null;
  @sap.label : 'Currency'
  @sap.semantics : 'currency-code'
  Currency : String(5) null;
  @cds.ambiguous : 'missing on condition?'
  salesorderlineitems : Association to many ZGWDEMO.SalesOrderLineItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesOrderStatus : Association to many ZGWDEMO.StatusCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesOrderDeliveryStatus : Association to many ZGWDEMO.DeliveryStatusCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesOrderBillingStatus : Association to many ZGWDEMO.BillingStatusCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesOrderCurrency : Association to many ZGWDEMO.CurrencyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  BusinessPartner : Association to ZGWDEMO.BusinessPartnerCollection on BusinessPartner.BusinessPartnerKey = CustomerKey;
} actions {
  action ConfirmSalesOrder() returns ZGWDEMO.SalesOrderCollection null;
  action CancelSalesOrder() returns ZGWDEMO.SalesOrderCollection null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZGWDEMO.StatusCollection {
  @sap.label : 'Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key StatusCode : LargeString not null;
  @sap.label : 'Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  StatusDescription : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZGWDEMO.DeliveryStatusCollection {
  @sap.label : 'Delivery Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key DeliveryStatusCode : LargeString not null;
  @sap.label : 'Delivery Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DeliveryStatusDescription : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZGWDEMO.BillingStatusCollection {
  @sap.label : 'Billing Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key BillingStatusCode : LargeString not null;
  @sap.label : 'Billing Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingStatusDescription : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZGWDEMO.CurrencyCollection {
  @sap.label : 'Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key CurrencyCode : LargeString not null;
  @sap.label : 'Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CurrencyDescription : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.addressable : 'false'
@sap.content.version : '1'
entity ZGWDEMO.ContactPersonCollection {
  @sap.label : 'Partner GUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key ContactKey : String(32) not null;
  @sap.label : 'Address Type'
  AddressTypeCode : String(2) null;
  @sap.label : 'Address ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AddressKey : String(32) not null;
  @m.FC_TargetPath : 'SyndicationTitle'
  @m.FC_KeepInContent : 'true'
  @sap.label : 'Full Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'FullName'
  FullName : String(40) null;
  @sap.label : 'Title'
  @sap.semantics : 'honorific'
  Title : String(10) null;
  @sap.label : 'Partner GUID'
  @sap.updatable : 'false'
  BusinessPartnerKey : String(32) null;
  @sap.label : 'Language'
  LanguageCode : String(2) null;
  @sap.label : 'Country'
  CountryCode : String(3) null;
  @sap.label : 'Nickname'
  @sap.semantics : 'nickname'
  NickName : String(40) null;
  @sap.label : 'Building'
  Building : String(10) null;
  @sap.label : 'Postal Code'
  @sap.semantics : 'zip'
  PostalCode : String(10) null;
  @sap.label : 'Last Name'
  @sap.semantics : 'familyname'
  LastName : String(40) null;
  @sap.label : 'City'
  @sap.semantics : 'city'
  City : String(40) null;
  @sap.label : 'Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  GenderText : String(60) null;
  @sap.label : 'Initials'
  Initials : String(10) null;
  @sap.label : 'First Name'
  @sap.semantics : 'FirstName'
  FirstName : String(40) null;
  @sap.label : 'Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LanguageText : String(60) null;
  @sap.label : 'Street'
  @sap.semantics : 'street'
  Street : String(60) null;
  @sap.label : 'E-Mail Address'
  @sap.semantics : 'email'
  EmailAddress : String(255) null;
  @sap.label : 'Middle Name'
  @sap.semantics : 'middlename'
  MiddleName : String(40) null;
  @sap.label : 'Fax Number'
  FaxNumber : String(30) null;
  @sap.label : 'Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AddressTypeText : String(60) null;
  @sap.label : 'Telephone Number'
  @sap.semantics : 'tel'
  TelephoneNumber : String(30) null;
  @sap.label : 'Gender'
  GenderCode : String(1) null;
  @sap.label : 'Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CountryText : String(60) null;
  @cds.ambiguous : 'missing on condition?'
  Country : Association to many ZGWDEMO.CountryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  AddressType : Association to many ZGWDEMO.AddressTypeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Gender : Association to many ZGWDEMO.GenderCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZGWDEMO.BusinessPartnerCollection {
  @sap.label : 'Business Partner ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key BusinessPartnerKey : String(32) not null;
  Address : ZGWDEMO.Address not null;
  @sap.label : 'Business Partner ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BusinessPartnerID : String(10) null;
  @m.FC_TargetPath : 'SyndicationTitle'
  @m.FC_KeepInContent : 'true'
  @sap.label : 'Company Name'
  @sap.creatable : 'false'
  @sap.semantics : 'org'
  Company : String(80) null;
  @sap.label : 'Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'org-role'
  BusinessPartnerRoleText : String(60) null;
  @sap.label : 'Text'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CurrencyText : String(60) null;
  @sap.label : 'Web Address'
  @sap.creatable : 'false'
  @sap.semantics : 'url'
  WebAddress : String(60) null;
  @sap.label : 'Role'
  @sap.creatable : 'false'
  @sap.semantics : 'org-role'
  BusinessPartnerRoleCode : String(3) null;
  @sap.label : 'Fax Number'
  @sap.creatable : 'false'
  FaxNumber : String(30) null;
  @sap.label : 'Legal Form'
  @sap.creatable : 'false'
  LegalForm : String(10) null;
  @sap.label : 'E-Mail Address'
  @sap.creatable : 'false'
  @sap.semantics : 'email'
  EmailAddress : String(255) null;
  @sap.label : 'Telephone Number'
  @sap.creatable : 'false'
  @sap.semantics : 'tel'
  TelephoneNumber : String(30) null;
  @sap.label : 'Currency'
  @sap.creatable : 'false'
  @sap.semantics : 'currency-code'
  CurrencyCode : String(5) null;
  @sap.label : 'Country'
  @sap.creatable : 'false'
  CountryCode : String(3) null;
  @sap.label : 'Gender'
  @sap.creatable : 'false'
  GenderCode : String(1) null;
  @cds.ambiguous : 'missing on condition?'
  RelatedContacts : Association to many ZGWDEMO.ContactPersonCollection {  };
  @cds.ambiguous : 'missing on condition?'
  BusinessPartnerRole : Association to many ZGWDEMO.BusinessPartnerRoleCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Gender : Association to many ZGWDEMO.GenderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Country : Association to many ZGWDEMO.CountryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Currency : Association to many ZGWDEMO.CurrencyCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZGWDEMO.AddressTypeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key AddressTypeCode : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AddressTypeText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZGWDEMO.BusinessPartnerRoleCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key BusinessPartnerRoleCode : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BusinessPartnerRoleText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZGWDEMO.GenderCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key GenderCode : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  GenderText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZGWDEMO.CountryCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key CountryCode : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CountryText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZGWDEMO.LanguageCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key LanguageCode : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LanguageText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
entity ZGWDEMO.ProductCollection {
  @sap.label : 'Product Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key ProductKey : String(32) not null;
  @m.FC_TargetPath : 'SyndicationTitle'
  @m.FC_KeepInContent : 'true'
  @sap.label : 'Product Name'
  ProductName : String(255) null;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @m.FC_TargetPath : 'SyndicationUpdated'
  @m.FC_KeepInContent : 'true'
  @sap.label : 'Changed At'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ChangedAt : Timestamp null;
  @sap.label : 'Tax Tariff'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxTariffText : String(255) null;
  @sap.label : 'Product ID'
  ProductID : String(10) null;
  @sap.label : 'Dimension Unit'
  @sap.semantics : 'unit-of-measure'
  DimensionUnit : String(3) null;
  @sap.label : 'Weight Unit'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WeightUnitText : String(255) null;
  @sap.unit : 'CurrencyCode'
  @sap.label : 'Unit Price'
  UnitPrice : Decimal(15, 2) null;
  @sap.unit : 'WeightUnitCode'
  @sap.label : 'Weight Measure'
  WeightMeasure : Decimal(13, 3) null;
  @sap.unit : 'DimensionUnit'
  @sap.label : 'Product Width'
  ProductWidth : Decimal(13, 3) null;
  @sap.label : 'Dimension Unit'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DimensionUnitText : String(255) null;
  @sap.label : 'Supplier ID'
  SupplierID : String(10) null;
  @sap.label : 'Product Description'
  ProductDescription : String(255) null;
  @sap.label : 'Product Category'
  ProductCategory : String(40) null;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Tax Tariff'
  TaxTariffCode : Integer null;
  @sap.label : 'Quantity Unit'
  @sap.semantics : 'unit-of-measure'
  QuantityUnit : String(3) null;
  @sap.label : 'Product Type'
  ProductTypeCode : String(2) null;
  @sap.label : 'Quantity Unit'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  QuantityUnitText : String(255) null;
  @sap.label : 'Weight Unit'
  @sap.semantics : 'unit-of-measure'
  WeightUnitCode : String(3) null;
  @sap.label : 'Supplier Name'
  @sap.updatable : 'false'
  SupplierName : String(80) null;
  @sap.label : 'Currency Code'
  @sap.semantics : 'currency-code'
  CurrencyCode : String(5) null;
  @sap.unit : 'DimensionUnit'
  @sap.label : 'Product Height'
  ProductHeight : Decimal(13, 3) null;
  @sap.label : 'Currency Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CurrencyText : String(255) null;
  @sap.unit : 'DimensionUnit'
  @sap.label : 'Product Depth'
  ProductDepth : Decimal(13, 3) null;
  @sap.label : 'Supplier Guid'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SupplierGuid : String(32) null;
  @cds.ambiguous : 'missing on condition?'
  ConversionFactors : Association to many ZGWDEMO.ConversionFactorCollection {  };
  @cds.ambiguous : 'missing on condition?'
  TaxTariff : Association to many ZGWDEMO.TariffCollection {  };
  @cds.ambiguous : 'missing on condition?'
  WeightUnits : Association to many ZGWDEMO.WeightUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  DimensionUnits : Association to many ZGWDEMO.DimensionUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  QuantityUnits : Association to many ZGWDEMO.QuantityUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ProductTypes : Association to many ZGWDEMO.ProductTypeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ProductCategories : Association to many ZGWDEMO.ProductCategoryCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.addressable : 'false'
@sap.content.version : '1'
entity ZGWDEMO.ConversionFactorCollection {
  @sap.label : 'Product Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key ProductKey : String(32) not null;
  @sap.label : 'Conver Factor Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key ConversionFactorKey : String(32) not null;
  @sap.label : 'Source Unit'
  @sap.updatable : 'false'
  @sap.semantics : 'unit-of-measure'
  SourceUnitCode : String(3) null;
  @sap.label : 'Target Unit'
  @sap.updatable : 'false'
  @sap.semantics : 'unit-of-measure'
  TargetUnitCode : String(3) null;
  @sap.label : 'Source Unit'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SourceUnitText : String(255) null;
  @sap.label : 'Numerator'
  Numerator : Integer null;
  @sap.label : 'Target Unit'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TargetUnitText : String(255) null;
  @sap.label : 'Denominator'
  Denominator : Integer null;
  @cds.ambiguous : 'missing on condition?'
  SourceUnits : Association to many ZGWDEMO.SourceUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  TargetUnits : Association to many ZGWDEMO.TargetUnitCollection {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZGWDEMO.TariffCollection {
  @odata.Type : 'Edm.Byte'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key TaxTariffCode : Integer not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TariffText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZGWDEMO.WeightUnitCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key WeightUnitCode : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WeightUnitText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZGWDEMO.DimensionUnitCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key DimensionUnitCode : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DimensionUnitText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZGWDEMO.QuantityUnitCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key QuantityUnitCode : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  QuantityUnitText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZGWDEMO.SourceUnitCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SourceUnitCode : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SourceUnitText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZGWDEMO.TargetUnitCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key TargetUnitCode : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TargetUnitText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZGWDEMO.ProductTypeCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key ProductTypeCode : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductTypeText : LargeString null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
entity ZGWDEMO.ProductCategoryCollection {
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key ProductCategoryCode : LargeString not null;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductCategoryText : LargeString null;
};

@cds.external : true
type ZGWDEMO.Address {
  @sap.label : 'Street'
  Street : String(60) null;
  @sap.label : 'City'
  City : String(40) null;
  @sap.label : 'Address Type'
  AddressTypeCode : String(2) null;
  @sap.label : 'Postal Code'
  PostalCode : String(10) null;
  @sap.label : 'Country'
  CountryText : String(60) null;
  @sap.label : 'Building'
  Building : String(10) null;
  @sap.label : 'Text'
  AddressTypeText : String(60) null;
  @sap.label : 'Country'
  CountryCode : String(3) null;
  @sap.label : 'Address ID'
  AddressKey : String(32) null;
};

