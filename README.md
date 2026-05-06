# plume-parse-json-lab

`plume-parse-json-lab` is a Ruby project for Parsers. It turns implement a Ruby parsers project for json stream reduction, using windowed input fixtures and late-data behavior checks into a small local model with readable fixtures and a direct verification command.

## Reading Plume Parse JSON Lab

Start with the README, then open `metadata/project.json` to check the constants behind the examples. After that, `fixtures/cases.csv` shows the compact path and `examples/extended_cases.csv` gives a wider look at the same rule.

## Design Sketch

The interesting part is the boundary between accepted and reviewed scenarios. Extended examples sit near that boundary so future edits can show whether the model became more permissive or more cautious. The Ruby code keeps the module small and leans on Minitest for direct fixture checks.

## Purpose

I use this kind of project to make a rule visible before adding more machinery around it. The important part here is not the size of the codebase. It is that the input signals, scoring rule, fixture data, and expected output can all be checked in one sitting.

## What It Does

- Uses fixture data to keep error labels changes visible in code review.
- Includes extended examples for grammar boundaries, including `recovery` and `degraded`.
- Documents golden examples tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.
- Stores project constants and verification metadata in `metadata/project.json`.

## Fixture Notes

The extended cases are not random smoke tests. `degraded` keeps pressure on the review path, while `recovery` shows the model when capacity and weight are strong enough to clear the threshold.

## Files Worth Reading

- `lib`: library code
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Setup

Install Ruby and run the commands from the repository root. The project does not need credentials or a hosted service.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Verification

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Limits

The examples cover useful edges, not every edge. A larger version would add malformed-input tests, richer reports, and deeper domain parsers.

## Next Directions

- Add a short report command that prints the score breakdown for a single scenario.
- Add malformed input fixtures so the failure path is as visible as the happy path.
- Split the scoring constants into a typed configuration object and validate it before use.
- Add one more parsers fixture that focuses on a malformed or borderline input.
