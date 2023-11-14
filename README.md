# sui-two
A Sui blockchain app written in Move, as part of the www.risein.com Sui Move bootcamp project

# Explainer
It's a smart contract that mimics a simple real-world Library, so basically it manages a collection of books in a library. 

The contract defines a `Book` with a title, author, and a description, and a `Library` that is a collection of `Books`. It provides functions to create a new book, update the description of a book, and get the information of a book. It also emits events when a book is created and when a book's description is updated.

# Setup
It can be setup by following the steps here:
https://docs.sui.io/devnet/build/install

# Devnet address
I was unable to publish the project (gas fee insufficient error) so I do not have the address

# Test
In a terminal, run `sui move test`