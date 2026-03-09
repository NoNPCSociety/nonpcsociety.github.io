# $NONPC Awakening Airdrop Quest

## A 6-Month Liquidity-Preserving Incentive Architecture

**Project:** No NPC Society  
**Token:** $NONPC (Solana SPL)  
**Campaign Duration:** 6 Months  
**Structure:** 3 Seasons × 2 Months

---

## 1. Executive Overview

The $NONPC Awakening Airdrop Quest is a six-month incentive campaign designed to expand participation, identify serious early contributors, and convert participants into actual holders without damaging on-chain liquidity.

Unlike conventional inflationary airdrop structures, this campaign uses a bounded reward model tied to effective liquidity, automated verification, staged participation, and delayed token conversion.

The objective is not rapid distribution.  
The objective is durable holder formation.

---

## 2. Core Design Principles

### 2.1 Liquidity Preservation Rule

Token rewards are capped by effective liquidity.

- **Monthly reward cap:** 1% of Effective Liquidity
- **Season cap (2 months):** 2% of Effective Liquidity

Reference example:

- Effective Liquidity: **$24,000**
- Monthly Cap: **$240 equivalent in $NONPC**
- Season Cap: **$480 equivalent in $NONPC**

This rule is intended to keep sell-pressure risk structurally bounded even under adverse behavior.

### 2.2 Non-Token-First Incentive Structure

Roughly 95% of day-to-day incentives are non-token based:

- Awakening Points (AP)
- OAT badges
- Recognition / status
- NFT participation rights

Token conversion occurs only at Season conclusion.

This reduces short-term extraction pressure and discourages mercenary participation.

### 2.3 Filter-and-Funnel Architecture

Season 1 uses a broad-entry / narrow-exit structure:

- **Stage 1:** Open entry, low-friction participation
- **Gateway:** Anti-Sybil filter using Web3 Score or Passport
- **Holder Check:** Week 4 and Week 8 on-chain verification windows
- **Surge Window:** Optional holder bonus windows
- **Final distribution:** Two-tier reward model (Open Pool / Holder Pool)

### 2.4 Two-Tier Reward Pool

At Season conclusion, the token reward budget is split into two pools.

#### Open Pool  
**20% of base Season budget**

Eligible wallets are those that satisfy the **common requirements**:

- Solana wallet connected on Galxe
- Gateway condition satisfied

Distribution is AP-proportional.

Failure to pass Holder Check does **not** remove Open Pool eligibility.

Tier 3 multiplier does **not** affect Open Pool distribution.

#### Holder Pool  
**80% of base Season budget + full Season 1 additional bonus**

A wallet is eligible only if it satisfies **all** of the following:

- Solana wallet connected
- Gateway condition satisfied
- Week 4 Holder Check passed
- Week 8 Holder Check passed

Week 8-only passage is not sufficient.

Distribution is AP-proportional, except that Tier 3 wallets receive an effective AP multiplier of **1.3x** for Holder Pool calculation only.

### 2.5 Individual Wallet Cap

The final distribution to any single wallet is capped at:

> **20% of total Season distribution**  
> `Cap_i = (T_open + T_holder) × 0.20`

The cap is applied **after** Open Pool and Holder Pool amounts are calculated and summed.

Any undistributed remainder created by the 20% cap or by decimal truncation is **not redistributed during Season 1**.

Undistributed $NONPC is sent to the DAO Treasury wallet.  
No burn is applied.

### 2.6 Season 1 Additional Bonus

Season 1 includes an additional holder bonus:

> **$500 + min($500, Eligible Holder Count × $5)**

- Minimum: **$500**
- Maximum: **$1,000**
- Paid in **$NONPC**
- Added in full to the **Holder Pool**

“Eligible Holder Count” means wallets that passed **both** Week 4 and Week 8 Holder Checks.

### 2.7 Incentive Design Philosophy

The campaign does not force purchases.

Instead, it creates a large expected-value gap between Open Pool and Holder Pool so that participants rationally conclude that holding is more advantageous than merely farming tasks.

---

## 3. Season 1 Structure — Awakening

### 3.1 Objective

Season 1 is designed to achieve the following:

- Expand the $NONPC holder base
- Select serious early participants
- Test distribution under liquidity-preserving constraints
- Validate long-term holder incentive architecture

