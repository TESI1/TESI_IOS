// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Utente.h instead.

#import <CoreData/CoreData.h>


extern const struct UtenteAttributes {
	__unsafe_unretained NSString *eta;
	__unsafe_unretained NSString *id_utente;
	__unsafe_unretained NSString *nome;
} UtenteAttributes;

extern const struct UtenteRelationships {
	__unsafe_unretained NSString *utenti_to_necessita;
	__unsafe_unretained NSString *utenti_to_stanze;
} UtenteRelationships;

extern const struct UtenteFetchedProperties {
} UtenteFetchedProperties;

@class Necessita;
@class Stanza;





@interface UtenteID : NSManagedObjectID {}
@end

@interface _Utente : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (UtenteID*)objectID;





@property (nonatomic, strong) NSNumber* eta;



@property int16_t etaValue;
- (int16_t)etaValue;
- (void)setEtaValue:(int16_t)value_;

//- (BOOL)validateEta:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* id_utente;



@property int16_t id_utenteValue;
- (int16_t)id_utenteValue;
- (void)setId_utenteValue:(int16_t)value_;

//- (BOOL)validateId_utente:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* nome;



//- (BOOL)validateNome:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *utenti_to_necessita;

- (NSMutableSet*)utenti_to_necessitaSet;




@property (nonatomic, strong) NSSet *utenti_to_stanze;

- (NSMutableSet*)utenti_to_stanzeSet;





@end

@interface _Utente (CoreDataGeneratedAccessors)

- (void)addUtenti_to_necessita:(NSSet*)value_;
- (void)removeUtenti_to_necessita:(NSSet*)value_;
- (void)addUtenti_to_necessitaObject:(Necessita*)value_;
- (void)removeUtenti_to_necessitaObject:(Necessita*)value_;

- (void)addUtenti_to_stanze:(NSSet*)value_;
- (void)removeUtenti_to_stanze:(NSSet*)value_;
- (void)addUtenti_to_stanzeObject:(Stanza*)value_;
- (void)removeUtenti_to_stanzeObject:(Stanza*)value_;

@end

@interface _Utente (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveEta;
- (void)setPrimitiveEta:(NSNumber*)value;

- (int16_t)primitiveEtaValue;
- (void)setPrimitiveEtaValue:(int16_t)value_;




- (NSNumber*)primitiveId_utente;
- (void)setPrimitiveId_utente:(NSNumber*)value;

- (int16_t)primitiveId_utenteValue;
- (void)setPrimitiveId_utenteValue:(int16_t)value_;




- (NSString*)primitiveNome;
- (void)setPrimitiveNome:(NSString*)value;





- (NSMutableSet*)primitiveUtenti_to_necessita;
- (void)setPrimitiveUtenti_to_necessita:(NSMutableSet*)value;



- (NSMutableSet*)primitiveUtenti_to_stanze;
- (void)setPrimitiveUtenti_to_stanze:(NSMutableSet*)value;


@end
