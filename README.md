
# Database model
## Entities
### Universe
* Id
* Name
* Short description
Should define universe of objects that will be used
Cookbooks, ruby gems, packages etc...

### Object
* Id
* UniverseId
* Name

### Release
* ObjectId
* ReleaseId
* Version value

### DEpendency
* ReleaseId
* TargetObjectId - Foreign to Object
* Constraint
