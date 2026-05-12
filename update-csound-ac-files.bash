#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
csound_ac_base_url="${CSOUND_AC_BASE_URL:-https://raw.githubusercontent.com/gogins-dev/csound-ac/refs/heads/master}"

mkdir -p "${repo_root}/cxx-opcodes/cmake"

curl -fsSL "${csound_ac_base_url}/cmake/FindCsoundHomeFirst.cmake" \
    -o "${repo_root}/cxx-opcodes/cmake/FindCsoundHomeFirst.cmake"

curl -fsSL "${csound_ac_base_url}/CsoundAC/OpcodeBaseAC.hpp" \
    -o "${repo_root}/cxx-opcodes/OpcodeBaseAC.hpp"

curl -fsSL "${csound_ac_base_url}/external/codesign-check.bash" \
    -o "${repo_root}/codesign-check.bash"
chmod +x "${repo_root}/codesign-check.bash"
