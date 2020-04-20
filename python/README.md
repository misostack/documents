# Python

## Installation

- Install python3

```bash
    9  sudo apt search python
   10  sudo apt search python | grep 3.
   11  sudo apt search python | grep 3.7
   12  sudo apt-get install python3.7
   13  which python
   15  which python
   18  which python
   19  python3 -v
```

- Install python3 package management : pip3

```bash
sudo apt-get install python3-pip
```

- Setup python3 virtual environments

```bash
sudo apt-get install python3-venv
python3 -m venv /src/example/.venv
source /src/example/.venv/bin/activate
which python3
deactivate
which python3
```

**Refs:**

- https://docs.python.org/3/tutorial/venv.html

## Datatypes

### Primitive types

> Python has 4 primitive types : 
>
> - int ( integers )
> - float
> - boolean
> - str

### Falsy

> - 0, False, None, "" (empty string), [], (), range(0), {} (empty dictionary) are **falsy**
> - The others are true

### Sequence Types

> - str
> - list
> - tuple
> - range

> These are enumerated collection where order does matter

### Mapping Types

> - dict

### Set

> The **set** is a Python implementation of the set in Mathematics 

### Dictionary

> Like the list and the tuple, dictionary is also a collection type. However, it is not an ordered sequence, and it contains key-value pairs. One or more key:value pairs separated by commas are put inside curly brackets to form a dictionary object.

## Mutable and Immutable

> Number values, strings, and tuple are immutable, which means their contents can't be altered after creation.

> On the other hand, collection of items in a List or Dictionary object can be modified. It is possible to add, delete, insert, and rearrange items in a list or dictionary. Hence, they are mutable objects.