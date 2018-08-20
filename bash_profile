# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
#ooexport PATH
PS1='\w\$ '

#export PATH=${PATH}:${ANT_HOME}/bin
#export PATH=${PATH}:${ANDROID_HOME}/build-tools/23.0.3/
#PS1='\w\$ '
export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_NDK=~/Work/Source/ReleaseBuild_Guide/Dependences/android-ndk-r9b
#export NDK_PROJECT_PATH=ANDROID_NDK
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_NDK}
export ANT_HOME=~/Work/Source/ReleaseBuild_Guide/Dependences/apache-ant-1.10.1
export PATH=${PATH}:${ANT_HOME}/bin
export PATH=${PATH}:${ANDROID_HOME}/build-tools/23.0.3/

# Load the shell dotfiles, and then some:
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
#unset fileexport PATH="/usr/local/bin:$PATH"

#load bashcompletion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

#load alias
if [ -e $HOME/.bash_alias ]; then
        [ -n "$PS1" ] && . $HOME/.bash_alias
fi
