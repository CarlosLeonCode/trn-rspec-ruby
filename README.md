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

It's better pass a class argument because we can use helpers like subject.


## Described class

This allows to us create a dynamic code, if we can our class references in our describe rspect context, we don't need change it through all the examples.

> Example in described_class_spec.rb

## is_spected statement

We use this only with subject statments, and it's a short way to write an example.

```ruby
it { is_expected.to eq(5) }
```
> Example at one_liner_syntax_spec.rb


## Share examples | Delete code duplication

We can share examples through differents examples blocks.
We use the statement below:

```ruby
RSpec.shared_examples 'some id name' do
  # Examples here
end
```

And we import them inside the example block as follows:
```ruby
  include_examples 'some id name'
```

> See share_examples_spec.rb file for more details.

## Share context

We can share context and before - after - functions and instance variable throught differents examples. We call it throught its defined name.

> See share_context_spec.rb for more details.

## IMPORTANT

### By default, what will subject equal?

An instance of the class under test. It is equal to a new instance of some class. This only works when we pass a class as an argument in the RSpec.describe declaration.

### How do you define a custom subject? Provide a code example.

Invoke the subject method and provide a Ruby block. The final evaluation of the block will be the value of subject whenever it's used in an example.

```ruby
subject { [1, 2, 3] }
```

### How does the described_class helper method work? What is the advantage of using it over writing the class name out?

This method returns the name of the class referenced in the RSpec.describe MyClass.
described_class dynamically references the class being tested (the one passed as an argument to the top-level describe method). The advantage is that, if the class name changes, the rest of the spec does not have to change.

### What's the difference between include_examples and include_context?

- The include_examples method injects predefined examples into an example group.

- The include_context method injects context (i.e. before blocks, instance variables, helper methods, let variables) into an example group.

Both remove duplication across tests.

<hr />

## Built-in Matchers
