# Angular the right way

## Ref

- https://indepth.dev/avoiding-common-confusions-with-modules-in-angular/
- https://indepth.dev/here-is-what-you-need-to-know-about-dynamic-components-in-angular/
- https://angular.io/api/router/RouterModule#forChild
# Cs1HeadfirstAngular

## Todo

- [ ] I18n
- [ ] Log Service
- [ ] API Service
- [ ] Core module structure: dtos, entities, services, facades,
- [ ] Auth Module


## Base Module

1. Log Service
2. I18n
3. HTTP Service -> abstract to allow switch provider --> API Service extends HTTP Service with specific provider.

### I18n

- https://github.com/ngx-translate/core
- https://github.com/biesbjerg/ngx-translate-extract
- https://www.codeandweb.com/babeledit/tutorials/how-to-translate-your-angular8-app-with-ngx-translate
- https://stackoverflow.com/questions/42308261/how-to-disable-caching-for-i18next-translation-json-files

### Stylesheets

- https://ng-bootstrap.github.io/#/getting-started#i18n

### Schematics

- https://medium.com/@tomastrajan/%EF%B8%8F-how-to-create-your-first-custom-angular-schematics-with-ease-%EF%B8%8F-bca859f3055d

### Ivy

- https://medium.com/angular-in-depth/all-you-need-to-know-about-ivy-the-new-angular-engine-9cde471f42cf

### Globalize

- https://angular.io/guide/migration-localize

### Serialize and Deserialize

- https://www.npmjs.com/package/typescript-json-serializer

### Refs
- https://www.techiediaries.com/angular-file-upload-progress-bar/
- https://favicon.io/favicon-converter/
- https://github.com/nervgh/angular-file-upload
- https://www.ahmedbouchefra.com/angular/angular-9-8-tutorial-example-upload-files-with-formdata-httpclient-rxjs-and-material-progressbar/

## Angular App Architecture

> Version : 0.1
> Release Date: 2020-03-13

![Angular App Architecture](./assets/angular-app-architecture.png)

## Workflow

1. A module structure

```json
{
  "example": [
    "example.module.ts", // declare all elements in module
    "example-routing.module.ts", // declare entry components with routes
    "example-components.module.ts", // components placed here to allow sharing
    "components", // all presentation components in this module, can group by functionals
    "containers", // all container components in this module
    "services", // the service in this module
    "entities", // the defined entities in module - not required
    "repositories", // the repositories - not required
  ]
}
```

```bash
# generate new module with route
ng g module {modulename} --routing=true
# Add new route to this module in base route
# Import Shared Module into this new module

## Create
 ng g component example/components/example-item --module=example/example-components.module --skipTests=true

## Test all
ng test
## Test specific
ng test --include=src/app/core/services/log

## headless chromium

sudo apt-get install chromium-browser -y

```
## Summary

1. DI Services
2. Error Handler: logs, notification
4. API Service: support multiple providers, HTTP Request, Response, HTTP Error, Service Test
5. Log Service: domains, report error
6. I18n Service
7. Auth Service
8. Auth Module: Auth Routes, Auth Service, Auth Guards, User Entity, Auth Containers, Auth Components
9. Unit Test
10. Splash Loading
11. Shared Module
12. List Items Module: Forms, Entities, Facades, Services, Containers, Components
13. Environments
14. CI & CD
15. Push to Heroku
16. README
17. Custom Schematics


## Angular Fundamentals

### Components

> To contrast the two types of components, there are components which are included in the template, which are declarative. Additionally, there are components which you load imperatively; that is, entry components.

**There are two main kinds of entry components:**

- The bootstrapped root component.
- A component you specify in a route definition.

> Angular router --> entry_components[]

![Entry components][entry_component]

### NgModules

> NgModules configure the injector and the compiler and help organize related things together.

#### Design Rules

> Component Independence : 
> - High cohesion
> - Low Coupling

> **Cohesion : **
> - The measure of the strength of functional relatedness of elements within a module
> - Elements: instructions, groups of instructions, data definition, call of another module
> - We aim for strongly cohesive modules
> - Everything in module should be related to one another - focus on the task
> - Strong cohesion will reduce relations between modules - minimise coupling

**Types of Cohesion : **

- **Functional cohesion (Most Required)**
- Sequential cohesion
- Communicational cohesion
- Procedural cohesion
- Temporal cohesion
- Logical cohesion
- **Coincidental cohesion (Least Required)**

> **Functional cohesion**:
> 
> - All elements contribute to the execution of one and only one problem-related task
> - Focussed - strong, single-minded purpose
> - No elements doing unrelated activities

**Examples of functional cohesive modules:**
> 
> - Compute cosine of angle
> - Read transaction record
> - Assign seat to airline passenger

**Some of bad design**

- Unrelated method to class
- Utility Class
- Hidden objects and subclasses

**Loose Coupling**



2. Service

- https://angular.io/guide/dependency-injection
- https://angular.io/guide/hierarchical-dependency-injection
- https://angular.io/guide/dependency-injection-providers
- https://angular.io/guide/dependency-injection-in-action
- https://angular.io/guide/singleton-services
- https://stackblitz.com/angular/omylrbvppab?file=src%2Fapp%2Fgreeting%2Fgreeting.module.ts
- https://angular.io/guide/ngmodule-faq#q-why-bad
- https://angular.io/guide/lazy-loading-ngmodules
- https://angular.io/guide/sharing-ngmodules


