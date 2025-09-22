#!/opt/homebrew/bin/fish

if test -z "$argv[1]"
    echo "Error: A file name must be set, e.g. on \"the wonderful thing about tiggers\"."
    exit 1
end

set file_name (string replace ' ' '-' -- "$argv[1]")
set formatted_file_name (date "+%Y-%m-%d")"_"$file_name".md"

cd "/Users/martin/Library/Mobile Documents/iCloud~md~obsidian/Documents/notes" || exit 1
touch "00-Inbox/$formatted_file_name"
nvim "00-Inbox/$formatted_file_name"
