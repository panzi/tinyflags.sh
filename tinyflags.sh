#!/usr/bin/bash

all=(at bd be bj ch ci dk en fi fr gn gw ic id ir it jp lv ma mc mn mg ml ng pe pl pw ro se sn so td tr ua vn refugee redcross jollyroger finish)

codes=("$@")
if [[ "${#codes[@]}" -eq 0 ]]; then
    codes=("${all[@]}")
fi

index=0
while [[ "$index" -lt "${#codes[@]}" ]]; do
    if [[ "$index" -gt 0 ]]; then
        echo -n ' '
    fi
    code="$(echo "${codes[$index],,}"| tr -d ' -')"

    case "${code}" in
        at) echo -n $'\x1B[48;2;201;8;42m\x1B[38;2;255;255;255m\U1FB0B\U1FB0B\U1FB0B\x1B[0m';;
        bd) echo -n $'\x1B[38;2;0;106;77m\U2590\x1B[48;2;0;106;77m\x1B[38;2;244;37;63m\U2B24\x1B[0m\x1B[38;2;0;106;77m\U2588\U258C\x1B[0m';;
        be) echo -n $'\x1B[38;2;0;0;0m\U2588\x1B[38;2;253;219;32m\U2588\x1B[38;2;240;48;62m\U2588\x1B[0m';;
        bj) echo -n $'\x1B[38;2;0;136;80m\U2588\x1B[48;2;252;210;14m\x1B[38;2;233;8;41m\U2584\U2584\x1B[0m';;
        ch) echo -n $'\x1B[38;2;218;41;28m\U2590\x1B[48;2;218;41;28m\x1B[38;2;255;255;255m\U1F7A7\x1B[0m\x1B[38;2;218;41;28m\U258C\x1B[0m';;
        ci) echo -n $'\x1B[38;2;247;127;0m\U2588\x1B[38;2;255;255;255m\U2588\x1B[38;2;0;158;96m\U2588\x1B[0m';;
        dk) echo -n $'\x1B[48;2;201;8;42m\x1B[38;2;255;255;255m\U1FB0B\U1FB1B\U1FB0B\x1B[0m';;
        en) echo -n $'\x1B[48;2;255;255;255m\x1B[38;2;205;0;1m\U2501\U254B\U2501\x1B[0m';;
        fi) echo -n $'\x1B[48;2;255;255;255m\x1B[38;2;0;43;108m\U1FB0B\U1FB1B\U1FB0B\x1B[0m';;
        fr) echo -n $'\x1B[38;2;0;33;83m\U2588\x1B[38;2;255;255;255m\U2588\x1B[38;2;207;8;33m\U2588\x1B[0m';;
        gn) echo -n $'\x1B[38;2;207;8;33m\U2588\x1B[38;2;252;210;14m\U2588\x1B[38;2;0;149;96m\U2588\x1B[0m';;
        gw) echo -n $'\x1B[48;2;207;8;33m\x1B[38;2;0;0;0m\U2605\x1B[48;2;252;210;14m\x1B[38;2;0;159;71m\U2584\U2584\x1B[0m';;
        ic) echo -n $'\x1B[38;2;255;255;255m\U2588\x1B[38;2;7;104;169m\U2588\x1B[38;2;255;204;0m\U2588\x1B[0m';;
        id) echo -n $'\x1B[48;2;255;0;0m\x1B[38;2;255;255;255m\U2584\U2584\U2584\x1B[0m';;
        ir) echo -n $'\x1B[38;2;14;156;98m\U2588\x1B[38;2;255;255;255m\U2588\x1B[38;2;255;137;60m\U2588\x1B[0m';;
        it) echo -n $'\x1B[38;2;0;147;68m\U2588\x1B[38;2;255;255;255m\U2588\x1B[38;2;207;39;52m\U2588\x1B[0m';;
        jp) echo -n $'\x1B[48;2;255;255;255m\x1B[38;2;182;0;44m \U2B24 \x1B[0m';;
        lv) echo -n $'\x1B[48;2;158;29;50m\x1B[38;2;255;255;255m\U2501\U2501\U2501\x1B[0m';;
        ma) echo -n $'\x1B[48;2;194;34;41m\x1B[38;2;0;98;48m \U26E4 \x1B[0m';;
        mc) echo -n $'\x1B[48;2;207;8;33m\x1B[38;2;255;255;255m\U2584\U2584\x1B[0m';;
        mn) echo -n $'\x1B[48;2;219;26;45m\x1B[38;2;255;212;0m\U11A9E\x1B[48;2;0;102;180m \x1B[38;2;219;26;45m\U2588\x1B[0m';;
        mg) echo -n $'\x1B[38;2;255;255;255m\U2588\x1B[48;2;249;64;55m\x1B[38;2;0;133;58m\U2584\U2584\x1B[0m';;
        ml) echo -n $'\x1B[38;2;12;182;55m\U2588\x1B[38;2;252;210;14m\U2588\x1B[38;2;207;8;33m\U2588\x1B[0m';;
        ng) echo -n $'\x1B[38;2;0;136;80m\U2588\x1B[38;2;255;255;255m\U2588\x1B[38;2;0;136;80m\U2588\x1B[0m';;
        pe) echo -n $'\x1B[38;2;218;8;30m\U2588\x1B[38;2;255;255;255m\U2588\x1B[38;2;218;8;30m\U2588\x1B[0m';;
        pl) echo -n $'\x1B[48;2;255;255;255m\x1B[38;2;221;12;57m\U2584\U2584\U2584\x1B[0m';;
        pw) echo -n $'\x1B[38;2;0;154;255m\U2590\x1B[48;2;0;154;255m\x1B[38;2;255;255;0m\U2B24\x1B[0m\x1B[38;2;0;154;255m\U2588\U258C\x1B[0m';;
        ro) echo -n $'\x1B[38;2;0;43;127m\U2588\x1B[38;2;252;209;22m\U2588\x1B[38;2;206;17;38m\U2588\x1B[0m';;
        se) echo -n $'\x1B[48;2;0;81;148m\x1B[38;2;254;204;0m\U1FB0B\U1FB1B\U1FB0B\x1B[0m';;
        sn) echo -n $'\x1B[48;2;0;134;61m \x1B[38;2;0;134;61m\x1B[48;2;253;240;64m\U2605\x1B[48;2;228;20;30m \x1B[0m';;
        so) echo -n $'\x1B[48;2;63;144;223m\x1B[38;2;255;255;255m \U2605 \x1B[0m';;
        td) echo -n $'\x1B[38;2;0;33;100m\U2588\x1B[38;2;254;204;0m\U2588\x1B[38;2;199;4;44m\U2588\x1B[0m';;
        tr) echo -n $'\x1B[38;2;227;10;23m\U2590\x1B[48;2;227;10;23m\x1B[38;2;255;255;255m\U262A \x1B[0m\x1B[38;2;227;10;23m\U258C\x1B[0m';;
        ua) echo -n $'\x1B[48;2;0;86;184m\x1B[38;2;255;216;0m\U2584\U2584\U2584\x1B[0m';;
        vn) echo -n $'\x1B[48;2;219;32;23m\x1B[38;2;255;255;0m \U2605 \x1B[0m';;

        # almost, but not good enough
        # il) echo -n $'\x1B[48;2;255;255;255m\x1B[38;2;0;53;185m\x1B[53m\x1B[4m \U2721 \x1B[0m';;

        refugee) echo -n $'\x1B[38;2;0;0;0m\x1B[48;2;241;105;64m\U1FB7A\U1FB7A\U1FB7A\x1B[0m';;
        redcross) echo -n $'\x1B[48;2;255;255;255m\x1B[38;2;218;18;26m \U1F7A7 \x1B[0m';;
        jollyroger) echo -n $'\x1B[48;2;0;0;0m\x1B[38;2;255;255;255m \U1F571 \x1B[0m';;
        finish) echo -n $'\x1B[48;2;255;255;255m\x1B[38;2;0;0;0m\U1FB24\U1FB24\U1FB24\x1B[0m';;

        all)
            codes=("${codes[@]:0:$((index+1))}" "${all[@]}" "${codes[@]:$((index+1))}")
            ;;
        *)
            if [[ "$index" -gt 0 ]]; then
                echo >&2
            fi
            echo "Error: Unsupported 2-letter country code: $1">&2
            exit 1
            ;;
    esac
    index=$((index+1))
done
echo
