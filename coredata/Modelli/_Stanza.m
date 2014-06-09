// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Stanza.m instead.

#import "_Stanza.h"

const struct StanzaAttributes StanzaAttributes = {
	.id_stanza = @"id_stanza",
	.nome = @"nome",
	.piattaforma = @"piattaforma",
};

const struct StanzaRelationships StanzaRelationships = {
	.stanze_to_dati = @"stanze_to_dati",
	.stanze_to_utenti = @"stanze_to_utenti",
};

const struct StanzaFetchedProperties StanzaFetchedProperties = {
};

@implementation StanzaID
@end

@implementation _Stanza

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Stanza" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Stanza";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Stanza" inManagedObjectContext:moc_];
}

- (StanzaID*)objectID {
	return (StanzaID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"id_stanzaValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"id_stanza"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"piattaformaValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"piattaforma"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic id_stanza;



- (int16_t)id_stanzaValue {
	NSNumber *result = [self id_stanza];
	return [result shortValue];
}

- (void)setId_stanzaValue:(int16_t)value_ {
	[self setId_stanza:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveId_stanzaValue {
	NSNumber *result = [self primitiveId_stanza];
	return [result shortValue];
}

- (void)setPrimitiveId_stanzaValue:(int16_t)value_ {
	[self setPrimitiveId_stanza:[NSNumber numberWithShort:value_]];
}





@dynamic nome;






@dynamic piattaforma;



- (int16_t)piattaformaValue {
	NSNumber *result = [self piattaforma];
	return [result shortValue];
}

- (void)setPiattaformaValue:(int16_t)value_ {
	[self setPiattaforma:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitivePiattaformaValue {
	NSNumber *result = [self primitivePiattaforma];
	return [result shortValue];
}

- (void)setPrimitivePiattaformaValue:(int16_t)value_ {
	[self setPrimitivePiattaforma:[NSNumber numberWithShort:value_]];
}





@dynamic stanze_to_dati;

	
- (NSMutableSet*)stanze_to_datiSet {
	[self willAccessValueForKey:@"stanze_to_dati"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"stanze_to_dati"];
  
	[self didAccessValueForKey:@"stanze_to_dati"];
	return result;
}
	

@dynamic stanze_to_utenti;

	
- (NSMutableSet*)stanze_to_utentiSet {
	[self willAccessValueForKey:@"stanze_to_utenti"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"stanze_to_utenti"];
  
	[self didAccessValueForKey:@"stanze_to_utenti"];
	return result;
}
	






@end
