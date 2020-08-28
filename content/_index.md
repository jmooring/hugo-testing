+++
title = "Hugo Forum Topic #27887"
date = 2020-08-28T12:41:31-04:00
draft = false
+++
# Hugo Forum Topic #27887

Details: <https://discourse.gohugo.io/t/27887>

Description: Create anti-taxonomy? all pages without tag?

---

## Overview 

For recipes that include a particular ingredient, go to /ingredients/foo.

For recipes that _exclude_ a particular ingredient, add /no to the end of the URL.

Examples:

- Recipes that include garlic: [/ingredients/garlic/](/ingredients/garlic/)
- Recipes that _exclude_ garlic: [/ingredients/garlic/no/](/ingredients/garlic/no/)
- Recipes that _exclude_ anchovies: [/ingredients/anchovies/no/](/ingredients/anchovies/no/)

## Usage

Let's say you create a new recipe with an ingredient that does not yet exist on the site (e.g., pepperoni):

```
hugo new recipes/pepperoni-pizza.md
```

With these ingredients:

```
+++
title = "Pepperoni Pizza"
date = 2020-08-28T13:08:01-04:00
draft = false
ingredients = ["pepperoni","anchovies","garlic","tomatoes"]
+++
```

If you visit [/ingredients/pepperoni/no/](/ingredients/pepperoni/no/) you will get a 404 error.

You must perform one additional step:

```
hugo new -k exclude ingredients/pepperoni
```
