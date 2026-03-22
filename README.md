# Gemini AI Terminal CLI

A lightweight command-line tool that enables interaction with Google Gemini models directly from a Linux terminal. This project demonstrates how to integrate AI APIs into a shell-based workflow using Bash, `curl`, and JSON parsing.

---

## Overview

The Gemini AI Terminal CLI allows users to send natural language queries to the Gemini API and receive structured responses directly in the terminal. It is designed to be simple, fast, and easily extendable for advanced use cases such as AI-assisted command execution.

---

## Features

* Command-line interaction with Gemini AI
* Clean output formatting using `jq`
* Minimal and lightweight dependencies
* Secure API key handling through environment variables
* Easily extendable for custom shell integrations

---

## Technology Stack

* Bash (Shell scripting)
* curl (HTTP requests)
* jq (JSON parsing)
* Gemini API (Generative AI service)

---

## Project Structure

```
gemini_ai_terminal/
│
├── ai.sh        # Main CLI script
├── setup.sh     # Dependency installation script (optional)
└── README.md    # Project documentation
```

---

## Installation

### 1. Clone the repository

```bash
git clone https://github.com/rahulkumarvik/gemini_ai_terminal.git
cd gemini_ai_terminal
```

### 2. Install dependencies

```bash
sudo apt update
sudo apt install -y curl jq figlet lolcat
```

### 3. Configure API key

```bash
export GEMINI_API_KEY=YOUR_API_KEY
```

Note: Do not store your API key directly in the script or commit it to version control.

---

## Usage

Run the script with a query:

```bash
./ai.sh "Explain fork system call in Linux"
```

Example:

```bash
./ai.sh "What is embedded Linux?"
```

---

## Optional: Global Command Setup

To make the tool accessible globally:

```bash
sudo mv ai.sh /usr/local/bin/ai
```

Then you can run:

```bash
ai "Hello"
```

---

## How It Works

1. The user provides a query as a command-line argument
2. The Bash script sends an HTTP request to the Gemini API using `curl`
3. The API processes the input and generates a response
4. The response is parsed using `jq`
5. The formatted output is displayed in the terminal

---

## Learning Outcomes

* Working with REST APIs using `curl`
* Parsing JSON in a shell environment
* Building command-line tools using Bash
* Integrating AI capabilities into system-level applications
