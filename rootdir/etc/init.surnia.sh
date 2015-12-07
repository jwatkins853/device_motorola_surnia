#!/system/bin/sh
TAG="ramsudharsan"

product_model=`getprop ro.product.model`

if [ "XT1526" = $product_model ]; then
	log -t$TAG "Applying LTE fix"
	cp -Rr /system/etc/boost/eri.xml /data/eri.xml
	chmod 644 /data/eri.xml
fi

