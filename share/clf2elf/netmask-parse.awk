{
    # Adds x-netmask
    if (match(FIELDS["c-ip"], /([\.:])/, arr)) {
        split(FIELDS["c-ip"], ip, arr[1])
        ip[length(ip)] = "x"
        FIELDS["x-netmask"] = ""
        for (i = 1; i <= length(ip); i++) { FIELDS["x-netmask"] = FIELDS["x-netmask"] (i > 1 ? arr[1] : "") ip[i]; }
    }
}