#!/usr/bin/env bash
# Sets up the hipposcraper:
#+  Configures aliases in .bashrc
#+  Sets inputted user information in auth.json

echo "JSON Generator for user Auth"
echo "  -> Checking if auth_data.json exists..."
if [ ! -f auth_data.json ]
then
    echo "  -> auth_data.json does not exist, creating it..."
    echo "{\"intra_user_key\": \"YOUR_HOLBERTON_INTRANET_USERNAME\", \"intra_pass_key\": \"YOUR_HOLBERTON_INTRANET_PASSWORD\", \"author_name\": \"YOUR_NAME\", \"github_username\": \"YOUR_GITHUB_USERNAME\", \"github_profile_link\": \"YOUR_GITHUB_PROFILE_LINK\"}" > auth_data.json
else
    echo "  -> auth_data.json exists, proceeding..."
fi
echo -n "  -> Holberton Intranet email: "
read -r email
echo -n "  -> Holberton Intranet password: "
read -r password
echo -n "  -> Full name (for author section of README's): "
read -r name
echo -n "  -> Github username: "
read -r github_username
echo -n "  -> Github profile link: "
read -r github_link

# & escaper
PASSWORD=$(sed 's/[\*\.&]/\\&/g' <<<"$password")

if grep -q YOUR_HOLBERTON_INTRANET_USERNAME auth_data.json
then
    sed -i "s/YOUR_HOLBERTON_INTRANET_USERNAME/$email/g" auth_data.json
fi

if grep -q YOUR_HOLBERTON_INTRANET_PASSWORD auth_data.json
then
    sed -i "s/YOUR_HOLBERTON_INTRANET_PASSWORD/$PASSWORD/g" auth_data.json
fi

if grep -q YOUR_NAME auth_data.json
then
    sed -i "s/YOUR_NAME/$name/g" auth_data.json
fi

if grep -q YOUR_GITHUB_USERNAME auth_data.json
then
    sed -i "s/YOUR_GITHUB_USERNAME/$github_username/g" auth_data.json
fi

if grep -q YOUR_GITHUB_PROFILE_LINK auth_data.json
then
    sed -i "s,YOUR_GITHUB_PROFILE_LINK,$github_link,g" auth_data.json
fi


echo "All set!"
