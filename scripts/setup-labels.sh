#!/bin/bash

# GitHub Labels Setup Script for Company OS
# Run this once to create all labels needed for the system
#
# Usage: ./setup-labels.sh [owner/repo]
# Example: ./setup-labels.sh myusername/company-os

set -e

REPO=${1:-$(gh repo view --json nameWithOwner -q .nameWithOwner)}

if [ -z "$REPO" ]; then
    echo "Error: Could not determine repository."
    echo "Usage: ./setup-labels.sh owner/repo"
    exit 1
fi

echo "Setting up labels for: $REPO"
echo ""

# Function to create or update a label
create_label() {
    local name=$1
    local color=$2
    local description=$3
    
    echo "Creating label: $name"
    gh label create "$name" \
        --repo "$REPO" \
        --color "$color" \
        --description "$description" \
        --force 2>/dev/null || echo "  (updated existing)"
}

echo "=== Type Labels ==="
create_label "type:initiative" "5319e7" "Strategic initiative (CEO level)"
create_label "type:epic" "6f42c1" "Large project within a function"
create_label "type:story" "1d76db" "Deliverable unit of work"
create_label "type:task" "0e8a16" "Atomic work item"

echo ""
echo "=== Status Labels ==="
create_label "status:backlog" "ededed" "Not yet ready to work on"
create_label "status:ready" "c2e0c6" "Ready to be picked up"
create_label "status:in-progress" "fbca04" "Currently being worked on"
create_label "status:blocked" "d93f0b" "Waiting on something"
create_label "status:review" "f9d0c4" "Awaiting human review"
create_label "status:done" "0e8a16" "Completed"

echo ""
echo "=== Assignment Labels ==="
create_label "assigned:human" "c5def5" "Requires human action"
create_label "assigned:ai" "bfdadc" "Can be handled by an agent"

echo ""
echo "=== Department Labels ==="
create_label "dept:executive" "ff6b6b" "CEO-level strategic work"
create_label "dept:marketing" "4ecdc4" "Marketing department"
# Add more departments as you hire executives:
# create_label "dept:sales" "45b7d1" "Sales department"
# create_label "dept:product" "96ceb4" "Product department"

echo ""
echo "=== Executive Labels ==="
create_label "exec:ceo" "ff6b6b" "CEO owned work"
create_label "exec:cmo" "4ecdc4" "CMO owned work"
# Add more as you hire executives:
# create_label "exec:cso" "45b7d1" "CSO owned work"
# create_label "exec:cpo" "96ceb4" "CPO owned work"

echo ""
echo "=== Agent Labels ==="
create_label "agent:content-strategist" "a8e6cf" "Content planning and strategy"
create_label "agent:content-writer" "a8e6cf" "Writing and content creation"
create_label "agent:system-improver" "dda0dd" "System improvement tasks"
# Add more as you hire agents:
# create_label "agent:seo-specialist" "a8e6cf" "SEO optimization"
# create_label "agent:social-media-manager" "a8e6cf" "Social media management"

echo ""
echo "=== Priority Labels ==="
create_label "priority:high" "b60205" "Do first"
create_label "priority:medium" "fbca04" "Normal priority"
create_label "priority:low" "0e8a16" "Do when able"

echo ""
echo "=== Done! ==="
echo ""
echo "Labels created successfully."
echo ""
echo "View your labels at: https://github.com/$REPO/labels"
echo ""
echo "Hierarchy:"
echo "  Initiative (CEO) → Epic (Executive) → Story → Task (Agent)"
echo ""
echo "Departments:"
echo "  executive (red), marketing (teal)"
echo "  Add more with: gh label create 'dept:NAME' --color 'HEX' --description 'DESC'"
echo ""
echo "To add executives/agents later, add their labels:"
echo "  gh label create 'exec:cso' --color '45b7d1' --description 'CSO owned work'"
echo "  gh label create 'agent:sdr' --color 'a8e6cf' --description 'Sales development'"
