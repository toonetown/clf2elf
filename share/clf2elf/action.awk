{
    # Guesses at s-action based off of status
    switch (FIELDS["sc-status"]) {
        case "204": FIELDS["s-action"] = "TCP_HIT"; break;
        case "403": FIELDS["s-action"] = "TCP_DENIED"; break;
        case "200": FIELDS["s-action"] = "TCP_MISS"; break;
        default: FIELDS["s-action"] = "TCP_NC_MISS"; break;
    }
}