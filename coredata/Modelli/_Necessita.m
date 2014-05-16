// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Necessita.m instead.

#import "_Necessita.h"

const struct NecessitaAttributes NecessitaAttributes = {
	.descrizione = @"descrizione",
	.id_necessita = @"id_necessita",
	.nome = @"nome",
};

const struct NecessitaRelationships NecessitaRelationships = {
	.necessita_to_utenti = @"necessita_to_utenti",
};

const struct NecessitaFetchedProperties NecessitaFetchedProperties = {
};

@implementation NecessitaID
@end

@implementation _Necessita

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Necessita" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Necessita";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Necessita" inManagedObjectContext:moc_];
}

- (NecessitaID*)objectID {
	return (NecessitaID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"id_necessitaValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"id_necessita"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic descrizione;






@dynamic id_necessita;



- (int16_t)id_necessitaValue {
	NSNumber *result = [self id_necessita];
	return [result shortValue];
}

- (void)setId_necessitaValue:(int16_t)value_ {
	[self setId_necessita:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveId_necessitaValue {
	NSNumber *result = [self primitiveId_necessita];
	return [result shortValue];
}

- (void)setPrimitiveId_necessitaValue:(int16_t)value_ {
	[self setPrimitiveId_necessita:[NSNumber numberWithShort:value_]];
}





@dynamic nome;






@dynamic necessita_to_utenti;

	
- (NSMutableSet*)necessita_to_utentiSet {
	[self willAccessValueForKey:@"necessita_to_utenti"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"necessita_to_utenti"];
  
	[self didAccessValueForKey:@"necessita_to_utenti"];
	return result;
}
	






@end
