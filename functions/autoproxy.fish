function autoproxy -d "Automatically set/unset proxy" --on-event fish_preexec
        if set -q autoproxy_check_command
                if eval $autoproxy_check_command
                        proxy
                else
                        noproxy
                end
        end
end