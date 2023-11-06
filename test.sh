all_python_repos=(
    "AudioXBlock"
    "completion"
    "course-discovery"
    "credentials"
    "credentials-themes"
    "DoneXBlock"
    "edx-ace"
    "edx-bulk-grades"
    "edx-ora2"
    "edx-proctoring"
    "FeedbackXBlock"
    "RecommenderXBlock"
    "xblock-drag-and-drop-v2"
    "xblock-free-text-response"
    "xblock-google-drive"
    "xblock-image-explorer"
    "xblock-image-modal"
    "xblock-lti-consumer"
    "xblock-qualtrics-survey"
    "xblock-sql-grader"
    "xblock-submit-and-compare"
)

selected_repo="AudioXBlock"
echo '["'$selected_repo'"]'
echo '["'$selected_repo'"]' | jq --raw-output '.'
echo "hi"
echo "python_repos=$(echo '["'$selected_repo'"]' | jq -c '.')"
echo "bye"

if [[ -z $selected_repo ]]; then
    echo "HELLO1"
    echo "python_repos=$(echo '${all_python_repos[@]}' | jq --raw-output '.')"
    echo "python_repos=$(echo '${all_python_repos[@]}' | jq --raw-output '.')" >> $GITHUB_OUTPUT
elif [[ " ${all_python_repos[@]} " =~ " $selected_repo " ]]; then
    echo "HELLO2"
    echo "python_repos=$(echo '["'$selected_repo'"]' | jq --raw-output '.')"
    echo "python_repos=$(echo '["'$selected_repo'"]' | jq --raw-output '.')" >> $GITHUB_OUTPUT
else
    echo "HELLO3"
    echo "python_repos=$(echo '[]' | jq --raw-output '.')"
    echo "python_repos=$(echo '[]' | jq --raw-output '.')" >> $GITHUB_OUTPUT
fi