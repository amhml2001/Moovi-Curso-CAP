using { managed } from '@sap/cds/common';

//um prefixo para organizar as entidades.
//Todas as entidades que são declaradas abaixo dele terão o prefixo definido
namespace sales;

entity SalesOrderHeaders: managed {
   key id: UUID;
}
