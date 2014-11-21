{
    # Guesses at rs(Content-Type) based off of path - you may want to add more later
    match(FIELDS["cs-uri-path"], /\.([^\.]*)$/, arr)
    switch (tolower(arr[1])) {
        case "css": FIELDS["rs(Content-Type)"] = "text/css"; break;
        case "ico": FIELDS["rs(Content-Type)"] = "image/x-icon"; break;
        case "gif": FIELDS["rs(Content-Type)"] = "image/gif"; break;
        case "jpg": FIELDS["rs(Content-Type)"] = "image/jpeg"; break;
        case "jpeg": FIELDS["rs(Content-Type)"] = "image/jpeg"; break;
        case "png": FIELDS["rs(Content-Type)"] = "image/png"; break;
        case "svg": FIELDS["rs(Content-Type)"] = "image/svg+xml"; break;
        case "txt": FIELDS["rs(Content-Type)"] = "text/plain"; break;
        case "js": FIELDS["rs(Content-Type)"] = "application/x-javascript"; break;
        case "jsp": FIELDS["rs(Content-Type)"] = "text/html"; break;
        case "htm": FIELDS["rs(Content-Type)"] = "text/html"; break;
        case "html": FIELDS["rs(Content-Type)"] = "text/html"; break;
        default: break;
    }
}