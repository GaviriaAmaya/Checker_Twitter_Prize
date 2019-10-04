#!/usr/bin/env bash
# Script that generates JSON file with parameters needed to create the auth_key

if [ ! -f auth_data.json ]

then
    echo "{\"api_key\": \"YOUR_API_KEY\", \"email\": \"YOUR_EMAIL\", \"password\": \"YOUR_PASS\", \"scope\": \"checker\"}" > auth_data.json
else
    echo "  -> auth_data.json exists, proceeding..."
fi

echo -n "  -> Holberton Intranet API Key: "
read -r api_key
echo -n "  -> Holberton Intranet email: "
read -r email
echo -n "  -> Holberton Intranet password: "
read -r password

# & escaper
password=$(sed 's/[\*\.&]/\\&/g' <<<"$password")

if grep -q YOUR_API_KEY auth_data.json
then
    sed -i "s/YOUR_API_KEY/$api_key/g" auth_data.json
fi

if grep -q YOUR_EMAIL auth_data.json
then
    sed -i "s/YOUR_EMAIL/$email/g" auth_data.json
fi

if grep -q YOUR_PASS auth_data.json
then
    sed -i "s/YOUR_PASS/$password/g" auth_data.json
fi


echo "All set!"