Season 1 is not merely a promotional campaign.  
It is a holder-formation and participant-selection system.

### 3.2 Campaign Duration

- **Total duration:** 2 months

Important checkpoints:

- **Week 4:** Midpoint Holder Check + Genesis determination
- **Week 8:** Final Holder Check + reward finalization

### 3.3 Time Standard (UTC Fixed)

All Season 1 judgments, price calculations, and 72-hour publication windows use **UTC**.

Let `T0` be the UTC launch time of the Stage 1 Quest on Galxe.

The following times are fixed:

- **End of Week 3:** `T0 + 21 days`, UTC 00:00
- **Start of Week 4:** `T0 + 28 days`, UTC 00:00
- **End of Week 7:** `T0 + 49 days`, UTC 00:00
- **Start of Week 8:** `T0 + 56 days`, UTC 00:00

“24-hour average price at the end of Week 3” means the average price during the 24-hour period immediately preceding `T0 + 21 days`, UTC 00:00.

Each limited-time window remains valid until exactly 72 hours after its UTC opening time.

### 3.4 Stage 1 — Open Entry Tasks

Season 1 defines a basic participation bundle as **Stage 1**.

Typical Stage 1 tasks include:

- Follow the official X account
- Like a designated post
- Quote repost a designated post
- Join Discord
- Pass Quiz

Participants earn AP through Stage 1 tasks.

Referral is **not** part of Stage 1 itself, but referral AP is counted later in reward distribution.

### 3.5 Gateway — Anti-Sybil Requirement

A participant must satisfy at least one of the following:

- **Galxe Web3 Score: L1 or above**
- **Galxe Passport holder**

Only **Galxe-native automated verification** is used.

Manual approval, retroactive rescue, and discretionary case handling are not allowed.

### 3.6 Holder Check

Holder Check is the core holding-gate mechanism of Season 1.

It is not a direct reward in itself.  
It determines eligibility for the Holder Pool.

#### 3.6.1 Minimum Requirement

Holder eligibility is based on:

> **$15 equivalent in $NONPC**

A wallet is valid only if it holds the required amount at verification time.

#### 3.6.2 USD-to-NONPC Conversion

The USD threshold is converted into a fixed Season 1 token threshold `N NONPC` after the end of Week 3.

Pricing source:

- Official Raydium **WSOL–NONPC** pool
- **DEXScreener API** as the single reference source
- Reference price taken from the **24-hour average price at the end of Week 3**
- UTC as the time standard

Formula:

> `N = ceil(15 / P)`

Where:

- `P` = Week 3 reference price in USD per NONPC
- `ceil` = round up to the nearest integer

Once fixed, `N` remains unchanged throughout Season 1.

#### 3.6.3 Verification Windows

Holder Check is conducted twice:

- **Week 4**
- **Week 8**

Each Holder Check is:

- published for **72 hours only**
- verified by **Galxe On-chain Credential**
- valid only if claimed during the active window
- not subject to manual exceptions

A participant must hold at least `N NONPC` during the active window and complete Galxe Verify / Claim within that window.

Claims outside the window are invalid.

Missed Holder Check does **not** remove Open Pool eligibility, but it does remove Holder Pool eligibility.

### 3.7 Surge Window (Optional Bonus Layer)

Season 1 introduces a staged **Surge Window** system to encourage voluntary holding behavior and concentrate market participation during specific periods.

This is an **optional bonus mechanism**.

Failure to achieve Surge does **not** remove Season participation eligibility or Open Pool eligibility.

The Season-wide token reward cap remains unchanged.  
Surge Window does **not** increase the Season reward budget.

#### 3.7.1 Surge Thresholds (USD Basis)

Season 1 uses three Surge tiers:

- **Tier 1:** $30 equivalent in NONPC
- **Tier 2:** $60 equivalent in NONPC
- **Tier 3:** $90 equivalent in NONPC

#### 3.7.2 Timing (72-Hour Limited Windows)

Two Surge Windows are used:

- **Surge Window #1:** End of Week 3
- **Surge Window #2:** End of Week 7

Each Surge Window is open for **72 hours only**.

To qualify, a participant must hold at least the required NONPC amount for the target tier and complete Galxe Verify / Claim during the active 72-hour window.

