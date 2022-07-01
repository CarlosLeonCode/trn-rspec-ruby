## Describe as 'folder' to organize or examples
We can use describe to organizar our examples. It's more common 
use the *context* statement.
> Example in context_spec.rb

<hr>

## Before and After Hooks

A Hook it's a functionn that it's executed in runtime, we have to sort of hooks:

- Before: It's executed before something
- After: It's executed after something

We can define two behaviors for these hooks passing differentes symbols as arguments, there are:

- example: It will run in each example.
- context: It will run once inside the context that is defined.

> Example in before_and_after_spec.rb

<hr>

## Nested hooks 

Cuando usamos hooks anidados, los de tipo *example* van a repetirse pero desde los bloques de código superiores hasta los internos. Los hooks internos no se ejecutan en los contextos externos.

> Example in nested_hooks_spec.rb

## Overwrite let

We can overwrite let helpers rewrite them inside each context block

<hr/>

## What does the subject helper method return?

This helper return a new instance of the class referenced in the test main describe declaration.

## Why is better to pass a class argument to the describe method instead of a string with the class name?

It's better oass a class argument because we can use helpers like subject.


## Described class

This allows to us create a dynamic code, if we can our class references in our describe rspect context, we don't need change it through all the examples.

> Example in described_class_spec.rb

## is_spected statement

We use this only with subject statments, and it's a short way to write an example.

```ruby
it { is_expected.to eq(5) }
```

> Example at one_liner_syntax_spec.rb
