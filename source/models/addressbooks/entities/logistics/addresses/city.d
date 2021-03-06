module models.addressbooks.entities.logistics.addresses.city;

@safe:
import models.addressbooks;

class DLogisticsAddressCityEntity : DOOPEntity {
  mixin(EntityThis!("LogisticsAddressCityEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "cityKey": StringAttribute,
        "countryRegionId": StringAttribute,
        "stateId": UUIDAttribute,
        "countyId": UUIDAttribute,
        "brazilCityCode": StringAttribute,
        "cityInKana": StringAttribute,
        "relationship_CountryRegionRelationshipId": UUIDAttribute,
        "relationship_StateRelationshipId": UUIDAttribute,
        "relationship_CountyRelationshipId": UUIDAttribute,
        "backingTable_LogisticsAddressCityRelationshipId": UUIDAttribute,
      ])
      .registerPath("addressbooks_logistics.addresses.cities");
  }
}
mixin(EntityCalls!("LogisticsAddressCityEntity"));

version(test_library) {
  unittest {
    assert(LogisticsAddressCityEntity);
  
    auto entity = LogisticsAddressCityEntity;
  }
}
