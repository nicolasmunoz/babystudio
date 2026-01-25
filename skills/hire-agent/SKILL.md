# Hire Agent Skill

This skill enables executives to create new agents to join their functional teams.

## When to Use

Use this skill when:
- An executive needs additional capacity in their function
- A specialized capability is needed that existing agents don't have
- Work volume requires more agents

## Who Can Use This

Executives use this skill to build their teams. The CEO can also use it when creating agents that report directly to them or when helping an executive.

## Process

### Step 1: Define the Role

Answer these questions:
- **Function:** What department does this agent belong to?
- **Reports To:** Which executive?
- **Responsibility:** What specific work will this agent do?
- **Scope:** What's included and excluded?
- **Collaboration:** How do they work with other agents?

### Step 2: Create the Agent File

Create `/agents/[role-name].md` with this structure:

```markdown
# [Role Name]

You are the [Role Name] on the [function] team, reporting to the [Executive]. You [primary responsibility].

## Role

You are a [description] who:
- [Key responsibility 1]
- [Key responsibility 2]
- [Key responsibility 3]

## Reporting Structure

\`\`\`
[Executive]
├── [Other Agent]
├── [Role Name] (You)
└── [Other Agent]
\`\`\`

You receive direction from [Executive or another agent] and [what you do with it].

## Core Responsibilities

### 1. [Responsibility Area]

[Detailed guidance]

### 2. [Responsibility Area]

[Detailed guidance]

## Context You Use

**Always load:**
- [Context file that's always relevant]

**Load when relevant:**
- [Context file for specific situations]

## Working with GitHub Issues

### Your Labels
- `dept:[function]`
- `agent:[role-name]`

### Task Format

[What a typical task looks like for this agent]

## Quality Standards

[Role-specific quality guidance]

### Self-Review Checklist
- [ ] [Check 1]
- [ ] [Check 2]
- [ ] [Check 3]

## Decision Authority

### You Decide:
- [Decisions within your scope]

### Escalate to [Executive/Lead]:
- [What to escalate]

## Output Locations

- [Where this agent saves their work]

## Working with Feedback

When work is rejected or corrected:
1. Complete the revision
2. If feedback suggests system improvement, create file in `/feedback/pending/`
```

### Step 3: Create Label

```bash
gh label create "agent:[role-name]" --color "[color]" --description "[Description]"
```

### Step 4: Update Executive Instructions (if needed)

If the executive's file lists their team, update to include the new agent:

```markdown
## Reporting Structure

CEO
└── CMO
    ├── Content Strategist
    ├── Content Writer
    └── [New Agent] ← Add this
```

### Step 5: Announce

Add to session notes or create issue:

```markdown
## New Agent: [Role Name]

**Department:** [Function]
**Reports To:** [Executive]
**Responsibility:** [What they do]

**Ready for tasks labeled:**
- `agent:[role-name]`
```

## Agent Templates by Function

### Marketing Agents

**Social Media Manager:**
- Manages social media presence
- Creates and schedules social content
- Engages with audience
- Reports on social metrics

**SEO Specialist:**
- Keyword research
- Content optimization
- Technical SEO guidance
- Ranking analysis

**Email Marketing Specialist:**
- Email campaign creation
- List management guidance
- A/B testing
- Email analytics

**Graphic Designer:** (if image generation available)
- Visual content creation
- Brand asset development
- Campaign graphics

### Sales Agents (when CSO exists)

**Sales Development Rep (SDR):**
- Outreach messaging
- Lead qualification criteria
- Follow-up sequences

**Account Executive:**
- Proposal creation
- Sales presentations
- Deal strategy

**Sales Operations:**
- Process documentation
- Pipeline analysis
- Sales enablement content

### Product Agents (when CPO exists)

**Product Manager:**
- Feature specifications
- User story writing
- Roadmap planning

**UX Writer:**
- Interface copy
- User communication
- Help documentation

**User Researcher:**
- Research plans
- Interview guides
- Insight synthesis

## Best Practices

### Agent Design Principles

1. **Single Responsibility:** Each agent should have a clear, focused purpose
2. **Clear Boundaries:** Define what's in and out of scope
3. **Explicit Handoffs:** Document how agents work together
4. **Quality Criteria:** Include self-review checklist
5. **Escalation Path:** Clarify when to escalate vs. decide

### Naming Conventions

- Use descriptive role names: `content-writer`, not `writer-1`
- Match industry conventions when possible
- Keep names lowercase with hyphens for labels

### Context Access

- Agents should reference context, not duplicate it
- List required context explicitly in agent file
- Keep agent instructions focused on "how to do the job"

## Notes

- Start with fewer agents; add as needed
- One agent can often handle multiple related tasks
- Agents can be updated/improved via feedback loop
- Consider combining roles before creating new agents
