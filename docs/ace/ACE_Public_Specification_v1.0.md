# ACE (Awakening Creator Engine)
## Public Specification v1.0
Project: No NPC Society ($NONPC)  
Chain: Solana  

---

# 1. Executive Overview

ACE (Awakening Creator Engine) is the internal capital generation mechanism of No NPC Society.

Its objective is to establish a sustainable financial structure that does not depend solely on external capital inflows or continuous new investor participation.

Instead of relying exclusively on speculative demand, ACE introduces a recurring, rule-based NFT program that:

- Generates internal capital  
- Rewards creators  
- Strengthens liquidity  
- Expands the DAO treasury  

ACE is designed to be:

- Transparent  
- Deterministic  
- Publicly verifiable  
- Structurally non-discretionary  

The ultimate purpose is sustained capital formation through an internal economic engine.

---

# 2. Structural Design

## 2.1 Program Format

ACE operates as a recurring NFT contest mechanism.

Each round includes:

1. Submission phase  
2. Qualification (if necessary)  
3. Voting phase  
4. Winner selection  
5. NFT issuance  
6. Treasury allocation and liquidity injection  

---

## 2.2 Participation Eligibility

### Submission Requirement

To submit an entry, a participant must spend at least:

**USD $50 equivalent in SOL**

The USD value is determined using the defined Price Determination Mechanism (Section 4).

---

### Voting Requirement

To participate in voting, a wallet must spend at least:

**USD $15 equivalent in SOL**

Each eligible wallet may cast:

- Maximum 3 approvals  
- 1 approval = 1 vote  
- 1 wallet = 1 voting action  

All vote totals will be publicly disclosed.

---

# 3. Revenue Distribution

## 3.1 Primary Split

NFT sales revenue is allocated as follows:

- 50% → Winning Creator  
- 50% → ACE Treasury  

---

## 3.2 Treasury Allocation

Treasury funds are further allocated:

- 80% → NONPC/SOL liquidity addition  
- 20% → DAO / Operational allocation  

---

## 3.3 Liquidity Commitment

- 80% of Treasury funds must be added to liquidity  
- Liquidity must be added within 7 days of round completion  
- All transactions will be publicly disclosed  

---

# 4. Price Determination Mechanism

To eliminate price manipulation and timing exploitation, ACE uses a deterministic USD conversion model.

## 4.1 Observation Window

- 24-hour observation window  
- 5-minute interval price sampling  
- Median price is calculated  

The calculated value is defined as:

**T0 Reference Price**

---

## 4.2 Guardrail

To prevent extreme deviation:

- Minimum bound: 0.5× previous round reference  
- Maximum bound: 2.0× previous round reference  

If the median exceeds these bounds, it is clamped within the guardrail range.

---

## 4.3 T0 Fixation

Once determined:

- T0 is fixed  
- All USD calculations for that round use T0  
- No retroactive adjustment  

---

# 5. Oversubscription Selection (If >50 Entries)

If submissions exceed 50 entries, a deterministic random selection process is applied.

## 5.1 Randomness Source

- A publicly announced future Solana block  
- The corresponding blockhash  

Seed formula:

```
seed = SHA256(RoundID + ":" + blockhash)
```

Selection is:

- Deterministic  
- Publicly reproducible  
- Fully verifiable  

No manual intervention is permitted.

---

# 6. Voting Transparency

- One wallet = one voting action  
- Maximum 3 approvals  
- No vote weighting  
- No hidden scoring  

After finalization:

- All finalist vote counts are publicly disclosed  
- No discretionary override allowed  

---

# 7. Open Edition (OE)

After winner determination:

- An Open Edition NFT may be offered  
- Price: USD $20 equivalent  
- Uses the same T0 Reference Price  
- Price remains fixed for 24 hours  

No dynamic repricing is permitted.

---

# 8. Intellectual Property Risk Management

ACE operates under the following framework:

- Creators provide representation and warranty of originality  
- Good-faith review is conducted  
- Distribution hold applies only to the specific disputed work  
- No systemic halt of the entire round  

---

# 9. Non-Discretionary Principles

ACE prohibits:

- Manual winner override  
- Retroactive pricing changes  
- Selective liquidity injection  
- Hidden treasury allocation  
- Undisclosed wallet privileges  

All structural rules are predefined and public.

---

# 10. Transparency Commitments

The following will be publicly disclosed:

- T0 reference calculation methodology  
- Median sampling logic  
- Guardrail application  
- Random selection proof  
- Final vote totals  
- Liquidity injection transactions  

This Public Specification serves as the authoritative structural document.

---

# 11. Structural Objective

ACE exists to:

- Create recurring internal capital  
- Strengthen liquidity depth  
- Build a sustainable DAO treasury  
- Reduce dependency on new speculative inflows  

It is designed as an internal engine for long-term capital formation.

---

**End of Document**

