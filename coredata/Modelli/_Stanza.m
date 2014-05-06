// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Stanza.m instead.

#import "_Stanza.h"

const struct StanzaAttributes StanzaAttributes = {
	.id_stanza = @"id_stanza",
	.nome = @"nome",
};

const struct StanzaRelationships StanzaRelationships = {
	.stanze_to_piattaforma = @"stanze_to_piattaforma",
	.stanze_to_utenti = @"stanze_to_utenti",
};

const struct StanzaFetchedProperties StanzaFetchedProperties = {
};

@implementation StanzaID
@end

@implementation _Stanza

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Stanze" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Stanze";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Stanze" inManagedObjectContext:moc_];
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






@dynamic stanze_to_piattaforma;

	

@dynamic stanze_to_utenti;

	
- (NSMutableSet*)stanze_to_utentiSet {
	[self willAccessValueForKey:@"stanze_to_utenti"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"stanze_to_utenti"];
  
	[self didAccessValueForKey:@"stanze_to_utenti"];
	return result;
}
	






@end
