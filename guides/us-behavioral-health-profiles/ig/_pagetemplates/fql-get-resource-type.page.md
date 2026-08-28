---
topic: fql-get-resource-type
---
<fql output="inline">
    for Resource
    where url = %canonical
    select iif($this is StructureDefinition, 'StructureDefinition', iif($this is ValueSet, 'ValueSet', iif($this is CodeSystem, 'CodeSystem', iif($this is ConceptMap, 'ConceptMap', 'Resource'))))
</fql>
