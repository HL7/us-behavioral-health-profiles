---
topic: fql-profile-bindings
---
<fql>
  from
    StructureDefinition
    where
        url = %canonical
  select
    join
      for differential.element
      select {
        Path: id,
        join
          for binding
          where valueSet.exists()
          select {
            Conformance: strength,
            ValueSet: valueSet}
        }
</fql>