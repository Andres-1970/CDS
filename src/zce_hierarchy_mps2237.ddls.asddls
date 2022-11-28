@AbapCatalog.sqlViewName: 'ZIHIERAR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'CDS - Base  for hierarchy'    
define view ZCE_HIERARCHY_MPS2237
  as select from zemp_h2_mps2237
  association [0..1] to ZCE_HIERARCHY_MPS2237 as _Manager 
                     on $projection.Manager = _Manager.Employee
{

  key employee as Employee,
      manager  as Manager,
      name     as Name,
      _Manager
}
