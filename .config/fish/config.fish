fish_add_path -ga ~/.local/bin/
fish_add_path -ga ~/.cargo/bin/

set -gx HELIX_RUNTIME ~/.local/share/helix/runtime/

if status is-interactive
    # Commands to run in interactive sessions can go here
end
