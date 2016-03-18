for url in $(cat .gitmodules | grep -o 'https.*$'); do
	if [ $(echo $url | grep -c 'subtitle-downloader') -ne 0 ]; then
		git submodule update --depth 1 $url
	else
		git submodule update $url
		echo $url
	fi
done
