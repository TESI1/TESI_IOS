// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Necessita.h instead.

#import <CoreData/CoreData.h>


extern const struct NecessitaAttributes {
	__unsafe_unretained NSString *descrizione;
	__unsafe_unretained NSString *id_necessita;
	__unsafe_unretained NSString *nome;
} NecessitaAttributes;

extern const struct NecessitaRelationships {
	__unsafe_unretained NSString *necessita_to_utenti;
} NecessitaRelationships;

extern const struct NecessitaFetchedProperties {
} NecessitaFetchedProperties;

@class Utente;





@interface NecessitaID : NSManagedObjectID {}
@end

@interface _Necessita : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (NecessitaID*)objectID;





@property (nonatomic, strong) NSString* descrizione;



//- (BOOL)validateDescrizione:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* id_necessita;



@property int16_t id_necessitaValue;
- (int16_t)id_necessitaValue;
- (void)setId_necessitaValue:(int16_t)value_;

//- (BOOL)validateId_necessita:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* nome;



//- (BOOL)validateNome:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *necessita_to_utenti;

- (NSMutableSet*)necessita_to_utentiSet;





@end

@interface _Necessita (CoreDataGeneratedAccessors)

- (void)addNecessita_to_utenti:(NSSet*)value_;
- (void)removeNecessita_to_utenti:(NSSet*)value_;
- (void)addNecessita_to_utentiObject:(Utente*)value_;
- (void)removeNecessita_to_utentiObject:(Utente*)value_;

@end

@interface _Necessita (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveDescrizione;
- (void)setPrimitiveDescrizione:(NSString*)value;




- (NSNumber*)primitiveId_necessita;
- (void)setPrimitiveId_necessita:(NSNumber*)value;

- (int16_t)primitiveId_necessitaValue;
- (void)setPrimitiveId_necessitaValue:(int16_t)value_;




- (NSString*)primitiveNome;
- (void)setPrimitiveNome:(NSString*)value;





- (NSMutableSet*)primitiveNecessita_to_utenti;
- (void)setPrimitiveNecessita_to_utenti:(NSMutableSet*)value;


@end
