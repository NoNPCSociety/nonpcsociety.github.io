# ACE (Awakening Creator Engine) NFT Program
## Public Specification v1.1
Project: No NPC Society ($NONPC)

---

# Executive Overview

ACE (Awakening Creator Engine) is a structural internal revenue mechanism of No NPC Society.

Its purpose is to build a strong and resilient financial foundation that does not depend solely on external capital inflows or new investor participation.

Instead of relying exclusively on speculative demand, ACE introduces a recurring, community-driven NFT program that generates internal capital and systematically routes that capital into creator rewards and protocol-level growth.

ACE is:

- A recurring NFT contest
- Open to public creator participation (primarily community members)
- Fully rule-based and transparently executed
- Economically structured to reinforce liquidity and DAO treasury growth

Under ACE:

- Creators submit original works
- Community voting determines winners
- Winning works are minted as official NFTs
- Primary sale proceeds are split:
  - 50% → Creator
  - 50% → ACE Treasury
- Treasury proceeds are allocated:
  - 80% → Liquidity (NONPC/SOL)
  - 20% → DAO / Operations

Through this structure, ACE transforms creative participation into a sustainable internal capital engine.

---

# 1. Foundational Principles

1. Transparency — All economically meaningful actions must be publicly verifiable.
2. Rule-Based Execution — Round parameters are fixed before each Round begins and cannot change mid-Round.
3. Community Sovereignty — Winners are determined by community participation within predefined rules.
4. Sustainable Capital Formation — Proceeds are systematically allocated to creators and protocol-level growth.
5. Legal Risk Containment — Intellectual property risk is mitigated through structured declarations and safeguards.

---

# 2. Core Definitions

Round  
A complete ACE contest cycle.

T0  
The officially published Round start timestamp (UTC).

Primary Pool  
The designated NONPC/SOL liquidity pool used for price determination.

---

# 3. Round Structure

Each Round consists of:

1. Submission  
2. Finalist Selection  
3. Voting  
4. Minting  
5. Settlement & Reporting  

All parameters must be published prior to T0.

---

# 4. Eligibility Requirements (USD-Linked)

Submission: ≥ $50 equivalent  
Voting: ≥ $15 equivalent  

Holding Duration:

- Submission: 14 days continuous
- Voting: 7 days continuous

One wallet → maximum 1 submission  
One wallet → maximum 1 vote action  

---

# 5. USD Conversion Method

## 5.1 Price Window

- 24 hours preceding T0
- 5-minute interval sampling

## 5.2 Primary Market Definition

NONPC_SOL(t) MUST be derived from the designated Primary NONPC/SOL liquidity pool.

ACE MUST publish:

- DEX name
- Pool address

If changed, it MUST be announced before T0.

## 5.3 Aggregation

NONPC_USD(t) = NONPC_SOL(t) × SOL_USD(t)

Median across samples = NONPC_USD_MEDIAN

## 5.4 Conversion

REQ_SUBMIT = ceil(50 / NONPC_USD_MEDIAN)  
REQ_VOTE   = ceil(15 / NONPC_USD_MEDIAN)

Values are fixed at T0.

## 5.5 Guardrails

0.5×–2.0× previous Round requirement.

## 5.6 Publication Requirements

ACE MUST publish:

- Full 24-hour dataset
- NONPC_USD_MEDIAN
- Required token amounts

Dataset MUST include:

- Timestamp (UTC)
- NONPC_SOL(t)
- SOL_USD(t)
- NONPC_USD(t)
- NONPC_USD_MEDIAN

---

# 6. Submission Rules

Creators warrant originality and legal compliance.

ACE MUST publish:

- Total submissions
- Total rejected
- Rejection categories

---

# 7. Intellectual Property Risk Management

Good-faith review standard applies.

Distribution withholding MUST be limited strictly to proceeds attributable to disputed works.

---

# 8. Finalist Determination

If submissions exceed 50:

## 8.1 Deterministic Lottery

- A specific blockchain block slot MUST be pre-announced.
- The blockhash of that slot MUST be used as entropy.

Seed formula:

seed = SHA256(RoundID + ":" + blockhash)

- Submissions are deterministically ordered using the seed.
- First 50 become finalists.

## 8.2 Publication

ACE MUST publish:

- Block slot number
- Blockhash
- Seed value
- Ordered submission list
- Final finalist list

### Finalist List MUST include:

- Submission ID
- Artwork reference hash
- Creator wallet address

---

# 9. Voting

Each eligible wallet may approve up to 3 works.

Each approval counts as one vote.

ACE MUST publish:

- Vote totals for each finalist
- Final ranking

---

# 10. Minting Structure

Grand Winner:
- 1 × 1/1 NFT
- 1 × Open Edition NFT

Runner-ups:
- 1 × 1/1 NFT each

All NFTs must belong to the verified official ACE collection.

---

# 11. Sales Rules

## 11.1 1/1 Auction

- 48 hours
- 5-minute anti-sniping extension

## 11.2 Open Edition

- 24-hour window
- $20 equivalent pricing

### OE Price Conversion Rule

USD → SOL conversion MUST use the same 24-hour SOL/USD median calculated at T0.

Minting permanently closes at window end.

---

# 12. Revenue Allocation

Primary Sales:
- 50% → Creator
- 50% → ACE Treasury

Treasury Allocation:
- 80% → Liquidity
- 20% → DAO / Operations

Liquidity addition MUST occur within 7 days of settlement (UTC).

All transactions MUST be publicly disclosed.

---

# 13. Reporting Requirements

ACE MUST publish:

- Round parameters
- Eligibility dataset
- Total submission count
- Rejection categories
- Finalist list
- Vote totals
- NFT mint addresses
- Sales data
- Creator payout transactions
- Treasury receipt transactions
- Liquidity transaction references

---

# 14. Creator Registry

Append-only public registry including:

- Round ID
- Creator wallet
- Winner tier
- Mint address
- Revenue routing references

---

# 15. Governance & Amendments

Core parameters fixed in v1.1.

Changes may occur only between Rounds and must be publicly announced prior to T0.

Future structural amendments require DAO approval once governance is active.

---

End of ACE Public Specification v1.1
