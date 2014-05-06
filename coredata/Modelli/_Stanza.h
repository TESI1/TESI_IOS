// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Stanza.h instead.

#import <CoreData/CoreData.h>


extern const struct StanzaAttributes {
	__unsafe_unretained NSString *id_stanza;
	__unsafe_unretained NSString *nome;
} StanzaAttributes;

extern const struct StanzaRelationships {
	__unsafe_unretained NSString *stanze_to_piattaforma;
	__unsafe_unretained NSString *stanze_to_utenti;
} StanzaRelationships;

extern const struct StanzaFetchedProperties {
} StanzaFetchedProperties;

@class Piattaforma;
@class Utente;




@interface StanzaID : NSManagedObjectID {}
@end

@interface _Stanza : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (StanzaID*)objectID;





@property (nonatomic, strong) NSNumber* id_stanza;



@property int16_t id_stanzaValue;
- (int16_t)id_stanzaValue;
- (void)setId_stanzaValue:(int16_t)value_;

//- (BOOL)validateId_stanza:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* nome;



//- (BOOL)validateNome:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) Piattaforma *stanze_to_piattaforma;

//- (BOOL)validateStanze_to_piattaforma:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSSet *stanze_to_utenti;

- (NSMutableSet*)stanze_to_utentiSet;





@end

@interface _Stanza (CoreDataGeneratedAccessors)

- (void)addStanze_to_utenti:(NSSet*)value_;
- (void)removeStanze_to_utenti:(NSSet*)value_;
- (void)addStanze_to_utentiObject:(Utente*)value_;
- (void)removeStanze_to_utentiObject:(Utente*)value_;

@end

@interface _Stanza (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveId_stanza;
- (void)setPrimitiveId_stanza:(NSNumber*)value;

- (int16_t)primitiveId_stanzaValue;
- (void)setPrimitiveId_stanzaValue:(int16_t)value_;




- (NSString*)primitiveNome;
- (void)setPrimitiveNome:(NSString*)value;





- (Piattaforma*)primitiveStanze_to_piattaforma;
- (void)setPrimitiveStanze_to_piattaforma:(Piattaforma*)value;



- (NSMutableSet*)primitiveStanze_to_utenti;
- (void)setPrimitiveStanze_to_utenti:(NSMutableSet*)value;


@end
