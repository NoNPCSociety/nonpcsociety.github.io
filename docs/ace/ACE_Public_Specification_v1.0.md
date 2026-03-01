# ACE (Awakening Creator Engine) NFT Program
## Public Specification v1.0
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

The sections below define the full operational and governance rules.

---

# 1. Foundational Principles

1. Transparency — All economically meaningful actions must be publicly verifiable.
2. Rule-Based Execution — Round parameters are fixed before each Round begins and cannot change mid-Round.
3. Community Sovereignty — Winners are determined by community participation within predefined rules.
4. Sustainable Capital Formation — Proceeds are systematically allocated to creators and protocol-level growth.
5. Legal Risk Containment — Intellectual property risk is mitigated through structured declarations, review, and post-mint safeguards.

---

# 2. Core Definitions

Round  
A complete ACE contest cycle (submission → finalist selection → voting → mint → sale → settlement).

T0 (Round Start Time)  
The officially published start timestamp of a Round. All eligibility thresholds are finalized at T0 and remain fixed throughout the Round.

1/1 (Single Unique NFT)  
Exactly one NFT is minted for that artwork.

OE (Open Edition)  
An NFT that may be minted by multiple buyers during a fixed time window.

Eligible Wallet  
A wallet that satisfies the Round’s holding amount and holding duration requirements.

ACE Treasury  
The designated DAO-controlled wallet receiving ACE program proceeds.

Creator Registry  
The permanent, append-only record of official ACE creators and associated on-chain references.

---

# 3. Round Structure

Each Round consists of:

1. Submission Period  
2. Finalist Determination (if required)  
3. Voting Period  
4. Minting and Sales  
5. Settlement and Reporting  

All dates and parameters must be publicly published prior to T0.

---

# 4. Eligibility Requirements (USD-Linked, Fixed Per Round)

## 4.1 USD Thresholds

Submission Eligibility  
Wallet must hold ≥ $50 equivalent of $NONPC.

Voting Eligibility  
Wallet must hold ≥ $15 equivalent of $NONPC.

## 4.2 Holding Duration

Submission  
Must meet the threshold continuously for at least 14 days.

Voting  
Must meet the threshold continuously for at least 7 days.

## 4.3 One-Wallet Rule

1 wallet → maximum 1 submission per Round  
1 wallet → maximum 1 voting action per Round  

These rules apply per Round.

---

# 5. USD Conversion Method (Fixed at T0)

## 5.1 Price Window

The USD equivalent of $NONPC is determined using:

- A 24-hour price window immediately preceding T0  
- Price samples taken at 5-minute intervals  

## 5.2 Aggregation Method

For each sample:

NONPC_USD(t) = NONPC_SOL(t) × SOL_USD(t)

The median value across all samples is used:

NONPC_USD_MEDIAN

## 5.3 Conversion Formulas

REQ_SUBMIT_NONPC = ceil(50 / NONPC_USD_MEDIAN)  
REQ_VOTE_NONPC   = ceil(15 / NONPC_USD_MEDIAN)

These values are fixed at T0 and remain unchanged for the Round.

## 5.4 Guardrails

Required amounts are clipped to:

Minimum: 0.5× previous Round requirement  
Maximum: 2.0× previous Round requirement  

## 5.5 Publication Requirement

ACE must publish:

- 24-hour dataset  
- Computed median value  
- Final required token amounts  

---

# 6. Submission Rules

## 6.1 Creator Representations and Warranties

By submitting a work, the creator represents and warrants that:

1. The submission is original or properly licensed.
2. The creator possesses all necessary rights to mint and commercialize the work.
3. The work does not infringe intellectual property, publicity, or contractual rights of any third party.
4. The submission does not contain illegal or prohibited material.
5. The creator accepts full legal responsibility for any infringement claim arising from the submission.

## 6.2 License Grant

By submitting, the creator grants No NPC Society a non-exclusive, worldwide license to:

- Display the work for contest purposes.
- Mint official ACE NFTs.
- List and sell official ACE NFTs.

Copyright ownership remains with the creator.

## 6.3 Rejection Policy

Submissions may only be rejected for:

- Intellectual property infringement risk
- Prohibited or illegal content
- Incomplete or invalid submission

ACE must publish:

- Total number of submissions
- Total rejected count
- Rejection counts categorized by reason

Individual rejection explanations are not required to be publicly disclosed.

---

# 7. Intellectual Property Risk Management

## 7.1 Good-Faith Review Standard

ACE performs a reasonable, good-faith review of submissions.  
ACE does not guarantee detection of all potential infringements.

## 7.2 Limitation of Liability

ACE acts as a platform facilitator and does not assume ownership of third-party rights.  
Legal responsibility for infringement remains with the submitting creator.

## 7.3 Post-Mint Claim Procedure

If a credible intellectual property claim is raised:

ACE reserves the right to:

- Temporarily suspend sales  
- Delist the NFT from official channels  
- Freeze further minting (if applicable)  
- Withhold pending distributions  

## 7.4 Resolution Authority

Following review, ACE may:

- Reinstate the work  
- Permanently delist the work  
- Revoke official recognition status  

Participation in ACE does not guarantee immunity from third-party legal action.

---

# 8. Finalist Determination

If submissions exceed 50:

- 50 finalists are selected via deterministic lottery.

ACE must publish:

- Total submission count  
- Finalist list  

---

# 9. Voting

Each eligible wallet may approve up to 3 works.

ACE must publish:

- Vote totals for each finalist  
- Final ranking  

---

# 10. Minting Structure

Grand Winner  
- 1 × 1/1 NFT  
- 1 × Open Edition NFT  

Runner-ups  
- 1 × 1/1 NFT each  

All NFTs belong to the verified official ACE collection.

---

# 11. Sales Rules

1/1 Auction  
- 48 hours  
- 5-minute anti-sniping extension  

Open Edition  
- 24-hour window  
- $20 equivalent pricing  
- Permanent mint closure at window end  

---

# 12. Revenue Allocation

Primary Sales  
- 50% → Creator  
- 50% → ACE Treasury  

ACE Treasury Allocation  
- 80% → Liquidity  
- 20% → DAO / Operations  

All transactions must be publicly disclosed.

---

# 13. Reporting Requirements

ACE must publish:

- Round parameters  
- Eligibility calculation data  
- Total submission count  
- Rejection category counts  
- Finalist list  
- Vote totals  
- NFT mint addresses  
- Sales data  
- Creator payouts  
- Treasury receipts  
- Liquidity transactions  

---

# 14. Creator Registry

An append-only public registry recording:

- Round ID  
- Creator wallet  
- Winner tier  
- NFT mint address  
- Revenue routing references  

---

# 15. Governance & Amendments

Core parameters in v1.0:

- 24-hour pricing window  
- 5-minute sampling  
- $50 submission threshold  
- $15 voting threshold  
- 14-day submission holding  
- 7-day voting holding  
- 0.5×–2.0× guardrail  
- $20 OE price  
- 80% LP / 20% DAO allocation  

Changes may only occur between Rounds and must be publicly announced prior to T0.

Future structural amendments should be subject to DAO approval once governance is active.

---

End of ACE Public Specification v1.0