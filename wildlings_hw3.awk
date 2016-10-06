
{
FS=","
if (substr($4, length($4)-3)>1900)
if (NR > 2)
print $2 " from "  $4 " to " $5
}
