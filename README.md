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

↳ sui client publish --gas-budget 2000000000 .     
UPDATING GIT DEPENDENCY https://github.com/MystenLabs/sui.git
INCLUDING DEPENDENCY Sui
INCLUDING DEPENDENCY MoveStdlib
BUILDING library
Successfully verified dependencies on-chain against source.
----- Transaction Digest ----
8ps7BtLDtbrF7ehSRHtjVMakHo3WaPQEgP4rPGQ8hMQu
╭─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Data                                                                                                                                            │
├─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Sender: 0xe6f200db575d1279a56901d976db623ca54962515091ddaa82e66ce95a8bfcf4                                                                                  │
│ Gas Owner: 0xe6f200db575d1279a56901d976db623ca54962515091ddaa82e66ce95a8bfcf4                                                                               │
│ Gas Budget: 2000000000                                                                                                                                      │
│ Gas Price: 1000                                                                                                                                             │
│ Gas Payment:                                                                                                                                                │
│  ┌──                                                                                                                                                        │
│  │ ID: 0xc5cf975e35d4e102c7428e8fc11772613aa9c096456be79d8e61f40a31c38c03                                                                                   │
│  │ Version: 4                                                                                                                                               │
│  │ Digest: 5EoQRZzCXMuAmZuqWhrcZhNgyZhdBhwdgX1ZdgRk4jom                                                                                                     │
│  └──                                                                                                                                                        │
│                                                                                                                                                             │
│ Transaction Kind : Programmable                                                                                                                             │
│ Inputs: [Pure(SuiPureValue { value_type: Some(Address), value: "0xe6f200db575d1279a56901d976db623ca54962515091ddaa82e66ce95a8bfcf4" })]                     │
│ Commands: [                                                                                                                                                 │
│   Publish(<modules>,0x0000000000000000000000000000000000000000000000000000000000000001,0x0000000000000000000000000000000000000000000000000000000000000002), │
│   TransferObjects([Result(0)],Input(0)),                                                                                                                    │
│ ]                                                                                                                                                           │
│                                                                                                                                                             │
│                                                                                                                                                             │
│ Signatures:                                                                                                                                                 │
│    0YHTG8TwP38EPHaVVnUydw5dnbl83LCGOvSf1nZTdF0ZwDSLqGHcmhLzLGVDE5tcQVPM5i5GLprq3XQp1p5lCw==                                                                 │
│                                                                                                                                                             │
╰─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Effects                                                                               │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Digest: 8ps7BtLDtbrF7ehSRHtjVMakHo3WaPQEgP4rPGQ8hMQu                                              │
│ Status: Success                                                                                   │
│ Executed Epoch: 0                                                                                 │
│                                                                                                   │
│ Created Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x56149e950ba2c6b15a436e860e1c21021038ca3f02335072a9d2eee8956a0ccf                         │
│  │ Owner: Shared                                                                                  │
│  │ Version: 5                                                                                     │
│  │ Digest: BU5ZkiNbCSgx1nfyRHyYuav5cTTabRmwp3wrYjBjoLp4                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xa422da228dcba02fbb7ac7cac8789b4ef51dd7c70832eaf1f6c22107ffb54193                         │
│  │ Owner: Account Address ( 0xe6f200db575d1279a56901d976db623ca54962515091ddaa82e66ce95a8bfcf4 )  │
│  │ Version: 5                                                                                     │
│  │ Digest: BwL26WUDd7iLZhYjqaKhoL8KKkRR8nQWGk342AwMknhR                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xb5f2c1f4b05733b5e550cc4c9f595abf834ba2e2f10f9e929366fa0820d31705                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1                                                                                     │
│  │ Digest: Adwt43EREWYDNMrBETru4ZCECW2CFb6jneqe6EubkNhu                                           │
│  └──                                                                                              │
│                                                                                                   │
│ Mutated Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0xc5cf975e35d4e102c7428e8fc11772613aa9c096456be79d8e61f40a31c38c03                         │
│  │ Owner: Account Address ( 0xe6f200db575d1279a56901d976db623ca54962515091ddaa82e66ce95a8bfcf4 )  │
│  │ Version: 5                                                                                     │
│  │ Digest: HaygGsYqSwoWMVUDm7dRHnbpSgmp9JRFTGFRGkhQvSFa                                           │
│  └──                                                                                              │
│                                                                                                   │
│ Gas Object:                                                                                       │
│  ┌──                                                                                              │
│  │ ID: 0xc5cf975e35d4e102c7428e8fc11772613aa9c096456be79d8e61f40a31c38c03                         │
│  │ Owner: Account Address ( 0xe6f200db575d1279a56901d976db623ca54962515091ddaa82e66ce95a8bfcf4 )  │
│  │ Version: 5                                                                                     │
│  │ Digest: HaygGsYqSwoWMVUDm7dRHnbpSgmp9JRFTGFRGkhQvSFa                                           │
│  └──                                                                                              │
│                                                                                                   │
│ Gas Cost Summary:                                                                                 │
│    Storage Cost: 17335600                                                                         │
│    Computation Cost: 1000000                                                                      │
│    Storage Rebate: 978120                                                                         │
│    Non-refundable Storage Fee: 9880                                                               │
│                                                                                                   │
│ Transaction Dependencies:                                                                         │
│    4TTsufwWWaVwgmU1QrFDz3q5mviQUf6hyaSdrrVyLTbv                                                   │
│    HUKvecodFjttC4143fQ7LKpCNEwswvq8QyLJHiN8bJBg                                                   │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
----- Events ----
Array []
----- Object changes ----

