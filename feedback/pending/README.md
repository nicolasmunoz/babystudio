# Pending Feedback

Feedback files here have not yet been processed by the System Improver.

## Adding Feedback

Create: `feedback-YYYY-MM-DD-brief-description.md`

```markdown
# Feedback: [Brief title]

**Date:** [Date]
**Related Issue:** #[number]

## What Happened
[Task and output description]

## Feedback Received
[What was wrong or could be better]

## Suggested Improvement
[Specific change to make]

## Reasoning
[Why this would help]
```

## Processing

System Improver:
1. Reads files here
2. Creates PRs with improvements
3. After merge, moves files to `/feedback/archived/`
