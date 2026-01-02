# Schuetta Research — System Operations Manual (SROM)

**Canonical identity:** Joshua Cole Schuetta  
**Email (research):** joshua.cole.schuetta@gmail.com  
**ORCID:** 0009-0007-6501-5990  
**Website:** https://schuetta-research.com  
**Purpose:** This document defines the complete operating system for publication and IP control: identity, priority, archival, discovery, release discipline, and governance.

---

## 1. System Overview

This stack is designed to produce durable, high-integrity research outputs with controlled disclosure and verifiable provenance. It separates:

- **Identity** (who authored the work)
- **Priority** (when work exists publicly)
- **Archive** (where supporting artifacts live)
- **Discovery** (how work is indexed and found)
- **Governance** (how releases and IP are gated)

---

## 2. Accounts and Their Roles

### 2.1 ORCID (Identity Anchor)
**Role:** Permanent researcher identity and disambiguation.
- Public name: **Joshua Cole Schuetta**
- Website link: https://schuetta-research.com
- Keywords: minimal, technical, stable
**Policy:** Affiliations are optional and added only when strategically advantageous.

### 2.2 arXiv (Priority & Timestamp)
**Role:** Establishes public existence, precedence, and a citable artifact.
**Policy:**
- Upload is the “clock.” A work does not exist until arXiv release.
- Affiliations: **Independent Researcher** unless required otherwise.
- Source and PDF must be consistent with repo tags (e.g., A1-v1).

### 2.3 OSF (Archive Vault)
**Role:** Hosts datasets, code, and supplements—selectively disclosed.
Project structure:
- datasets/
- code/
- supplementary/
- notes/
- releases/
**Policy:** OSF project stays private until synchronized release day.

### 2.4 Google Scholar (Passive Discovery)
**Role:** Indexing and citation aggregation.
**Policy:** Do not manually add works; allow Scholar to ingest arXiv/journal outputs.

### 2.5 GitHub + Repo (Provenance & Operations)
**Role:** Internal source of truth for:
- paper source (LaTeX)
- figure versions
- release tags
- operational checklists
**Policy:** Every public release is tagged (e.g., A1-v1). No force pushes.

---

## 3. Repository Structure

Top-level:
- site/ previously used for staging; current Pages serves from repo root.
- index.html, papers/, eleases/, bout/ are served by GitHub Pages.
- publications/ contains paper sources and figures.
- ops/ contains operational checklists, trackers, and scripts (private/internal).
- data/ may hold raw data artifacts; not required for arXiv.

Paper workspace example:
- publications/A_track_collapse/A1/
  - A1_main.tex
  - eferences.bib
  - igures/

---

## 4. Release Discipline (Canonical Workflow)

### 4.1 Pre-Release (Internal)
1. Paper draft complete in publications/...
2. Figures placed and referenced
3. Compile PDF, validate references
4. Execute **IP Gate** (Section 5)
5. Complete checklist: ops/checklists/A1_release_checklist.md

### 4.2 Release Day (Synchronized)
1. Create final PDF
2. arXiv submission (priority established)
3. OSF release (optional; only selected artifacts)
4. Update website:
   - /papers/ add arXiv link
   - /releases/ add release entry and OSF link if applicable
5. Git tag:
   - A1-v1 (or appropriate)
   - push tag to origin

### 4.3 Post-Release
- Scholar auto-indexes
- ORCID works may be updated (optional)
- Journal submission is optional and secondary

---

## 5. IP / Patent Governance

Tracking lives in:
- ops/IP_TRACKER.md
- ops/IP/ folders
Templates:
- ops/templates/INVENTION_DISCLOSURE_TEMPLATE.md

**IP Gate Rule:**
- Low: publish
- Medium: evaluate; consider provisional before publication
- High: provisional required before any public release

**Public Website Policy:**
- No patents/IP page until an actual filing exists and counsel approves wording.
- Repository holds tracking; public site remains research-focused.

---

## 6. Website Policy (Restraint Doctrine)

Website is archival and institutional:
- No marketing
- No product language
- Minimal navigation
- CV link on About
**Content changes only** when a paper/release is published.

---

## 7. Publication Tracking

Primary tracker:
- ops/PUBLICATION_TRACKER.md

Each paper has:
- a unique ID (A1, A2, B1...)
- a checklist under ops/checklists/
- a tag sequence (A1-v1, A1-v2 if revised)

---

## 8. Definitions

- **Paper ID:** internal identifier (A1, A2, B1...)
- **Release Tag:** immutable snapshot on Git (A1-v1)
- **Synchronized Release:** arXiv + OSF + site updates + Git tag

---

## 9. Current State

Identity stack live:
- ORCID ✔
- arXiv ✔
- OSF ✔
- Scholar ✔
- Website ✔
- GitHub Pages ✔
Operations stack live:
- publication tracker ✔
- IP tracker ✔

Next operational milestone:
- **A1 release (Paper #1)** once plots are in place.

