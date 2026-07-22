---
topic: structuredefinition-index
---

## {{page-title}}

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
