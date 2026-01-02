# Intellectual Property (IP) Tracker — Schuetta Research

**Owner:** Joshua Cole Schuetta  
**Scope:** Internal control system for invention capture, filing gates, and disclosure discipline.  
**Visibility:** PRIVATE (repo internal). Do not mirror to public site.

---

## Doctrine

- **Tracking is mandatory; disclosure is selective.**
- **Public research outputs must pass an IP gate** before arXiv/OSF release when patent relevance is Medium/High.
- **No public “patent pending” language** unless an actual filing exists and counsel approves external wording.
- **This tracker is factual:** dates, links, decisions. No legal claims.

---

## IP Relevance Levels

- **Low:** Measurement methods; non-proprietary evaluation; no implementational leverage disclosed.
- **Medium:** Novel algorithms/pipelines that could be claimed; consider provisional before release.
- **High:** Instrument designs, unique architectures, enabling methods, manufacturable systems; **provisional required** before any public release.

---

## Master IP Register

| ID | Title | Related Paper(s) | Relevance | Gate Decision | Filing Status | Internal Owner | Notes |
|---|---|---|---|---|---|---|---|
| IP-0001 | Collapse-aware evaluation methodology | A1, A2 | Low | Publish | None | JCS | Measurement-first framing |
| IP-0002 | Photonic RF spectrometer methods (modeling/design) | B1 | High | File before release | Pending | JCS | Keep implementation details private |
| IP-0003 | Collapse-aware adaptive response/control framework | C1 | Medium–High | Gate before release | TBD | JCS | Release only after counsel gate |

---

## Per-Paper IP Gate Log

### A1 — Performance Collapse (ASR)
- Relevance: **Low**
- Gate: **Publish without filing**
- Rationale: Measurement methodology; no proprietary implementation required
- Gate date: 2026-01-01
- Reviewer: JCS

### A2 — Cross-Model Collapse Generalization
- Relevance: **Low–Medium**
- Gate: **Publish (monitor)**
- Notes: Avoid disclosing training heuristics / architecture details

### B1 — Photonic RF Collapse (Physical Sensing)
- Relevance: **High**
- Gate: **Provisional required before arXiv/OSF**
- Notes: Publish limits and measurement regimes; retain enabling implementation details

---

## File Locations

- ops/IP/disclosures/ — invention disclosure notes (internal)
- ops/IP/provisionals/ — filings, drafts, exhibits (internal)
- ops/IP/correspondence/ — counsel communications (internal)
- ops/IP/timelines/ — dated decision logs and milestone snapshots (internal)

