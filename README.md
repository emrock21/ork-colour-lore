Ork Colour Lore – Solidity Practice Contract
This repository contains a simple and completely safe Solidity smart contract created for learning purposes. As a Warhammer 40,000 fan, I wanted to practice interacting with Solidity and Remix while also showing a fun piece of Ork culture that many new fans don’t know: Orks believe their colours have real effects because they think they do.

This contract does not handle funds, does not interact with wallets, and does not modify blockchain state. It is a pure, read‑only text contract that returns the Ork meaning of several colours.

About the Contract
The contract OrkColourLore.sol provides one function:

getColourMeaning(string colour)  
Returns a short lore description of what that colour represents to Orks.

Included colours:

Red — “Red wunz go fasta!”

Blue — Lucky colour.

Yellow — More dakka and explosions.

Black — Brutal and tough.

Purple — Sneaky (because no one has ever seen a purple Ork).

If a colour is not recognized, the contract returns a default message.

Safety
This contract is intentionally designed to be 100% safe:

No payable functions

No ability to receive or send ETH

No external calls

No state changes

No owner or permissions

No interaction with your wallet beyond signing the deployment

It is purely a text‑based demonstration for learning Solidity.

How to Use
Open Remix: https://remix.ethereum.org

Create a new file under contracts/ named OrkColourLore.sol.

Paste the contract code.

Compile using Solidity 0.8.31.

Deploy using Injected Provider – MetaMask or the Remix VM.

Call getColourMeaning("Red"), "Blue", "Yellow", "Black", or "Purple".

Purpose of This Repository
This project exists for two reasons:

Learning Solidity — practicing contract structure, compilation, and deployment.

Celebrating Warhammer 40K lore — especially the idea that Orks’ beliefs shape reality, including the power of colours.

It is not intended for production use, financial interactions, or token logic.

License
This project is released under the MIT License.
