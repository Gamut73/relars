scripts_dir="$HOME/Artificery/scripts"

function create_aliases() {
    for dir in ${scripts_dir}/*; do
        if [ -d "${dir}" ]; then
            dir_name=$(basename "${dir}")
            lower_dir_name=$(echo "${dir_name}" | tr '[:upper:]' '[:lower:]')
            alias "${lower_dir_name}"="python3 ${scripts_dir}/${lower_dir_name}/${lower_dir_name}.py"
        fi
    done
}
create_aliases