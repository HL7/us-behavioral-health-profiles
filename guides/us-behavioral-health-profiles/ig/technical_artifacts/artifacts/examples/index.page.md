---
topic: examples-index
---

## {{page-title}}

<fql>
	from
		Resource
	where 
		meta.profile.empty().not()
	select
		Example: '{{pagelink:example-'+ id + '}}',
		ResourceType: typename()
	order by Example
</fql>
