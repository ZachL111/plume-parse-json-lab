# plume-parse-json-lab

`plume-parse-json-lab` is a compact Ruby repository for parsers, centered on this goal: Implement a Ruby parsers project for json stream reduction, using windowed input fixtures and late-data behavior checks.

## Why It Exists

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Plume Parse JSON Lab Review Notes

The first comparison I would make is `grammar width` against `token drift` because it shows where the rule is most opinionated.

## Features

- `fixtures/domain_review.csv` adds cases for token drift and grammar width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/plume-parse-json-walkthrough.md` walks through the case spread.
- The Ruby code includes a review path for `grammar width` and `token drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture Notes

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Ruby code keeps the review rule close to the tests.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The check exercises the source code and the review fixture. `stress` is the high score at 194; `baseline` is the low score at 92.

## Limitations And Roadmap

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
