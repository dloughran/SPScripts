$siteUrl = "http://chalkboard.psd70.ab.ca/";
$groupName = "Your Group Name";
$newOwner = "domain\username";

$web = Get-SPWeb $siteUrl;
$group = $web.SiteGroup[$groupName];
$user = $web.EnsureUser($newOwner);
$group.Owner = $user;
$group.Update();
$web.Dispose();