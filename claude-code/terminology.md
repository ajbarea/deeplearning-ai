# AI Course Terminology

## RAG (Retrieval-Augmented Generation)

**Definition**: A technique that combines information retrieval with generative AI. The system first retrieves relevant documents/data from a knowledge base, then uses that context to generate more accurate and informed responses.

**Example**: A chatbot that searches through company documentation before answering questions, rather than relying solely on its training data.

## Chatbot

**Definition**: An AI-powered conversational interface that can understand and respond to user messages in natural language.

**Example**: Customer service bots, virtual assistants like Claude, or domain-specific help systems that can answer questions and perform tasks through conversation.

## MCP (Model Context Protocol)

**Definition**: An open standard that enables AI assistants to securely connect to data sources and tools. It allows Claude and other AI models to access external resources like databases, APIs, and services in a standardized way.

**Example**: Using MCP to connect Claude to your GitHub repository, local file system, or a company database so it can read and interact with that data during conversations.

## Playwright MCP

**Definition**: An MCP server that enables Claude to automate web browser interactions using Microsoft's Playwright testing framework. It allows Claude to navigate websites, click elements, fill forms, and extract information from web pages.

**Example**: Using Playwright MCP to automate form submissions, scrape data from websites, test web applications, or perform repetitive browser tasks that would normally require manual interaction.

## Git Worktrees

**Definition**: A Git feature that allows you to check out multiple branches of the same repository into separate working directories simultaneously. Each worktree has its own working directory but shares the same Git repository data.

**Example**:

```bash
git worktree add .tree/my-feature
git worktree add .tree/different-feature
git worktree add .tree/third-feature
```

Working on multiple feature branches simultaneously without needing to stash changes or switch branches constantly. When parallel feature changes are completed, commit each tree's changes individually, then return to main branch and have Claude merge all worktrees in the .tree folder, resolving conflicts along the way.
