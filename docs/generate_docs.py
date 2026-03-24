#!/usr/bin/env python3
"""
Generate documentation pages for MORAI ROS1 messages and services.
Parses .msg and .srv files and creates Markdown documentation with
message definitions and field description tables.
"""

import os
from pathlib import Path

# Base paths
REPO_ROOT = Path(__file__).parent.parent
MSG_DIR = REPO_ROOT / "msg"
SRV_DIR = REPO_ROOT / "srv"
DOCS_MSG_DIR = REPO_ROOT / "docs" / "messages"
DOCS_SRV_DIR = REPO_ROOT / "docs" / "services"

# Ensure docs directories exist
DOCS_MSG_DIR.mkdir(parents=True, exist_ok=True)
DOCS_SRV_DIR.mkdir(parents=True, exist_ok=True)


def parse_msg_file(msg_path):
    """Parse a .msg file and return header comments and fields with comments."""
    fields = []
    header_comments = []
    current_comment = []
    found_field = False

    with open(msg_path, 'r', encoding='utf-8') as f:
        for line in f:
            line = line.rstrip()

            # Skip empty lines
            if not line:
                if not found_field:
                    # Accumulate header comments
                    pass
                current_comment = []
                continue

            # Handle comments
            if line.strip().startswith('#'):
                comment_text = line.strip()[1:].strip()
                if not found_field:
                    header_comments.append(comment_text)
                else:
                    current_comment.append(comment_text)
                continue

            found_field = True

            # Parse field
            if line.strip():
                parts = line.split()
                if len(parts) >= 2:
                    field_type = parts[0]
                    field_name = parts[1]

                    # Check for array notation in type (e.g., float32[4])
                    if '[' in field_type and ']' in field_type:
                        pass  # keep as-is, e.g. float32[4]
                    # Check for array notation in name (e.g., name[])
                    elif '[' in field_name:
                        bracket_idx = field_name.index('[')
                        array_part = field_name[bracket_idx:]
                        field_name = field_name[:bracket_idx]
                        field_type = field_type + array_part

                    # Inline comment
                    inline_comment = ""
                    if '#' in line:
                        inline_comment = line.split('#', 1)[1].strip()

                    comment = inline_comment if inline_comment else ' '.join(current_comment)

                    fields.append({
                        'type': field_type,
                        'name': field_name,
                        'comment': comment
                    })
                    current_comment = []

    return header_comments, fields


def parse_srv_file(srv_path):
    """Parse a .srv file and return request/response fields."""
    request_fields = []
    response_fields = []
    current_section = request_fields
    current_comment = []

    with open(srv_path, 'r', encoding='utf-8') as f:
        for line in f:
            line = line.rstrip()

            # Check for separator
            if line.strip() == '---':
                current_section = response_fields
                current_comment = []
                continue

            # Skip empty lines
            if not line:
                current_comment = []
                continue

            # Handle comments
            if line.strip().startswith('#'):
                current_comment.append(line.strip()[1:].strip())
                continue

            # Parse field
            if line.strip():
                parts = line.split()
                if len(parts) >= 2:
                    field_type = parts[0]
                    field_name = parts[1]

                    if '[' in field_type and ']' in field_type:
                        pass
                    elif '[' in field_name:
                        bracket_idx = field_name.index('[')
                        array_part = field_name[bracket_idx:]
                        field_name = field_name[:bracket_idx]
                        field_type = field_type + array_part

                    # Inline comment
                    inline_comment = ""
                    if '#' in line:
                        inline_comment = line.split('#', 1)[1].strip()

                    comment = inline_comment if inline_comment else ' '.join(current_comment)

                    current_section.append({
                        'type': field_type,
                        'name': field_name,
                        'comment': comment
                    })
                    current_comment = []

    return request_fields, response_fields


