Design Patterns in Ruby: Adapter
A clear example of the Adapter pattern
The intent
According to the GoF, the intent of the Adapter pattern is to:
“Convert the interface of a class into another interface clients expect. Adapter lets classes work together that couldn’t otherwise because of incompatible interfaces.”
The example
The Adapter pattern is specifically designed to deal with one system which has to interface with an already existing system in which a common interface between the two systems is desired.
In accordance with the specifications of the Adapter pattern, we define an adaptee, an adapter, and a target.
The adaptee (Hammer) represents an existing interface, the adapter (HammerAdapter) is responsible for converting the old interface into the new, desired interface, and the target (Tool) is the domain-specific interface that we wish to use in our system.

Some Tidbits
ActiveRecord and the Adapter pattern
The classic example generally given in the Ruby community is that of the ActiveRecord library in Rails. It uses the Adapter pattern to place different databases behind the same, common interface.
Unforeseen interfaces
In addition to adapting existing interfaces into new ones, the Adapter pattern is often used to create a reusable class that will be flexible enough to cooperate with future classes which won’t necessarily share a common interface.
Going deeper
The Adapter pattern is one of many valuable design patterns. To learn more, check out the seminal work on Design Patterns: The GOF Design Pattern book.
a