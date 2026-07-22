---
topic: fql-get-examples
---

<fql>
	from
		Resource
	where 
		meta.profile = %canonical
	select
		Id: id,
		Link: link(%context)
</fql>