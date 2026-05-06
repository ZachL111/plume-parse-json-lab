# Review Journal

The repository goal stays the same: implement a Ruby parsers project for json stream reduction, using windowed input fixtures and late-data behavior checks. This note explains the added review angle.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its parsers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `token drift`, score 92, lane `hold`
- `stress`: `grammar width`, score 194, lane `ship`
- `edge`: `label quality`, score 173, lane `ship`
- `recovery`: `error locality`, score 126, lane `watch`
- `stale`: `token drift`, score 179, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
