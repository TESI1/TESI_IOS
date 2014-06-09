// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Utente.m instead.

#import "_Utente.h"

const struct UtenteAttributes UtenteAttributes = {
	.eta = @"eta",
	.id_utente = @"id_utente",
	.nome = @"nome",
};

const struct UtenteRelationships UtenteRelationships = {
	.utenti_to_necessita = @"utenti_to_necessita",
	.utenti_to_stanze = @"utenti_to_stanze",
};

const struct UtenteFetchedProperties UtenteFetchedProperties = {
};

@implementation UtenteID
@end

@implementation _Utente

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Utente" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Utente";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Utenti" inManagedObjectContext:moc_];
}

- (UtenteID*)objectID {
	return (UtenteID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"etaValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"eta"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"id_utenteValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"id_utente"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic eta;



- (int16_t)etaValue {
	NSNumber *result = [self eta];
	return [result shortValue];
}

- (void)setEtaValue:(int16_t)value_ {
	[self setEta:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveEtaValue {
	NSNumber *result = [self primitiveEta];
	return [result shortValue];
}

- (void)setPrimitiveEtaValue:(int16_t)value_ {
	[self setPrimitiveEta:[NSNumber numberWithShort:value_]];
}





@dynamic id_utente;



- (int16_t)id_utenteValue {
	NSNumber *result = [self id_utente];
	return [result shortValue];
}

- (void)setId_utenteValue:(int16_t)value_ {
	[self setId_utente:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveId_utenteValue {
	NSNumber *result = [self primitiveId_utente];
	return [result shortValue];
}

- (void)setPrimitiveId_utenteValue:(int16_t)value_ {
	[self setPrimitiveId_utente:[NSNumber numberWithShort:value_]];
}





@dynamic nome;






@dynamic utenti_to_necessita;

	
- (NSMutableSet*)utenti_to_necessitaSet {
	[self willAccessValueForKey:@"utenti_to_necessita"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"utenti_to_necessita"];
  
	[self didAccessValueForKey:@"utenti_to_necessita"];
	return result;
}
	

@dynamic utenti_to_stanze;

	
- (NSMutableSet*)utenti_to_stanzeSet {
	[self willAccessValueForKey:@"utenti_to_stanze"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"utenti_to_stanze"];
  
	[self didAccessValueForKey:@"utenti_to_stanze"];
	return result;
}
	






@end
