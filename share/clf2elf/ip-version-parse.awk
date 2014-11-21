{
    # Adds x-c-ipv4
    if (match(FIELDS["c-ip"], /\./, arr)) { FIELDS["x-c-ipv4"] = FIELDS["c-ip"]; }

    # Adds x-c-ipv6
    if (match(FIELDS["c-ip"], /:/, arr)) { FIELDS["x-c-ipv6"] = FIELDS["c-ip"]; }
}