// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Piattaforma.h instead.

#import <CoreData/CoreData.h>


extern const struct PiattaformaAttributes {
	__unsafe_unretained NSString *id_piattaforma;
} PiattaformaAttributes;

extern const struct PiattaformaRelationships {
	__unsafe_unretained NSString *piattaforma_to_dati;
	__unsafe_unretained NSString *piattaforma_to_stanze;
} PiattaformaRelationships;

extern const struct PiattaformaFetchedProperties {
} PiattaformaFetchedProperties;

@class Dato;
@class Stanza;



@interface PiattaformaID : NSManagedObjectID {}
@end

@interface _Piattaforma : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (PiattaformaID*)objectID;





@property (nonatomic, strong) NSNumber* id_piattaforma;



@property int16_t id_piattaformaValue;
- (int16_t)id_piattaformaValue;
- (void)setId_piattaformaValue:(int16_t)value_;

//- (BOOL)validateId_piattaforma:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *piattaforma_to_dati;

- (NSMutableSet*)piattaforma_to_datiSet;




@property (nonatomic, strong) Stanza *piattaforma_to_stanze;

//- (BOOL)validatePiattaforma_to_stanze:(id*)value_ error:(NSError**)error_;





@end

@interface _Piattaforma (CoreDataGeneratedAccessors)

- (void)addPiattaforma_to_dati:(NSSet*)value_;
- (void)removePiattaforma_to_dati:(NSSet*)value_;
- (void)addPiattaforma_to_datiObject:(Dato*)value_;
- (void)removePiattaforma_to_datiObject:(Dato*)value_;

@end

@interface _Piattaforma (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveId_piattaforma;
- (void)setPrimitiveId_piattaforma:(NSNumber*)value;

- (int16_t)primitiveId_piattaformaValue;
- (void)setPrimitiveId_piattaformaValue:(int16_t)value_;





- (NSMutableSet*)primitivePiattaforma_to_dati;
- (void)setPrimitivePiattaforma_to_dati:(NSMutableSet*)value;



- (Stanza*)primitivePiattaforma_to_stanze;
- (void)setPrimitivePiattaforma_to_stanze:(Stanza*)value;


@end
