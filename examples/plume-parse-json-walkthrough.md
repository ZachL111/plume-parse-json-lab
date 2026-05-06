# Plume Parse JSON Lab Walkthrough

I use this file as a small checklist before changing the Ruby implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | token drift | 92 | hold |
| stress | grammar width | 194 | ship |
| edge | label quality | 173 | ship |
| recovery | error locality | 126 | watch |
| stale | token drift | 179 | ship |

Start with `stress` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `baseline` becomes less cautious without a clear reason, I would inspect the drag input first.
