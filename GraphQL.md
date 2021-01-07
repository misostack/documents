# GraphQL

> The way we design our APIs structures the way we think [about] the tools and applications we build.

## Issues with REST

- **Round Trip and Repeat Trip Times** : more relational data is presented, the system chokes on itself
- **Over/Under Fetching**
- **Weak Typing and Poor Metadata**
- **Improper Architecture Usage**
- **REST Has Many Roundtrips - GraphQL Has Few**
- **REST Has Poor Type Systems - GraphQL Has a Sophisticated One**
- **REST Has Poor Discoverability - GraphQL Has Native Support**
- **REST Is Thin Client/Fat Server - GraphQL is Fat Client/Fat Server**
- **The End Of The Status Quo**

> These attributes are linked to the fact that “REST is intended for long-lived network-based applications that span multiple organizations” according to its inventor. This is not a requirement for APIs that serve a client app built within the same organization

> GraphQL declares everything as a graph… You say what you want, and then you will get that.

> REST lacks some important elements of effective discoverability — namely known document structure, server response constraint structures, and an independence from standard,restrictive error mechanisms in HTTP. Although, you can add that functionality!”, the fact that it lacks it by default only adds to the complexity we’re trying to move away from.

> GraphQL is based on **relational data** and, when operating on a properly formed schema, is self describing, GraphQL is by design natively discoverable

> GraphQL unifies data that would otherwise require multiple endpoints, or in the worst case scenario ad hoc endpoints and complex repeat retrievals, and gives the requester a single, simple entry point.

> Because data is defined on the server with a graph-based scheme, data can be delivered as a package rather than through multiple calls. For instance, the following code for a content and comment query would have a single endpoint in GraphQL

```graphql
{
  latestPost {
    _id,
    title,
    content,
    author {
      name
    },
    comments {
      content,
      author {
        name
      }
    }
  }
}
```

## Refs

- https://reactjs.org/blog/2015/05/01/graphql-introduction.html

## Getting start

- What?
- Why?
- When?
- Who?
- How?

### What is GraphQL?

> GraphQL is an application layer query language

```graphql

### Describe your data

type Project {
  name: String
  tagline: String
  contributors: [User] 
}

### Ask for what you want

{
  project(name: "GraphQL") {
    tagline
  }
}

### Get predictable results

{
  "project": {
    "tagline": "A query language for APIs"
  }
}

### Why?

- More Elegant Data Retrieval
- More Backend Stability
- Better Query Efficiency
- GraphQL Is a Specification
- GraphQL Improves
- Understanding and Organization

### Who used it?

> Most of the use cases for GraphQL are therefore those who require **high data throughput**

**UseCase1**

> One example of how powerful GraphQL is when it comes to handling high data throughput in a relational matter is Hudl, a sports video analytics provider
> Basically, the data processed by Hudl is strictly relational — unlike other solutions, the data being handled isn’t simple one-to-one relational data. Each player belongs to a team, but each player has their own data which is attached to specific activities, skills, and approaches
> In a traditional query language, comparing and contrasting these hugely discrepant data points between each player and then each team would require a massive amount of data combination, or at the very least, a huge range of calls being called multiple times to each server system each second

**Usecase2**

> GraphQL isn’t only for huge complex databases, either — it can easily be used to create relatively simple databases with greater efficiency. A great example of this is Beek.io. It’s fundamentally a social network, albeit a niche one, focusing on books and those who love them. While the database itself is relatively simple — author, name, genre, etc. — the way this content is handled is supremely simplified under GraphQL

> Conclusion: Assess

### How to Wrap a REST API in GraphQL


