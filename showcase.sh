#!/usr/bin/bash

flags=(
    at "Austria (at)"
    bd "Bangladesh (bd)"
    be "Belgium (be)"
    bj "Benin (bj)"
    ch "Switzerland (ch)"
    ci "Côte d'Ivoire (ci)"
    dk "Denmark (dk)"
    en "England (en)"
    fi "Finland (fi)"
    fr "France (fr)"
    gn "Guinea (gn)"
    gw "Guinea-Bissau (gw)"
    ic "Canary Islands (ic)"
    id "Indonesia (id)"
    ir "Ireland (ir)"
    it "Italy (it)"
    jp "Japan (jp)"
    lv "Latvia (lv)"
    ma "Morocco (ma)"
    mc "Monaco (mc)"
    mn "Mongolia (mn)"
    mg "Madagascar (mg)"
    ml "Mali (ml)"
    ng "Nigeria (ng)"
    pe "Peru (pe)"
    pl "Poland (pl)"
    pw "Palau (pw)"
    ro "Romania (ro)"
    se "Sweden (se)"
    sn "Senegal (sn)"
    so "Somalia (so)"
    td "Chad (td)"
    tr "Türkiye (tr)"
    ua "Ukraine (ua)"
    vn "Vietnam (vn)"
    refugee "Refugee"
    redcross "Red Cross"
    jollyroger "Jolly Roger"
    finish "Finish"
)

widths=(0 0 0 0 0)

index=0
while [[ $index -lt ${#flags[@]} ]]; do
    label=${flags[$((index+1))]}
    width=${#label}
    width_index=$((($index/2)%5))
    max_width=${widths[$width_index]}
    if [[ $max_width -lt $width ]]; then
        widths[$width_index]=$width
    fi
    index=$((index+2))
done

echo
index=0
while [[ $index -lt ${#flags[@]} ]]; do
    for column in {0..4}; do
        i=$((index+(column*2)))
        if [[ $i -ge ${#flags[@]} ]]; then
            break
        fi
        code=${flags[$i]}
        flag=$(./tinyflags.sh "$code")
        plain=$(echo "$flag"|sed 's/\x1B\[[;0-9]*m//g')
        width=${#plain}
        padd=$((widths[column]-width))
        lpadd=$((padd/2))
        rpadd=$((padd-lpadd))
        printf "  %${lpadd}s%s%${rpadd}s" "" "$flag" ""
    done
    echo
    for column in {0..4}; do
        i=$((index+(column*2)+1))
        if [[ $i -ge ${#flags[@]} ]]; then
            break
        fi
        label=${flags[$i]}
        width=${#label}
        padd=$((widths[column]-width))
        lpadd=$((padd/2))
        rpadd=$((padd-lpadd))
        printf "  %${lpadd}s%s%${rpadd}s" "" "$label" ""
    done
    echo
    echo

    index=$((index+10))
done
