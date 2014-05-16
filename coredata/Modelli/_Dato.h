// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Dato.h instead.

#import <CoreData/CoreData.h>


extern const struct DatoAttributes {
	__unsafe_unretained NSString *data;
	__unsafe_unretained NSString *id_dato;
	__unsafe_unretained NSString *ora;
	__unsafe_unretained NSString *valore_luminosita;
	__unsafe_unretained NSString *valore_purezzaAria;
	__unsafe_unretained NSString *valore_temperatura;
	__unsafe_unretained NSString *valore_umidita;
} DatoAttributes;

extern const struct DatoRelationships {
	__unsafe_unretained NSString *dati_to_stanze;
} DatoRelationships;

extern const struct DatoFetchedProperties {
} DatoFetchedProperties;

@class Stanza;









@interface DatoID : NSManagedObjectID {}
@end

@interface _Dato : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (DatoID*)objectID;





@property (nonatomic, strong) NSDate* data;



//- (BOOL)validateData:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* id_dato;



@property int16_t id_datoValue;
- (int16_t)id_datoValue;
- (void)setId_datoValue:(int16_t)value_;

//- (BOOL)validateId_dato:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* ora;



//- (BOOL)validateOra:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* valore_luminosita;



@property int16_t valore_luminositaValue;
- (int16_t)valore_luminositaValue;
- (void)setValore_luminositaValue:(int16_t)value_;

//- (BOOL)validateValore_luminosita:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* valore_purezzaAria;



@property int16_t valore_purezzaAriaValue;
- (int16_t)valore_purezzaAriaValue;
- (void)setValore_purezzaAriaValue:(int16_t)value_;

//- (BOOL)validateValore_purezzaAria:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* valore_temperatura;



@property int16_t valore_temperaturaValue;
- (int16_t)valore_temperaturaValue;
- (void)setValore_temperaturaValue:(int16_t)value_;

//- (BOOL)validateValore_temperatura:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* valore_umidita;



@property int16_t valore_umiditaValue;
- (int16_t)valore_umiditaValue;
- (void)setValore_umiditaValue:(int16_t)value_;

//- (BOOL)validateValore_umidita:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) Stanza *dati_to_stanze;

//- (BOOL)validateDati_to_stanze:(id*)value_ error:(NSError**)error_;





@end

@interface _Dato (CoreDataGeneratedAccessors)

@end

@interface _Dato (CoreDataGeneratedPrimitiveAccessors)


- (NSDate*)primitiveData;
- (void)setPrimitiveData:(NSDate*)value;




- (NSNumber*)primitiveId_dato;
- (void)setPrimitiveId_dato:(NSNumber*)value;

- (int16_t)primitiveId_datoValue;
- (void)setPrimitiveId_datoValue:(int16_t)value_;




- (NSString*)primitiveOra;
- (void)setPrimitiveOra:(NSString*)value;




- (NSNumber*)primitiveValore_luminosita;
- (void)setPrimitiveValore_luminosita:(NSNumber*)value;

- (int16_t)primitiveValore_luminositaValue;
- (void)setPrimitiveValore_luminositaValue:(int16_t)value_;




- (NSNumber*)primitiveValore_purezzaAria;
- (void)setPrimitiveValore_purezzaAria:(NSNumber*)value;

- (int16_t)primitiveValore_purezzaAriaValue;
- (void)setPrimitiveValore_purezzaAriaValue:(int16_t)value_;




- (NSNumber*)primitiveValore_temperatura;
- (void)setPrimitiveValore_temperatura:(NSNumber*)value;

- (int16_t)primitiveValore_temperaturaValue;
- (void)setPrimitiveValore_temperaturaValue:(int16_t)value_;




- (NSNumber*)primitiveValore_umidita;
- (void)setPrimitiveValore_umidita:(NSNumber*)value;

- (int16_t)primitiveValore_umiditaValue;
- (void)setPrimitiveValore_umiditaValue:(int16_t)value_;





- (Stanza*)primitiveDati_to_stanze;
- (void)setPrimitiveDati_to_stanze:(Stanza*)value;


@end
