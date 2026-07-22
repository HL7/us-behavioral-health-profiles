---
topic: fql-profile-constraints
---
<fql>
    from StructureDefinition
    where url = %canonical
    select differential.element {
        Path: id,
        join constraint {
            Id: key,
            Grade: severity,
            Details: human,
            Expression: expression
            }
        }
</fql>