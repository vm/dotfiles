function hideall --description 'Hide hidden files in Finder'
    defaults write com.apple.finder AppleShowAllFiles FALSE; and killall Finder
end
