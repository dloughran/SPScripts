# List SP groups and group owners

$siteUrl = "http://chalkboard.psd70.ab.ca/";
$site = Get-SPSite $siteUrl;

$groups = $site.RootWeb.sitegroups;

foreach ($grp in $groups) {"Group: " + $grp.name + "  Owner: " + $grp.owner}

$site.Dispose() 


