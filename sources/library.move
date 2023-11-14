module library::book {
  use std::option::{Self, Option};
  use std::string::{Self, String};
  
  use sui::transfer;
  use sui::object::{Self, UID, ID};
  use sui::tx_context::{Self, TxContext};
  use sui::object_table::{Self, ObjectTable};
  use sui::coin::{Self, Coin};
  use sui::sui::SUI;
  use sui::event;

  const NOT_THE_OWNER: u64 = 0;
  const INSUFFICIENT_FUNDS: u64 = 1;
  const MIN_BOOK_COST: u64 = 1;

  struct Book has key, store {
    id: UID,
    title: String,
    author: String,
    description: Option<String>,
  }

  struct Library has key {
    id: UID,
    owner: address,
    counter: u64,
    books: ObjectTable<u64, Book>
  }

  struct BookCreated has copy, drop {
    id: ID,
    title: String,
    author: String,
  }

  struct DescriptionUpdate has copy, drop {
    title: String,
    author: String,
    new_description: String,
  }

  fun init(ctx: &mut TxContext) {
    transfer::share_object(
      Library {
        id: object::new(ctx),
        owner: tx_context::sender(ctx),
        counter: 0,
        books: object_table::new(ctx),
      }
    )
  }

  public entry fun create_book(
    title: vector<u8>,
    author: vector<u8>,
    payment: Coin<SUI>,
    library: &mut Library,
    ctx: &mut TxContext
  ) {
      let value= coin::value(&payment);
      assert!(value == MIN_BOOK_COST, INSUFFICIENT_FUNDS);
      transfer::public_transfer(payment, library.owner);

      library.counter = library.counter + 1;

      let id = object::new(ctx);

      event::emit(BookCreated {
        id: object::uid_to_inner(&id),
        title: string::utf8(title),
        author: string::utf8(author),
      });

      let book = Book{
        id: id,
        title: string::utf8(title),
        author: string::utf8(author),
        description: option::none(),
      };

      object_table::add(&mut library.books, library.counter, book);
    }

  public entry fun update_description(library: &mut Library, new_description: vector<u8>, id: u64, ctx: &mut TxContext) {
    let user_book = object_table::borrow_mut(&mut library.books, id);
    assert!(tx_context::sender(ctx) == library.owner, NOT_THE_OWNER);

    let old_value = option::swap_or_fill(&mut user_book.description, string::utf8(new_description));

    event::emit(
      DescriptionUpdate {
        title: user_book.title,
        author: user_book.author,
        new_description: string::utf8(new_description),
      }
    );

    _ = old_value;
  }

  public fun get_book_info(library: &Library, id: u64): (
    String,
    String,
    Option<String>,
  ) {
    let book = object_table::borrow(&library.books, id);
    (
      book.title,
      book.author,
      book.description,
    )
  }

  #[test_only]
  public fun init_for_testing(ctx: &mut TxContext) {
    init(ctx);
  }
}