#[test_only]
module library::library_tests {
  use library::books::{Self, Library, Book};
  use sui::test_scenario;
  use sui::coin::{Self, Coin};

  #[test]
  fun test_create() {
    let owner = @0xA;
    let user1 = @0xB;
    let user2 = @0xC;
    let payment: sui::coin::Coin<sui::sui::SUI> = sui::coin(100);

    let scenario_val = test_scenario::begin(owner);
    let scenario = &mut scenario_val;

    test_scenario::next_tx(scenario, owner);
    {
      books::init_for_testing(test_scenario::ctx(scenario));
    };

    test_scenario::next_tx(scenario, owner);
    {
      let library = test_scenario::take_from_sender<Library>(scenario);
      books::create_book(b"Sui For Dummies", b"Richard Move", payment, &mut library, test_scenario::ctx(scenario));
      assert!(!test_scenario::has_most_recent_for_sender<Library>(scenario), 0);

      test_scenario::return_to_sender(scenario, library);
    };

    test_scenario::next_tx(scenario, user2);
    {
      assert!(test_scenario::has_most_recent_for_sender<Library>(scenario), 0);
    };

    test_scenario::end(scenario_val);
  }
}



