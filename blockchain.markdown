% BitCoin and the Blockchain
% Doug Twitchell
% May 16, 2016

## Doug Twitchell

-   PhD, University of Arizona
-   Illinois State University, 11 years
-   Boise State University, since August
-   @dtwitched
-   This presentation: https://twitched.github.io/blockchain_presentation/

-----------------

![](img/WannaCrypt.jpg){#wannacryptimg .wannacryptimg style="float:left;width=700px;padding:5px;border:none"}

<a class="twitter-timeline" data-width="300" data-height="650" href="https://twitter.com/actual_ransom" style="float:right">Tweets by actual_ransom</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

-----------------

<blockquote class="twitter-tweet tw-align-center" data-lang="en" style="text-align:center"><p lang="en" dir="ltr">Pre-ransomware advice:<br>- Backup<br>- Patch<br>- Turn off unneeded features<br><br>Post-ransomware advice:<br>- Backup<br>- Patch<br>- Turn off unneeded features</p>&mdash; matt blaze (@mattblaze) <a href="https://twitter.com/mattblaze/status/863468401708216321">May 13, 2017</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

-----------------

## Today

-   BitCoin and its building blocks
-   Ethereum and "smart" contracts
-   Private blockchains

-----------------

## ₿itCoin

|                   | BitCoin | Cash | Payment Card |
|:------------------|:-------:|:----:|:------------:|
| Use for Purchases |    X    |  X   |      X       |
| Stores Value      |    X    |  X   |              |
| Fiat Currency     |    X    |  X   |              |
| Anonymous         | pseudo  |  X   |              |
| Central Ledger    |    X    |      |      X       |
| Central Authority |         |  X   |      X       |
| Reversible        |         |      |      X       |

-----------------

## BitCoin Components

-   Blockchain
    -   Cryptographic Hash functions
    -   Digital signatures
    -   Transaction information
-   Mining
-   Scripts
-   Rules

-----------------

## The Blockchain

![](img/Blockchain.svg)

-----------------

## Big Numbers

<div style="font-size:28pt">
$$2^{128} \\ = 340,282,366,920,938,463,463,374,607,431,768,211,456 \\ \approx 3 \times 10^{38}$$

Odds of winning Powerball lottery four times: 1 in $$ \\ 7,290,021,363,225,027,714,833,921,447,179,536 \\ \approx 7 \times 10^{33}$$
</div>

-----------------

## Cryptographic Hash Functions

<div style="font-size:16pt">
H(Doug) → aa1cda9fb50938bfd033eb7b79c4fc0b3ec87a18433bfa02c8d5a68f2c3157e2

H(Hawley Troxell) → 469b53d0d17fdc622bded61a6e4a5720bd25a290890ea01d7687167ec6a2f3c3

H(We the people of the United...) → 63a43b7fc439f05fbf2b0d25d40b860b426a6abeb087ead2b2c4cae0b95c839d

H(Star Wars as a compressed video) → 31c4ba98d4a14a71b6da13830f1c3c508cbf93c89a348d382f76070a23588d6b

H(Bob should pay Alice 4 BitCoins) → fef45d0c7e08bfafa7551e9ec27ee06c9fba6ef86665e1a8f77eeb23b495e1e9

H(Bob should pay Alice 5 BitCoins) → 3ef34acc394f1ac5d5671c339ffe65b5aa976f88862fe4e87c24b4e3f237cce0   

SHA256
</div>

-----------------

## Digital Signatures

![](img/BitcoinDigitalSignature.svg)

-----------------

## The Blockchain

![](img/Blockchain.svg){width="900"}

-----------------

## Decentralization and Mining

![](img/Mining.svg)

##Mining

-   Proof of Work: Who does the most work?
-   Proof of Stake: Who's willing to bet the most?
-   Proof of Authority: Who's been designated?

##Scripts

All transactions include a script

Payments:
``` {.nohighlight }  
  OP_DUP
OP_HASH160
69e02e18...
OP_EQUALVERIFY
OP_CHECKSIG
```
BitCoin scripts are limited in what they can do (no loops)

##Scripts

BitCoin Scripts can be used to:

-   Destroy BitCoins (Proof of Burn)
-   Insert arbitrary data (also Proof of Burn)
-   Pay to a script, which is run by recipient
-   Escrow Payments (transactions require three signatures)
-   Efficient Micropayments (escrow adding up small payments)

##Rules

To have a valid currency, we want to:

-   Regularly and efficiently validate transaction blocks
-   Incentivize miners to do validations
-   Increase the supply of currency over time

##Rules

To have a valid currency, we want to:

<div style="font-size:28pt">
-   Regularly and efficiently validate transaction blocks
    -   Bitcoin: Every 10 minutes
    -   Ethereum: Every minute
-   Incentivize miners to do validations
    -   BitCoin: 25 BitCoins per block mined, transaction fees
    -   Ethereum: 5 Ether per block mined, transaction & Gas fees
-   Increase the supply of currency over time
    -   BitCoin: 25 BitCoins per block mined, halved every 210k blocks. Total: 21m
    -   Ethereum: 60m start, 15m per year mined, no cap, but mining will change
</div>

##Ethereum Scripts

Difference between Ethereum and BitCoin: **Scripts**

Ethereum scripts can do anything a computer can do

Require purchasing "Gas"

##Ethereum Scripts

Ethereum Scripts can be used to:

-   Create complicated smart contracts
-   Create Distributed Autonomous Organizations (DAOs)
-   Do whatever as long as you pay for it (loops)

```
pragma solidity ^0.4.2;
// Proof of Existence contract, version 1
contract ProofOfExistence1 {
  bytes32 public proof;
  // calculate and store the proof for a document
  function notarize(string document) {
    proof = calculateProof(document);
  }
// helper function to get a document's sha256
  function calculateProof(string document) constant returns (bytes32) {
    return sha256(document);
  }
}
```

## The DAO

![](img/dao.png)

## Blockchain thoughts: The Good

-   BitCoin is currently a viable currency ($30B)
![](img/market-capitalization.svg){width=300 height=200 style="float:right"}
-   Cryptocurrencies work well in the digital world
    *   Micropayments
    *   Low transaction fees
    *   Guaranteed escrow
-   Smart contracts
-   Innovation: LiteCoin, ZeroCoin, Monero, private blockchains, etc.

## Blockchain: The Good

![](img/wsj1.png){height=150}
![](img/wsj2.png){height=150}
![](img/wsj3.png){height=150}

## Blockchain: The Bad

![](img/blockchain-oil.jpg){height=200}
![](img/dilbert-chain.jpg)

## Blockchain: The Bad

![](img/hellscanyon.jpg)

## Blockchain: The Ugly

![](img/WannaCrypt.jpg)

## Questions?
