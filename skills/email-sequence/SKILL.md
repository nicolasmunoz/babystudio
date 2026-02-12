# Email Sequence Skill

Create multi-email sequences (nurture, outbound, follow-up) following email playbook and messaging framework.

## When to Use

When Email Marketing Specialist needs to create an email sequence based on a brief.

## Prerequisites

- Brand guidelines exist (`/context/marketing/brand-guidelines.md`)
- Tone of voice defined (`/context/marketing/tone-of-voice.md`)
- Messaging framework exists (`/context/marketing/messaging-framework.md`)
- Email playbook exists (`/context/marketing/playbooks/email-playbook.md`)
- Audience segments defined (`/context/marketing/audience-segments.md`)

## Process

1. Load context: brand-guidelines.md, tone-of-voice.md, messaging-framework.md, email-playbook.md, audience-segments.md
2. Define sequence parameters (type, audience persona, goal, length)
3. Map sequence arc (awareness → interest → consideration → action)
4. Draft each email following playbook structure
5. Apply persona-specific messaging from messaging-framework.md
6. Create 2-3 subject line variations per email for A/B testing
7. Self-review against checklist
8. Save to `/outputs/content/email/`

## Sequence Templates

### Cold Outreach (5-email cadence)
1. **Value-first intro** — Lead with insight relevant to their role, no ask
2. **Problem amplification** — Specific pain point with data
3. **Social proof** — How others solved it
4. **Direct pitch** — Clear value proposition and CTA
5. **Break-up email** — Final touch, low-pressure

Spacing: Day 1, Day 3, Day 7, Day 12, Day 18

### Educational Nurture (7-email sequence)
1. **Welcome + positioning** — What to expect, who you are
2. **Problem education** — Frame the problem they may not fully see
3. **Industry context** — Market data, trends
4. **Solution approach** — How the problem can be solved (category-level)
5. **Differentiation** — Why this approach vs. alternatives
6. **Social proof** — Results, case studies
7. **CTA** — Clear next step (demo, call, trial)

Spacing: Day 0, Day 3, Day 6, Day 10, Day 14, Day 18, Day 22

### Post-Demo Follow-Up (4-email sequence)
1. **Recap** — Key points discussed, next steps
2. **Objection handler** — Address top concern raised
3. **Proof point** — Relevant case study or data
4. **Decision nudge** — Urgency or scarcity angle

Spacing: Day 0, Day 3, Day 7, Day 12

### Re-Engagement (3-email sequence)
1. **New angle** — Fresh value proposition they haven't heard
2. **What's changed** — Updates since last contact
3. **Final ask** — Direct, honest, last chance

Spacing: Day 0, Day 5, Day 12

## Self-Review Checklist

- [ ] Subject lines 40-60 characters
- [ ] One CTA per email
- [ ] Under word limit (cold: 100 words, nurture: 200 words)
- [ ] Personalization tokens present and correct
- [ ] Tone matches audience segment
- [ ] Sequence arc builds logically
- [ ] Timing between emails is appropriate
- [ ] Brand voice consistent throughout
- [ ] Messaging aligns with framework

## Used By

Email Marketing Specialist

## Required Context

- `/context/marketing/brand-guidelines.md`
- `/context/marketing/tone-of-voice.md`
- `/context/marketing/messaging-framework.md`
- `/context/marketing/playbooks/email-playbook.md`
- `/context/marketing/audience-segments.md`