## Refs

- https://www.avatto.com/study-material/software-engineering-cohesion
- https://thebojan.ninja/2015/04/08/high-cohesion-loose-coupling/
- https://nehalist.io/working-with-models-in-angular/
- https://khalilstemmler.com/articles/typescript-domain-driven-design/ddd-frontend/

### Api initializer

- https://itnext.io/handle-restricted-routes-in-angular-with-route-guards-95c93be9d05e

### DI Providers

- https://angular.io/guide/dependency-injection-providers#factory-providers
- https://angular.io/api/core/APP_INITIALIZER#description
- https://www.tektutorialshub.com/angular/angular-how-to-use-app-initializer/#what-is-app-initializer
- https://dzone.com/articles/how-to-use-the-app-initializer-token-to-hook-into

> Sometimes you need to create a dependent value dynamically, based on information you won't have until run time. For example, you might need information that changes repeatedly in the course of the browser session. Also, your injectable service might not have independent access to the source of the information.

### Auth

- https://itnext.io/handle-restricted-routes-in-angular-with-route-guards-95c93be9d05e
- https://blog.bitsrc.io/how-to-mock-a-backend-in-angular-using-httpinterceptor-667794d45e8d
- https://blog.bitsrc.io/7-ways-to-leverage-httpinterceptors-in-angular-59436611844d
- https://angular.io/api/common/http/HttpInterceptor#description

### HTTP

- https://angular.io/guide/http#testing-for-errors

### Testing

- https://gist.github.com/ipepe/94389528e2263486e53645fa0e65578b
- https://developerslogblog.wordpress.com/2019/03/19/how-to-fix-no-binary-for-chrome-browser-on-your-platform/
- https://medium.com/angular-in-depth/angular-testing-with-headless-chrome-d1343b349699
- https://christianlydemann.com/all-you-need-to-know-about-mocking-in-angular-tests/
- https://stackoverflow.com/questions/43186533/unit-test-error-cannot-call-promise-then-from-within-a-sync-test

```javascript
// wrong
describe('someFunction', () => {
    const dependency = TestBed.get(Dependency); // this was causing the error

    it('should not fail', () => {
        someFunction(dependency);
    });
});

// fixed
describe('someFunction', () => {
    it('should not fail', () => {
        const dependency = TestBed.get(Dependency); // putting it here fixed the issue
        someFunction(dependency);
    });
});
```

### Error handler

- - https://www.positronx.io/angular-error-handling-tutorial-with-examples/
- https://angular.io/api/core/ErrorHandler
- https://medium.com/@amcdnl/global-error-handling-with-angular2-6b992bdfb59c
- https://medium.com/angular-in-depth/expecting-the-unexpected-best-practices-for-error-handling-in-angular-21c3662ef9e4
- https://medium.com/dailyjs/how-to-send-errors-into-slack-dc552e30506f
- https://www.positronx.io/angular-internationalization-i18n-with-ngx-translate-tutorial/

### I18n

- https://github.com/ngx-translate/http-loader/issues/25
- https://github.com/ngx-translate/core/issues/1005
- https://netbasal.com/strategies-for-cache-busting-translation-files-in-angular-86143ee14c3c
- https://phrase.com/blog/posts/10-common-mistakes-in-software-localization/

### Optimzing

- https://blog.angular-university.io/how-does-angular-2-change-detection-really-work/
- https://apiumhub.com/tech-blog-barcelona/change-detection-angular/
- https://blog.bitsrc.io/3-ways-to-render-large-lists-in-angular-9f4dcb9b65
- https://medium.com/@vyakymenko/increasing-rendering-performance-in-angular-with-lazy-render-ngfor-ae8c5d16e194
- https://medium.com/@tharakamd.12/avoid-unnecessary-rendering-on-angular-ngfor-with-trackby-f56ae5d79561
- Angular CKD : https://web.dev/virtualize-lists-with-angular-cdk/
- https://blog.oasisdigital.com/2017/angular-runtime-performance-guide/
- https://www.gistia.com/insights/improve-angular-performance-efficiency

### Speed up development time

- https://bit.dev/

### Animations

- https://angular.io/guide/reusable-animations
- https://angular.io/guide/animations#animation-api-summary
- http://animationsftw.in/#/basics
- https://www.youtube.com/watch?v=JhNo3Wvj6UQ&feature=youtu.be&t=2h47m53s

[entry_components]: ./assets/entry-components.png


## Common mistakes

- https://www.mindinventory.com/blog/common-mistakes-angular-developers-commit/
- https://medium.com/developeronrent/top-10-common-mistakes-that-angular-developers-commit-fc0fc3cc1ddd
- https://medium.com/hackernoon/top-common-mistakes-of-angular-developers-2a36524f2c21

## Libraries

- https://angular.io/guide/libraries

## Schematics

- https://angular.io/guide/schematics
- https://medium.com/@tomastrajan/total-guide-to-custom-angular-schematics-5c50cf90cdb4
- https://developer.okta.com/blog/2019/02/13/angular-schematics

## Online Resource

- https://www.youtube.com/channel/UCzrskTiT_ObAk3xBkVxMz5g/videos
