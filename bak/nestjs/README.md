# NestJS CheatSheet

## CheatSheet



## First Approach

> Steps to create a Simple to Complex CRUD API for a collection of resource's endpoints

**Eg: Build the sample CRUD APIs for users collection**

> Sample Module Structure

```json
// The Standard
"user" : {
	"user.module.ts"
  "user.lang.ts" // for translation
	"controllers": ["users.controller.ts"],	
  "models": { // models are used to express the user's domains
    "dtos": ["index.dto.ts", "user.dto.ts"],
    "entities": ["user.entity.ts"],
    "services": ["user.service.ts"],
    "repositories": ["user.repository.ts"],
    "facades": ["user.facade.ts"],
  }
  
}

// The Flat Structure
"user" : {
  "user.module.ts"
  "user.lang.ts" // for translation
  "users.controllers.ts"
  "dtos": ["index.dto.ts", "user.dto.ts"],
  "entities": ["user.entity.ts"],
  "user.service.ts"
}
```

**1. Registered route in app module**

**Note**: Use this package to config routes in app module ["nest-router"](https://github.com/nestjsx/nest-router)

```js
const routes: Routes = [
  {
    path: '/v1',
    module: BaseModule,
    children: [
      {
        path: '/users',
        module: UserModule
      }
    ]
  }
]
```

**2. Create Controller**

- https://docs.nestjs.com/controllers


**3. Create DTO - Add Validations**

**Required**:

- [ValidationPipe](https://docs.nestjs.com/pipes)
- [class-validator](https://github.com/typestack/class-validator)

**4. Create Entity - Generate Migration**
 
- [Create Entities](https://typeorm.io/#/entities)
PostgresDriver.ts)
- Create DB and config connection

> By default, TypeORM will create the schema if it does not exists, so after configuration you need to reload the app to allow TypeORM does its job. ( if in watch mod no need to reload, it will automatically reload ). But for secured and the integrity of data. We should disabled this and run manually.

- [Install TypeORM CLI](https://typeorm.io/#/using-cli/installing-cli)

**Add the typeorm command under scripts section in package.json**

```json
"typeorm": "ts-node -r tsconfig-paths/register ./node_modules/typeorm/cli.js"
```

**Run install to update the command**

```bash
npm instal
```

**Test the new command**

```bash
npm run typeorm
# or
npx typeorm ## prefer
```


**Required**:

- [PostgreSQL ( use in this sample )](https://devnotes.tamthapnhilap.site/article/postgresql-20191023-headfirst/)
- [@nestjs/typeorm](https://docs.nestjs.com/techniques/database)
- [@nestjs/config](https://docs.nestjs.com/techniques/configuration)

**Issues may got**

- [UUID_generate_v4 does not exists in PostgreSQL](https://www.codehub.vn/Fix-loi-ERROR-function-uuid_generate_v4-does-not-exist-trong-PostgreSQL)

```bash
psql postgresql://postgres:123456@127.0.0.1:5432/postgres
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
```

- New Entity
- New Migration

**Ref**:

- [Codebase](https://github.com/typeorm/typeorm/blob/a4dec02cc59d3219a29c7be0322af2253e1452dc/src/driver/postgres/)
