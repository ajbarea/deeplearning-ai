# Claude Code Reference

## Essential Commands

- `/init` - Initialize project (run first)
- `/help` - Show all commands and summaries
- `/clear` - Clear conversation and start from scratch
- `/compact` - Summarize current conversation and start fresh
- `/commit` - Create git commit with changes
- `claude --resume` - Resume from command line with previous conversation context

## File & Project Management

- `/ide` - Set up IDE integration
- `/resume` - Resume previous conversation
- `/edit` - Edit files interactively

## MCP Management

- `claude mcp add` - Add MCP server to configuration
  - Example: `claude mcp add playwright npx @playwright/mcp@latest`

## Keyboard Shortcuts

- `#` - Add prompt to CLAUDE.md options
- `@` - Reference a specific file or directory
- `Esc` - Interrupt/cancel command mid-run
- `Ctrl+C` - Alternative interrupt
- `Shift+Tab + Shift+Tab` - Enter planning mode

## Additional Commands

- `/mcp` - Manage MCP servers
- `/permissions` - View and manage permissions

## GitHub Integration

- `/install-github-app` - Install GitHub Actions workflow for Claude Code
  - Sets up automated PR creation from issue descriptions
  - Enables `@claude` mentions in issues/PRs to trigger AI assistance
  - Requires Anthropic API key as repository secret
  - Creates workflow file in `.github/workflows/`
  - Only works after PR is merged and workflow is active

## Custom Commands

- Create custom commands by adding `.claude/commands/prompt-name.md`
- Use `$ARGUMENTS` keyword to allow parameters
- Access via `/prompt-name`

## Tips & Techniques

- Add `think a lot` to the end of complex tasks to trigger extended thinking and allocate more tokens to the thinking process
- Use parallel subagents for brainstorming: `use two parallel subagents to brainstorm possible plans. do not implement code` - generates multiple plans in parallel
