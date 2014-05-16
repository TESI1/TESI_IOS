// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Dato.m instead.

#import "_Dato.h"

const struct DatoAttributes DatoAttributes = {
	.data = @"data",
	.id_dato = @"id_dato",
	.ora = @"ora",
	.valore_luminosita = @"valore_luminosita",
	.valore_purezzaAria = @"valore_purezzaAria",
	.valore_temperatura = @"valore_temperatura",
	.valore_umidita = @"valore_umidita",
};

const struct DatoRelationships DatoRelationships = {
	.dati_to_stanze = @"dati_to_stanze",
};

const struct DatoFetchedProperties DatoFetchedProperties = {
};

@implementation DatoID
@end

@implementation _Dato

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Dati" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Dati";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Dati" inManagedObjectContext:moc_];
}

- (DatoID*)objectID {
	return (DatoID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"id_datoValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"id_dato"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"valore_luminositaValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"valore_luminosita"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"valore_purezzaAriaValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"valore_purezzaAria"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"valore_temperaturaValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"valore_temperatura"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"valore_umiditaValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"valore_umidita"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic data;






@dynamic id_dato;



- (int16_t)id_datoValue {
	NSNumber *result = [self id_dato];
	return [result shortValue];
}

- (void)setId_datoValue:(int16_t)value_ {
	[self setId_dato:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveId_datoValue {
	NSNumber *result = [self primitiveId_dato];
	return [result shortValue];
}

- (void)setPrimitiveId_datoValue:(int16_t)value_ {
	[self setPrimitiveId_dato:[NSNumber numberWithShort:value_]];
}





@dynamic ora;






@dynamic valore_luminosita;



- (int16_t)valore_luminositaValue {
	NSNumber *result = [self valore_luminosita];
	return [result shortValue];
}

- (void)setValore_luminositaValue:(int16_t)value_ {
	[self setValore_luminosita:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveValore_luminositaValue {
	NSNumber *result = [self primitiveValore_luminosita];
	return [result shortValue];
}

- (void)setPrimitiveValore_luminositaValue:(int16_t)value_ {
	[self setPrimitiveValore_luminosita:[NSNumber numberWithShort:value_]];
}





@dynamic valore_purezzaAria;



- (int16_t)valore_purezzaAriaValue {
	NSNumber *result = [self valore_purezzaAria];
	return [result shortValue];
}

- (void)setValore_purezzaAriaValue:(int16_t)value_ {
	[self setValore_purezzaAria:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveValore_purezzaAriaValue {
	NSNumber *result = [self primitiveValore_purezzaAria];
	return [result shortValue];
}

- (void)setPrimitiveValore_purezzaAriaValue:(int16_t)value_ {
	[self setPrimitiveValore_purezzaAria:[NSNumber numberWithShort:value_]];
}





@dynamic valore_temperatura;



- (int16_t)valore_temperaturaValue {
	NSNumber *result = [self valore_temperatura];
	return [result shortValue];
}

- (void)setValore_temperaturaValue:(int16_t)value_ {
	[self setValore_temperatura:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveValore_temperaturaValue {
	NSNumber *result = [self primitiveValore_temperatura];
	return [result shortValue];
}

- (void)setPrimitiveValore_temperaturaValue:(int16_t)value_ {
	[self setPrimitiveValore_temperatura:[NSNumber numberWithShort:value_]];
}





@dynamic valore_umidita;



- (int16_t)valore_umiditaValue {
	NSNumber *result = [self valore_umidita];
	return [result shortValue];
}

- (void)setValore_umiditaValue:(int16_t)value_ {
	[self setValore_umidita:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveValore_umiditaValue {
	NSNumber *result = [self primitiveValore_umidita];
	return [result shortValue];
}

- (void)setPrimitiveValore_umiditaValue:(int16_t)value_ {
	[self setPrimitiveValore_umidita:[NSNumber numberWithShort:value_]];
}





@dynamic dati_to_stanze;

	






@end
