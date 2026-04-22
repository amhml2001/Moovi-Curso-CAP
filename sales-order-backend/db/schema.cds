using { managed } from '@sap/cds/common';

//um prefixo para organizar e importar as entidades em outros arquivos.
//Todas as entidades que são declaradas abaixo dele terão o prefixo definido
namespace sales;

entity SalesOrderHeaders: managed {
   key id: UUID;
       customer: Association to Customers;
       totalAmount: Decimal(15,2);
       items: Composition of many SalesOrderItems on items.header = $self;
}

entity SalesOrderItems {
   key id: UUID;
      header: Association to SalesOrderHeaders;
      product: Association to Products;
      quantity: Integer;
      price: Decimal(15,2);
}

entity Customers {
   key id: UUID;
      firstName: String(20);
      lastName: String(100);
      email: String(255);
}

entity Products {
   key id: UUID;
      name: String(255);
      price: Decimal(15,2);
}