Claims outside the publication window are invalid.

No exceptions are granted for missed clicks, timezone confusion, RPC delay, or similar reasons.

#### 3.7.3 USD-to-NONPC Conversion for Surge

Surge thresholds use exactly the **same conversion method** as Holder Check.

Reference price:

- Official Raydium **WSOL–NONPC** pool
- **DEXScreener API** as the single reference source
- **24-hour average price at the end of Week 3**

Formulas:

> `N30 = ceil(30 / P)`  
> `N60 = ceil(60 / P)`  
> `N90 = ceil(90 / P)`

Where `P` is the Week 3 reference price in USD per NONPC.

Once fixed, `N30`, `N60`, and `N90` remain unchanged throughout Season 1.

The same fixed values are used again for Surge Window #2.  
No recalculation is performed.

#### 3.7.4 Surge Bonus Effects

Participants who achieve Surge receive the following:

- **Tier 1 (N30 reached):** `+30 AP`
- **Tier 2 (N60 reached):** `+60 AP`
- **Tier 3 (N90 reached):** `1.3x Holder Pool multiplier`

Rules:

- Tier 1 and Tier 2 AP bonuses are cumulative
- Tier 3 multiplier is applied only once
- Tier 3 multiplier affects **Holder Pool distribution only**
- Tier 3 multiplier does **not** affect Open Pool distribution

### 3.8 Genesis Awakened (Season 1 Only)

The first **100 wallets** that successfully pass Holder Check during Season 1 receive **Genesis Awakened** status.

Priority is determined by Galxe Holder Check claim success timestamp in UTC:

1. Week 4 claim success order
2. Week 8 claim success order

Potential benefits include:

- Permanent Discord role
- Permanent OAT badge
- Permanent contributor recognition in official materials

---

## 4. Reward Calculation Logic

### 4.1 Effective Liquidity

Let official Raydium pool total liquidity in USD be `L`.

Then:

> `EL = L / 2`

Where `EL` is Effective Liquidity (one-sided liquidity).

### 4.2 Base Season Budget

> `B_base = EL × 0.02`

This is the total base reward budget for one two-month Season.

### 4.3 Holder Bonus

Let `H` be the number of wallets that passed **both** Week 4 and Week 8 Holder Checks.

> `B_bonus = 500 + min(500, H × 5)`

### 4.4 Pool Budgets

> `B_open = B_base × 0.20`  
> `B_holder = B_base × 0.80 + B_bonus`

### 4.5 Distribution Conversion Price

The conversion price for final token distribution is the official Raydium **WSOL–NONPC** pool 24-hour average price immediately before Week 8 conclusion.

Source:

- **DEXScreener API** as the single reference source

Token pool sizes:

> `T_open = B_open / P_dist`  
> `T_holder = B_holder / P_dist`

### 4.6 AP Basis

Reward distribution uses cumulative AP only:

> **Total AP = Task AP + Quiz AP + Referral AP**

Holder Check itself is an eligibility gate, not a direct AP reward.

### 4.7 Open Pool Formula

For Open Pool participants `S_open`:

> `AP_open_total = Σ(AP_i)`  
> `Reward_open_i = T_open × (AP_i / AP_open_total)`

Tier 3 multiplier does **not** apply to Open Pool.

### 4.8 Holder Pool Formula

For Holder Pool participants `S_holder`:

- If Tier 3 achieved: `EAP_i = AP_i × 1.3`
- Otherwise: `EAP_i = AP_i`

Then:

> `EAP_holder_total = Σ(EAP_i)`  
> `Reward_holder_i = T_holder × (EAP_i / EAP_holder_total)`

Tier 3 multiplier is applied once only.

### 4.9 Final Reward

> `Reward_total_i = Reward_open_i + Reward_holder_i`

For non-Holder-Pool wallets:

> `Reward_holder_i = 0`

### 4.10 Cap and Remainders

If:

> `Reward_total_i > Cap_i`

Then:

> `Reward_total_i = Cap_i`

The cap is applied after both pool amounts are calculated and summed.

Remainders created by the 20% cap or by decimal truncation are **not redistributed during Season 1**.

Undistributed NONPC is sent to the DAO Treasury wallet.

### 4.11 Rounding

