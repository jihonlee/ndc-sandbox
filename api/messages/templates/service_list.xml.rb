ServiceListRS(namespaces) {
  Document {
    Name name
    MessageVersion version
  }
  Success {}
  DataLists {
    AnonymousTravelerList{
      AnonymousTraveler(ObjectKey: "SH1"){
        PTC(Quantity: "#{num_travelers}"){ text "ADT" }
      }
    }
    ServiceBundleList {
      bundles.each{ |bundle|
        ServiceBundle(ListKey: bundle.bundle_id) {
          ItemCount bundles.count
          Associations {
            bundle.services.each{ |service|
              ServiceReference service.service_id
            }
          }
          BundleID bundle.bundle_id
          BundleName bundle.name
        }
      }
    }
    ServiceList {
      services.each{ |service|
        Service(ObjectKey: service.service_id){
          ServiceID(Owner: service.airline.code){ text service.id }
          Name service.name
          Encoding ""
          Descriptions {
            Description {
              Text service.description_text
              Link service.description_link
              Media {
                ObjectID service.description_object_id
              }
            }
          }
          Settlement {
            Method {
              Code service.settlement_code
              Definition service.settlement_definition
            }
          }
          Price {
            Total service.price_total
            PassengerReferences service.price_passanger_reference
          }
        }
      }
    }
  }
}
