cask 'cleanmymac' do
  version '4.6.9'
  sha256 '68e34d007a5a5b3e7ef86d03d31b22f3b061a8dc3042b5c2701a655cece4c37f'

  # dl.devmate.com/com.macpaw.CleanMyMac was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.CleanMyMac#{version.major}/CleanMyMacX.dmg"
  appcast "https://updates.devmate.com/com.macpaw.CleanMyMac#{version.major}.xml"
  name 'CleanMyMac X'
  homepage 'https://macpaw.com/cleanmymac'

  auto_updates true

  app 'CleanMyMac X.app'

  uninstall delete:     [
                          "/Library/PrivilegedHelperTools/com.macpaw.CleanMyMac#{version.major}.Agent",
                          "/private/var/run/com.macpaw.CleanMyMac#{version.major}.Agent.socket",
                        ],
            launchctl:  [
                          "com.macpaw.CleanMyMac#{version.major}.Agent",
                          "com.macpaw.CleanMyMac#{version.major}.HealthMonitor",
                          "com.macpaw.CleanMyMac#{version.major}.Menu",
                          "com.macpaw.CleanMyMac#{version.major}.Scheduler",
                          "com.macpaw.CleanMyMac#{version.major}.Updater",
                        ],
            login_item: "CleanMyMac #{version.major} Menu",
            quit:       [
                          "com.macpaw.CleanMyMac#{version.major}",
                          "com.macpaw.CleanMyMac#{version.major}.HealthMonitor",
                          "com.macpaw.CleanMyMac#{version.major}.Menu",
                        ]

  zap trash: [
               '/Users/Shared/CleanMyMac X',
               '/Users/Shared/CleanMyMac X Menu',
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw.cleanmymac#{version.major}.sfl*",
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macpaw.cleanmymac#{version.major}.scheduler.sfl*",
               '~/Library/Application Support/CleanMyMac X',
               '~/Library/Application Support/CleanMyMac X Menu',
               "~/Library/Caches/CleanMyMac #{version.major}",
               "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.macpaw.CleanMyMac#{version.major}.help*",
               "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}",
               "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.HealthMonitor",
               "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.KnowledgeBase",
               "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.Menu",
               "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.Scheduler",
               "~/Library/Caches/com.macpaw.CleanMyMac#{version.major}.Updater",
               "~/Library/LaunchAgents/com.macpaw.CleanMyMac#{version.major}.HealthMonitor.plist",
               "~/Library/LaunchAgents/com.macpaw.CleanMyMac#{version.major}.Updater.plist",
               "~/Library/Logs/CleanMyMac #{version.major}.log",
               '~/Library/Logs/CleanMyMac X Menu/HealthMonitor',
               "~/Library/Logs/com.macpaw.CleanMyMac#{version.major}",
               "~/Library/Preferences/com.macpaw.CleanMyMac-#{version.major}-Helper.plist",
               "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.HealthMonitor.plist",
               "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.KnowledgeBase.plist",
               "~/Library/Preferences/com.macpaw.cleanmymac#{version.major}.Menu.plist",
               "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.Scheduler.plist",
               "~/Library/Preferences/com.macpaw.CleanMyMac#{version.major}.plist",
               "~/Pictures/Photos Library.photoslibrary/private/com.macpaw.CleanMyMac#{version.major}",
             ]
end