Distribution amounts are rounded down to the token’s minimum unit according to mint decimals.

Any fractional residue becomes undistributed remainder.

---

## 5. Referral, Leaderboard, and Automation Policy

### 5.1 Referral Logic

Season 1 referral uses **Galxe-native referral only**.

Referral AP is granted automatically when the referred user:

1. completes Stage 1, and
2. satisfies Gateway conditions

Referral reward:

- **100 AP per successful referral**

Manual referral approval, screenshot submission, and retroactive reconciliation are not allowed.

### 5.2 Leaderboard

Leaderboard ranking is based on cumulative AP earned during the Season:

- Task AP
- Quiz AP
- Referral AP

Leaderboard purpose:

- induce competition
- promote retention
- increase participation velocity

It is a visibility mechanism, not a direct reward display.

### 5.3 Automation Policy

The campaign strictly follows:

- Galxe-native credential verification
- no manual approvals
- no post-period exceptions
- no screenshot-based claims
- no spreadsheet-based retroactive rescue
- no individual rescue handling for missed windows

This is a hard operational rule, not a soft guideline.

---

## 6. Liquidity Impact Containment

Under reference conditions:

- full sell-off impact is estimated around **2–3%**
- actual market effect depends on timing, order concentration, depth, and broader market conditions

Reward budgets scale up if liquidity grows and contract if liquidity declines.

This dynamic elasticity is a core defensive property of the campaign.

---

## 7. Season 2 — Uprising

Season 2 shifts from onboarding into contribution and retention reinforcement.

Illustrative task categories may include:

- **Create the Meme**
- **Write the Thread**
- **Video Manifesto**
- **Diamond Hands** (retention-based behavior)
- **Design the Glitch**

The purpose of Season 2 is to move participants from simple entry behavior toward visible contribution.

As a rule, tasks should be structured around **Galxe-native automated verification** wherever possible.

---

## 8. Season 3 — Sovereignty

Season 3 is the governance-readiness phase.

Illustrative task categories may include:

- **Cast Your Vote**
- **Draft a Proposal**
- **Moderate the Awakened**
- **Snapshot Diamond Hands**

The purpose of Season 3 is not mere campaign continuation.

It is to prepare the community for governance participation and contributor-level responsibility.

---

## 9. Relationship to DAO Transition

The Quest is not merely an airdrop.

It is a staged behavioral architecture that moves the community through:

1. entry  
2. filtering  
3. retention  
4. contribution  
5. governance readiness

By the end of Season 3, the campaign is intended to produce participants who are more likely to function as real DAO contributors rather than passive recipients.

---

## 10. Relationship to AFX (Awakening Flywheel Experiment)

The Awakening Airdrop Quest serves as the pre-AFX participation engine.

While AFX focuses on:

- protocol-owned liquidity compounding
- fee-powered internal economic circulation
- structural retention mechanisms

the Quest focuses on:

- holder quality
- behavioral filtering
- governance literacy
- contributor selection

Together, they form a broader liquidity-retentive growth architecture.

---

## 11. Risk Disclosure

This campaign does **not** guarantee:

- token appreciation
- liquidity growth
- market stability
- governance efficiency
- profit or financial return

All crypto assets involve volatility, execution risk, infrastructure risk, and regulatory uncertainty.

Participants are solely responsible for their own decisions.

---

## 12. Canonical References

**Whitepaper (Authoritative Release):**  
https://github.com/NoNPCSociety/nonpcsociety.github.io/releases/tag/whitepaper-v1.0.2

**AFX Technical Specification (Authoritative Release):**  
https://github.com/NoNPCSociety/nonpcsociety.github.io/releases/tag/afx-v1.0.2

**Token Address (Solana SPL):**  
`8rmZUcQsQKWBZ2WDPoTwkkiFsuhABXQX7o4xysf7Cgyp`

**DAO Treasury Wallet:**  
`53eyssmUhwAhPexUwSeBa8Zwop8aMdCUPr7VGNMsG2qk`

---

## 13. Final Position

The Awakening Airdrop Quest is not a volume-chasing giveaway.

It is a bounded incentive system designed to test whether community expansion, holder retention, and governance conditioning can be engineered without relying on indiscriminate inflation.

Structure over hype.  
Durability over velocity.
