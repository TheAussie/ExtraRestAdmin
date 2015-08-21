--
-- File generated with SQLiteStudio v3.0.1 on Tue May 5 05:36:36 2015
--
-- Text encoding used: windows-1252
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: GroupList
CREATE TABLE GroupList ('GroupName' TEXT PRIMARY KEY  , 'Parent' TEXT   , 'Commands' TEXT   , 'ChatColor' TEXT   , 'Prefix' TEXT   , 'Suffix' TEXT    );
INSERT INTO GroupList (GroupName, Parent, Commands, ChatColor, Prefix, Suffix) VALUES ('guest', '', 'tshock.world.modify,tshock.account.register,tshock.account.login,tshock.partychat,tshock.thirdperson,tshock.canchat', '255,255,255', NULL, NULL);
INSERT INTO GroupList (GroupName, Parent, Commands, ChatColor, Prefix, Suffix) VALUES ('default', 'guest', 'tshock.warp,tshock.account.changepassword', '255,255,255', NULL, NULL);
INSERT INTO GroupList (GroupName, Parent, Commands, ChatColor, Prefix, Suffix) VALUES ('newadmin', 'default', 'tshock.admin.kick,tshock.reservedslot,tshock.world.editspawn,RemoteConsoleChat.allow', '255,255,255', NULL, NULL);
INSERT INTO GroupList (GroupName, Parent, Commands, ChatColor, Prefix, Suffix) VALUES ('admin', 'newadmin', 'tshock.admin.ban,tshock.cfg.whitelist,tshock.world.time.*,tshock.npc.spawnboss,tshock.npc.spawnmob,tshock.admin.warp,tshock.world.time.set,tshock.tp.self,tshock.slap,tshock.kill,tshock.admin.viewlogs,tshock.admin.nokick,tshock.tp.others', '255,255,255', NULL, NULL);
INSERT INTO GroupList (GroupName, Parent, Commands, ChatColor, Prefix, Suffix) VALUES ('trustedadmin', 'admin', 'tshock.cfg.maintenance,tshock.cfg.*,tshock.world.*,tshock.npc.butcher,tshock.item.spawn,tshock.heal,tshock.admin.noban,tshock.item.usebanned', '255,255,255', NULL, NULL);
INSERT INTO GroupList (GroupName, Parent, Commands, ChatColor, Prefix, Suffix) VALUES ('vip', 'default', 'tshock.reservedslot', '255,255,255', NULL, NULL);
INSERT INTO GroupList (GroupName, Parent, Commands, ChatColor, Prefix, Suffix) VALUES ('basic', 'default', 'AdminRest.*,AdminRest.allow,RestAPI.*,RestPermissions.restrawcommand,RestPermissions.restviewgroups,tshock.admin.ban,tshock.rest.bans.manage,tshock.rest.command,tshock.rest.groups.view,tshock.rest.kick,tshock.rest.maintenance,tshock.rest.useapi,basic.new', '255,255,255', NULL, NULL);
INSERT INTO GroupList (GroupName, Parent, Commands, ChatColor, Prefix, Suffix) VALUES ('3', '2', '', '128,128,064', NULL, NULL);
INSERT INTO GroupList (GroupName, Parent, Commands, ChatColor, Prefix, Suffix) VALUES ('2', 'default', NULL, '255,128,0', NULL, NULL);

COMMIT TRANSACTION;