Created Objects: 
 ┌──
 │ ObjectID: 0x56149e950ba2c6b15a436e860e1c21021038ca3f02335072a9d2eee8956a0ccf
 │ Sender: 0xe6f200db575d1279a56901d976db623ca54962515091ddaa82e66ce95a8bfcf4 
 │ Owner: Shared
 │ ObjectType: 0xb5f2c1f4b05733b5e550cc4c9f595abf834ba2e2f10f9e929366fa0820d31705::books::Library 
 │ Version: 5
 │ Digest: BU5ZkiNbCSgx1nfyRHyYuav5cTTabRmwp3wrYjBjoLp4
 └──
 ┌──
 │ ObjectID: 0xa422da228dcba02fbb7ac7cac8789b4ef51dd7c70832eaf1f6c22107ffb54193
 │ Sender: 0xe6f200db575d1279a56901d976db623ca54962515091ddaa82e66ce95a8bfcf4 
 │ Owner: Account Address ( 0xe6f200db575d1279a56901d976db623ca54962515091ddaa82e66ce95a8bfcf4 )
 │ ObjectType: 0x2::package::UpgradeCap 
 │ Version: 5
 │ Digest: BwL26WUDd7iLZhYjqaKhoL8KKkRR8nQWGk342AwMknhR
 └──

Mutated Objects: 
 ┌──
 │ ObjectID: 0xc5cf975e35d4e102c7428e8fc11772613aa9c096456be79d8e61f40a31c38c03
 │ Sender: 0xe6f200db575d1279a56901d976db623ca54962515091ddaa82e66ce95a8bfcf4 
 │ Owner: Account Address ( 0xe6f200db575d1279a56901d976db623ca54962515091ddaa82e66ce95a8bfcf4 )
 │ ObjectType: 0x2::coin::Coin<0x2::sui::SUI> 
 │ Version: 5
 │ Digest: HaygGsYqSwoWMVUDm7dRHnbpSgmp9JRFTGFRGkhQvSFa
 └──

Published Objects: 
 ┌──
 │ PackageID: 0xb5f2c1f4b05733b5e550cc4c9f595abf834ba2e2f10f9e929366fa0820d31705 
 │ Version: 1 
 │ Digest: Adwt43EREWYDNMrBETru4ZCECW2CFb6jneqe6EubkNhu
 | Modules: books
 └──
----- Balance changes ----
 ┌──
 │ Owner: Account Address ( 0xe6f200db575d1279a56901d976db623ca54962515091ddaa82e66ce95a8bfcf4 ) 
 │ CoinType: 0x2::sui::SUI 
 │ Amount: -17357480
 └──