def generate_msg_doc(msg_name, msg_path):
    """Generate markdown documentation for a message."""
    header_comments, fields = parse_msg_file(msg_path)

    doc = f"# {msg_name}\n\n"
    doc += f"**Message Type**: `morai_msgs/{msg_name}`\n\n"

    # Add description from header comments (skip the message name line)
    description_lines = []
    for line in header_comments:
        # Skip lines that are just the message name
        if line.strip() == msg_name:
            continue
        description_lines.append(line)

    if description_lines:
        doc += ' '.join(description_lines) + "\n\n"

    # Read raw content
    with open(msg_path, 'r', encoding='utf-8') as f:
        raw_content = f.read()

    doc += "## Message Definition\n\n"
    doc += "```\n"
    doc += raw_content
    if raw_content and not raw_content.endswith('\n'):
        doc += "\n"
    doc += "```\n\n"

    if fields:
        doc += "## Field Descriptions\n\n"
        doc += "| Field | Type | Description |\n"
        doc += "|-------|------|-------------|\n"

        for field in fields:
            comment = field['comment'] if field['comment'] else "-"
            # Escape pipe characters in comments
            comment = comment.replace('|', '\\|')
            doc += f"| `{field['name']}` | `{field['type']}` | {comment} |\n"
        doc += "\n"

    return doc


def generate_srv_doc(srv_name, srv_path):
    """Generate markdown documentation for a service."""
    request_fields, response_fields = parse_srv_file(srv_path)

    doc = f"# {srv_name}\n\n"
    doc += f"**Service Type**: `morai_msgs/{srv_name}`\n\n"

    # Read raw content
    with open(srv_path, 'r', encoding='utf-8') as f:
        raw_content = f.read()

    doc += "## Service Definition\n\n"
    doc += "```\n"
    doc += raw_content
    if raw_content and not raw_content.endswith('\n'):
        doc += "\n"
    doc += "```\n\n"

    if request_fields:
        doc += "## Request Fields\n\n"
        doc += "| Field | Type | Description |\n"
        doc += "|-------|------|-------------|\n"

        for field in request_fields:
            comment = field['comment'] if field['comment'] else "-"
            comment = comment.replace('|', '\\|')
            doc += f"| `{field['name']}` | `{field['type']}` | {comment} |\n"
        doc += "\n"

    if response_fields:
        doc += "## Response Fields\n\n"
        doc += "| Field | Type | Description |\n"
        doc += "|-------|------|-------------|\n"

        for field in response_fields:
            comment = field['comment'] if field['comment'] else "-"
            comment = comment.replace('|', '\\|')
            doc += f"| `{field['name']}` | `{field['type']}` | {comment} |\n"
        doc += "\n"

    return doc


def main():
    """Generate all documentation pages."""
    print("Generating message documentation...")

    # Generate message docs
    msg_count = 0
    for msg_file in sorted(MSG_DIR.glob("*.msg")):
        msg_name = msg_file.stem
        doc_content = generate_msg_doc(msg_name, msg_file)

        doc_path = DOCS_MSG_DIR / f"{msg_name}.md"
        with open(doc_path, 'w', encoding='utf-8') as f:
            f.write(doc_content)

        print(f"  Created: {doc_path.relative_to(REPO_ROOT)}")
        msg_count += 1

    print(f"\nGenerated {msg_count} message documentation pages.")

    # Generate service docs
    print("\nGenerating service documentation...")
    srv_count = 0
    for srv_file in sorted(SRV_DIR.glob("*.srv")):
        srv_name = srv_file.stem
        doc_content = generate_srv_doc(srv_name, srv_file)

        doc_path = DOCS_SRV_DIR / f"{srv_name}.md"
        with open(doc_path, 'w', encoding='utf-8') as f:
            f.write(doc_content)

        print(f"  Created: {doc_path.relative_to(REPO_ROOT)}")
        srv_count += 1

    print(f"\nGenerated {srv_count} service documentation pages.")
    print(f"\nTotal: {msg_count + srv_count} documentation pages created!")
    print("\nTo view the documentation:")
    print("  1. Install dependencies: pip install -r docs-requirements.txt")
    print("  2. Run local server: mkdocs serve")
    print("  3. Open browser: http://127.0.0.1:8000")


if __name__ == "__main__":
    main()
