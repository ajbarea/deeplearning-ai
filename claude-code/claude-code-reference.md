# Claude Code Reference

## Essential Commands

- `/init` - Initialize project (run first)
- `/help` - Show all commands and summaries
- `/clear` - Clear conversation and start from scratch
- `/compact` - Summarize current conversation and start fresh
- `/commit` - Create git commit with changes
- `claude --resume` - Resume from command line with previous conversation context
- `!<command>` - Execute regular bash commands (example: `!pwd`)
- `exit` - Quit Claude Code

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
- `Shift+Tab` - Switch between planning and auto-accept mode
- `Shift+Tab + Shift+Tab` - Enter planning mode
- `ESC ESC` - Rewind the conversation to an earlier point in time
- `Win + Shift + S` - Take a screenshot

## Additional Commands

- `/mcp` - Manage MCP servers
- `/permissions` - View and manage permissions
- `/model` - Show and set current model

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

## Hooks

Claude Code hooks allow you to execute shell commands at specific stages of interaction, providing powerful customization and automation capabilities.

### Configuration

Configure hooks in your settings JSON file:

```json
{
  "hooks": {
    "PostToolUse": [
      {
        "matcher": "Write|Edit",
        "hooks": [
          {
            "type": "command", 
            "command": "npm run lint"
          }
        ]
      }
    ]
  }
}
```

### Available Hook Events

- `PreToolUse` - Runs before tool execution
- `PostToolUse` - Runs after successful tool completion  
- `UserPromptSubmit` - Runs when user submits a prompt
- `Notification` - Triggered during system notifications
- `Stop` - Runs when main agent finishes responding
- `SubagentStop` - Runs when subagent finishes responding

### Common Use Cases

- Validate code changes with linters/formatters
- Run tests after file modifications
- Log interactions for auditing
- Add custom security checks
- Implement workflow automation

**Security Note**: Hooks execute shell commands - configure carefully to avoid security risks.

## Tips & Techniques

- Add the word "think" to your prompts e.g. `think a lot` to complex tasks to trigger extended thinking and allocate more tokens to the thinking process
- Use parallel subagents for brainstorming: `use two parallel subagents to brainstorm possible plans. do not implement code` - generates multiple plans in parallel
