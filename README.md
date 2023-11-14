# sui-two
A Sui blockchain app written in Move, as part of the www.risein.com Sui Move bootcamp project

# Explainer
It's a smart contract that mimics a simple real-world Library, so basically it manages a collection of books in a library. 

The contract defines a `Book` with a title, author, and a description, and a `Library` that is a collection of `Books`. It provides functions to create a new book, update the description of a book, and get the information of a book. It also emits events when a book is created and when a book's description is updated.

# Setup
It can be setup by following the steps here:
https://docs.sui.io/devnet/build/install

# Test
In a terminal, run `sui move test`

# Devnet address
Owner: Account Address ( 0xe6f200db575d1279a56901d976db623ca54962515091ddaa82e66ce95a8bfcf4 )