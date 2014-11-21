{
    # Adds x-netmask
    if (match(FIELDS["c-ip"], /([\.:])/, arr)) {
        split(FIELDS["c-ip"], ip, arr[1])
        ip[length(ip)] = "x"
        FIELDS["x-netmask"] = ""
        for (i in ip) { FIELDS["x-netmask"] = FIELDS["x-netmask"] (i > 1 ? arr[1] : "") ip[i]; }
    }
}