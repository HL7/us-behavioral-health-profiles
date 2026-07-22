---
topic: artifacts
---

# {{page-title}}

This section contains all the FHIR artifacts defined in this Implementation Guide.

## Profiles

<fql>
	from 
		StructureDefinition
	where 
		type != 'Extension' and kind != 'logical' and kind !='complex-type'
	select 
		Profile: '{{pagelink:StructureDefinition-'+id+'}}', 
		Resource: type.toString(),
		Description: description
	order by Profile
</fql>

## Terminology

<fql>
	from 
		Resource
    where 
		typename() = 'ValueSet' or typename() = 'CodeSystem'
	select 
		Name: '{{pagelink:' + iif(typename() = 'ValueSet', 'ValueSet-', 'CodeSystem-') + id + '}}',
		Description: description
	order by 
		Name
</fql>

## Examples
<fql>
	from
		Resource
	where 
		meta.profile.empty().not()
	select
		Example: '{{pagelink:example-'+ id + '}}',
		ResourceType: typename(),
		'Conforms To Profile': meta.profile[0]
    order by ResourceType
</fql>