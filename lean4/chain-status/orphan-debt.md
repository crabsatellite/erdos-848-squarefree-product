# Erdos848 -- orphan debt by build graph

This report treats the Lean import graph as the source of truth.  Debt files are `.lean` files that are loaded-but-orphan or on-disk-but-unloaded, excluding explicit quarantine and explicit infra files.  Components below are connected components of that restricted import graph; within each component, files are sorted newest first so the agent timeline is visible.

* debt files: **0**
* build-connected components: **0**
* directed branch heads: **0**
* taxonomy-labelled files: **0**
* rule-labelled files: **0**
* unconnected debt files: **0**
* class split: -
* bucket split: -

## Component Summary

| component | files | latest | earliest | rounds | dominant bucket | classes | anchors | taxonomy | rule | connected |
|-----------|-------|--------|----------|--------|-----------------|---------|---------|----------|------|-----------|

## Directed Branch Heads

A branch head is an off-chain debt file that no other off-chain debt file imports.  Its closure follows real Lean imports downward.  This is the most useful view for seeing which agent branches are actually connected by build logic.

| head mtime | closure files | state | dominant bucket | classes | anchors | automatic route labels | head path |
|------------|---------------|-------|-----------------|---------|---------|------------------------|-----------|

## Component Details
