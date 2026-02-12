# Content Brief Skill

Standardize content brief creation with all required context references and channel-specific requirements.

## When to Use

When Content Strategist creates a brief for any content piece across any channel.

## Prerequisites

- Content pillars exist (`/context/marketing/content-pillars.md`)
- Audience segments defined (`/context/marketing/audience-segments.md`)
- Messaging framework exists (`/context/marketing/messaging-framework.md`)
- Relevant channel playbook exists

## Process

1. Load context: content-pillars.md, audience-segments.md, messaging-framework.md
2. Load the relevant channel playbook for the content type
3. Determine content pillar, funnel stage, persona, and channel
4. Fill in standard brief template (see below)
5. Add channel-specific requirements from playbook
6. Add messaging angle from messaging-framework.md
7. Save brief to `/outputs/briefs/`

## Brief Template

```markdown
# Content Brief: [Title]

## Overview
- **Type:** [Blog post / LinkedIn post / Email / etc.]
- **Channel:** [Where it will be published]
- **Target Persona:** [Enterprise Emma / Startup Sam / etc.]
- **Funnel Stage:** [Awareness / Consideration / Decision]
- **Content Pillar:** [Which pillar this serves]
- **Objective:** [What this piece should achieve]

## Key Message
[The one thing the reader should take away — reference messaging-framework.md]

## Supporting Points
1. [Point to cover]
2. [Point to cover]
3. [Point to cover]

## Proof Points
[Relevant evidence from messaging-framework.md proof points section]

## Call to Action
[What we want the reader to do next]

## Tone & Style
- Base: [Reference tone-of-voice.md]
- Channel modifier: [From relevant playbook]
- Audience modifier: [From tone-of-voice.md persona section]

## Channel-Specific Requirements
[Pull from relevant playbook — format, length, structure, SEO keywords, hashtags, etc.]

## Requirements
- **Length:** [Word count or range]
- **Format:** [Structure requirements from playbook]
- **Keywords:** [If SEO relevant, from seo-keyword-strategy.md]
- **Assets needed:** [Images, links to include]

## Reference Materials
- Brand guidelines: `/context/marketing/brand-guidelines.md`
- Messaging framework: `/context/marketing/messaging-framework.md`
- Tone of voice: `/context/marketing/tone-of-voice.md`
- Channel playbook: `/context/marketing/playbooks/[channel]-playbook.md`
- [Other relevant context]

## Success Metrics
[How we'll measure if this content worked]

## Assigned To
[Content Writer / Email Marketing Specialist]
```

## Self-Review Checklist

- [ ] Content pillar is identified
- [ ] Target persona is specific (not generic)
- [ ] Funnel stage is clear
- [ ] Key message references messaging framework
- [ ] Channel-specific requirements included from playbook
- [ ] Tone guidance references both base voice and modifiers
- [ ] All relevant context files are linked
- [ ] Brief is actionable (writer can execute without guessing)

## Used By

Content Strategist

## Required Context

- `/context/marketing/content-pillars.md`
- `/context/marketing/audience-segments.md`
- `/context/marketing/messaging-framework.md`
- Relevant channel playbook
