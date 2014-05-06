// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Piattaforma.m instead.

#import "_Piattaforma.h"

const struct PiattaformaAttributes PiattaformaAttributes = {
	.id_piattaforma = @"id_piattaforma",
};

const struct PiattaformaRelationships PiattaformaRelationships = {
	.piattaforma_to_dati = @"piattaforma_to_dati",
	.piattaforma_to_stanze = @"piattaforma_to_stanze",
};

const struct PiattaformaFetchedProperties PiattaformaFetchedProperties = {
};

@implementation PiattaformaID
@end

@implementation _Piattaforma

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Piattaforme" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Piattaforme";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Piattaforme" inManagedObjectContext:moc_];
}

- (PiattaformaID*)objectID {
	return (PiattaformaID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"id_piattaformaValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"id_piattaforma"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic id_piattaforma;



- (int16_t)id_piattaformaValue {
	NSNumber *result = [self id_piattaforma];
	return [result shortValue];
}

- (void)setId_piattaformaValue:(int16_t)value_ {
	[self setId_piattaforma:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveId_piattaformaValue {
	NSNumber *result = [self primitiveId_piattaforma];
	return [result shortValue];
}

- (void)setPrimitiveId_piattaformaValue:(int16_t)value_ {
	[self setPrimitiveId_piattaforma:[NSNumber numberWithShort:value_]];
}





@dynamic piattaforma_to_dati;

	
- (NSMutableSet*)piattaforma_to_datiSet {
	[self willAccessValueForKey:@"piattaforma_to_dati"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"piattaforma_to_dati"];
  
	[self didAccessValueForKey:@"piattaforma_to_dati"];
	return result;
}
	

@dynamic piattaforma_to_stanze;

	






@end
