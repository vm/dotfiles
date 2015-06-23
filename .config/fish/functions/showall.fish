function showall --description 'Show hidden files in Finder'
    defaults write com.apple.finder AppleShowAllFiles TRUE; and killall Finder
end
