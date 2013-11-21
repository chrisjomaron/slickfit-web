# encoding: utf-8

require 'sinatra'
require 'shotgun'
require 'json'
require 'httpclient'

get '/' do
    erb :home
end

get '/tyre-prices/:reg' do 
	content_type :json

	http = HTTPClient.new
	response = http.get "http://localhost:4987/tyre-prices/#{params[:reg]}"
	response.body
	# status, headers, body = call env.merge("PATH_INFO" => "http://localhost:4987/tyre-prices/#{params[:reg]}")
  	# [status, headers, body.map(&:upcase)]
end

# 
# Mock API calls
# 

get '/maps' do
	erb :maps
end

get '/basic-car-details' do 
	"{
    	\"make\": \"audi\",
    	\"model\": \"a3\" 
	}"
end

get '/breakdown' do
	"{
		\"results\": 
		[
			{
				\"providerId\": \"1\",
				\"providerName\": \"RAC\",
				\"price\": \"£6.85\"
			},
			{
				\"providerId\": \"1\",
				\"providerName\": \"AA\",
				\"price\": \"£7.50\"
			},
			{
				\"providerId\": \"1\",
				\"providerName\": \"Admiral\",
				\"price\": \"£8.99\"
			}
		]
	}"
end

get '/tyre-prices/:reg' do 
		"{\n  \"results\": [\n    {\n      \"tyrelabelimg\": [\n        \"http://www.blackcircles.com/webdb/tyrelabelling/fuelefficiency/e?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/wetgrip/b?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/noise/69-1?view=3154\"\n      ],\n      \"manufacturer/_source\": \"/images/manufacturer/dunlop/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_title\": [\n        \"Car Tyre\",\n        \"Jaguar\",\n        \"Reinforced\"\n      ],\n      \"tyrelabelimg/_title\": [\n        \"Fuel Efficiency / Rolling Resistance:E\",\n        \"Wet Grip / Braking Performance:B\",\n        \"Noise Emission / Exterior Noise: 69 dBs, 1 Bar\"\n      ],\n      \"imgrating\": [\n        \"http://www.blackcircles.com/templates/images/tyres/variants/car-tyre.jpg\",\n        \"http://www.blackcircles.com/templates/images/manufacturer/car/jaguar.jpg\",\n        \"http://www.blackcircles.com/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"imgrating/_alt\": [\n        \"Car Tyre\",\n        \"Jaguar\",\n        \"Reinforced\"\n      ],\n      \"tyreimg/_source\": \"/wso/images/library/obj16003528?view=2885\",\n      \"tyreimg\": \"http://www.blackcircles.com/wso/images/library/obj16003528?view=2885\",\n      \"size\": \"245/40 R19 Y (98)\",\n      \"tyrelabelimg/_source\": [\n        \"/webdb/tyrelabelling/fuelefficiency/e?view=3154\",\n        \"/webdb/tyrelabelling/wetgrip/b?view=3154\",\n        \"/webdb/tyrelabelling/noise/69-1?view=3154\"\n      ],\n      \"tyrelabelimg/_alt\": [\n        \"Tyre Fuel Efficiency Rating: E\",\n        \"Tyre Wet Grip Rating:B\",\n        \"Noise Emission / Exterior Noise: 69 dBs, 1 Bar\"\n      ],\n      \"price\": \"£223.26\",\n      \"manufacturer\": \"http://www.blackcircles.com/images/manufacturer/dunlop/Imagesmall?media=ImageLibrary\",\n      \"tyreimg/_alt\": \"Dunlop SP Sport 01\",\n      \"manufacturername\": \"Dunlop SP Sport 01\",\n      \"imgrating/_source\": [\n        \"/templates/images/tyres/variants/car-tyre.jpg\",\n        \"/templates/images/manufacturer/car/jaguar.jpg\",\n        \"/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"manufacturer/_alt\": \"Dunlop Image\"\n    },\n    {\n      \"tyrelabelimg\": [\n        \"http://www.blackcircles.com/webdb/tyrelabelling/fuelefficiency/e?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/wetgrip/a?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/noise/71-2?view=3154\"\n      ],\n      \"manufacturer/_source\": \"/images/manufacturer/michelin/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_title\": [\n        \"Car Tyre\",\n        \"Reinforced\"\n      ],\n      \"tyrelabelimg/_title\": [\n        \"Fuel Efficiency / Rolling Resistance:E\",\n        \"Wet Grip / Braking Performance:A\",\n        \"Noise Emission / Exterior Noise: 71 dBs, 2 Bars\"\n      ],\n      \"imgrating\": [\n        \"http://www.blackcircles.com/templates/images/tyres/variants/car-tyre.jpg\",\n        \"http://www.blackcircles.com/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"imgrating/_alt\": [\n        \"Car Tyre\",\n        \"Reinforced\"\n      ],\n      \"tyreimg/_source\": \"/wso/images/library/obj20180382?view=2885\",\n      \"tyreimg\": \"http://www.blackcircles.com/wso/images/library/obj20180382?view=2885\",\n      \"size\": \"245/40 R19 Y (98)\",\n      \"tyrelabelimg/_source\": [\n        \"/webdb/tyrelabelling/fuelefficiency/e?view=3154\",\n        \"/webdb/tyrelabelling/wetgrip/a?view=3154\",\n        \"/webdb/tyrelabelling/noise/71-2?view=3154\"\n      ],\n      \"tyrelabelimg/_alt\": [\n        \"Tyre Fuel Efficiency Rating: E\",\n        \"Tyre Wet Grip Rating:A\",\n        \"Noise Emission / Exterior Noise: 71 dBs, 2 Bars\"\n      ],\n      \"price\": \"£227.38\",\n      \"manufacturer\": \"http://www.blackcircles.com/images/manufacturer/michelin/Imagesmall?media=ImageLibrary\",\n      \"tyreimg/_alt\": \"Michelin Pilot Sport 3\",\n      \"manufacturername\": \"Michelin Pilot Sport 3\",\n      \"imgrating/_source\": [\n        \"/templates/images/tyres/variants/car-tyre.jpg\",\n        \"/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"manufacturer/_alt\": \"Michelin Image\"\n    },\n    {\n      \"tyrelabelimg\": [\n        \"http://www.blackcircles.com/webdb/tyrelabelling/fuelefficiency/g?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/wetgrip/a?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/noise/71-2?view=3154\"\n      ],\n      \"manufacturer/_source\": \"/images/manufacturer/continental/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_title\": [\n        \"Car Tyre\",\n        \"Reinforced\"\n      ],\n      \"tyrelabelimg/_title\": [\n        \"Fuel Efficiency / Rolling Resistance:G\",\n        \"Wet Grip / Braking Performance:A\",\n        \"Noise Emission / Exterior Noise: 71 dBs, 2 Bars\"\n      ],\n      \"imgrating\": [\n        \"http://www.blackcircles.com/templates/images/tyres/variants/car-tyre.jpg\",\n        \"http://www.blackcircles.com/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"imgrating/_alt\": [\n        \"Car Tyre\",\n        \"Reinforced\"\n      ],\n      \"tyreimg/_source\": \"/wso/images/library/obj24424018?view=2885\",\n      \"tyreimg\": \"http://www.blackcircles.com/wso/images/library/obj24424018?view=2885\",\n      \"size\": \"245/40 R19 Y (98)\",\n      \"tyrelabelimg/_source\": [\n        \"/webdb/tyrelabelling/fuelefficiency/g?view=3154\",\n        \"/webdb/tyrelabelling/wetgrip/a?view=3154\",\n        \"/webdb/tyrelabelling/noise/71-2?view=3154\"\n      ],\n      \"tyrelabelimg/_alt\": [\n        \"Tyre Fuel Efficiency Rating: G\",\n        \"Tyre Wet Grip Rating:A\",\n        \"Noise Emission / Exterior Noise: 71 dBs, 2 Bars\"\n      ],\n      \"price\": \"£227.47\",\n      \"manufacturer\": \"http://www.blackcircles.com/images/manufacturer/continental/Imagesmall?media=ImageLibrary\",\n      \"manufacturername\": \"Continental Sport Contact 5P\",\n      \"imgrating/_source\": [\n        \"/templates/images/tyres/variants/car-tyre.jpg\",\n        \"/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"manufacturer/_alt\": \"Continental Image\"\n    },\n    {\n      \"tyrelabelimg\": [\n        \"http://www.blackcircles.com/webdb/tyrelabelling/fuelefficiency/c?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/wetgrip/a?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/noise/74-3?view=3154\"\n      ],\n      \"manufacturer/_source\": \"/images/manufacturer/kumho/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_title\": [\n        \"Car Tyre\",\n        \"Reinforced\"\n      ],\n      \"tyrelabelimg/_title\": [\n        \"Fuel Efficiency / Rolling Resistance:C\",\n        \"Wet Grip / Braking Performance:A\",\n        \"Noise Emission / Exterior Noise: 74 dBs, 3 Bars\"\n      ],\n      \"imgrating\": [\n        \"http://www.blackcircles.com/templates/images/tyres/variants/car-tyre.jpg\",\n        \"http://www.blackcircles.com/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"imgrating/_alt\": [\n        \"Car Tyre\",\n        \"Reinforced\"\n      ],\n      \"tyreimg/_source\": \"/wso/images/library/obj23459953?view=2885\",\n      \"tyreimg\": \"http://www.blackcircles.com/wso/images/library/obj23459953?view=2885\",\n      \"size\": \"245/40 R19 Y (98)\",\n      \"tyrelabelimg/_source\": [\n        \"/webdb/tyrelabelling/fuelefficiency/c?view=3154\",\n        \"/webdb/tyrelabelling/wetgrip/a?view=3154\",\n        \"/webdb/tyrelabelling/noise/74-3?view=3154\"\n      ],\n      \"tyrelabelimg/_alt\": [\n        \"Tyre Fuel Efficiency Rating: C\",\n        \"Tyre Wet Grip Rating:A\",\n        \"Noise Emission / Exterior Noise: 74 dBs, 3 Bars\"\n      ],\n      \"price\": \"£161.71\",\n      \"manufacturer\": \"http://www.blackcircles.com/images/manufacturer/kumho/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_source\": [\n        \"/templates/images/tyres/variants/car-tyre.jpg\",\n        \"/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"manufacturer/_alt\": \"Kumho Image\"\n    },\n    {\n      \"tyrelabelimg\": [\n        \"http://www.blackcircles.com/webdb/tyrelabelling/fuelefficiency/f?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/wetgrip/b?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/noise/72-2?view=3154\"\n      ],\n      \"manufacturer/_source\": \"/images/manufacturer/falken/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_title\": [\n        \"Car Tyre\",\n        \"Reinforced\"\n      ],\n      \"tyrelabelimg/_title\": [\n        \"Fuel Efficiency / Rolling Resistance:F\",\n        \"Wet Grip / Braking Performance:B\",\n        \"Noise Emission / Exterior Noise: 72 dBs, 2 Bars\"\n      ],\n      \"imgrating\": [\n        \"http://www.blackcircles.com/templates/images/tyres/variants/car-tyre.jpg\",\n        \"http://www.blackcircles.com/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"imgrating/_alt\": [\n        \"Car Tyre\",\n        \"Reinforced\"\n      ],\n      \"tyreimg/_source\": \"/wso/images/library/obj24922139?view=2885\",\n      \"tyreimg\": \"http://www.blackcircles.com/wso/images/library/obj24922139?view=2885\",\n      \"size\": \"245/40 R19 Y (98)\",\n      \"tyrelabelimg/_source\": [\n        \"/webdb/tyrelabelling/fuelefficiency/f?view=3154\",\n        \"/webdb/tyrelabelling/wetgrip/b?view=3154\",\n        \"/webdb/tyrelabelling/noise/72-2?view=3154\"\n      ],\n      \"tyrelabelimg/_alt\": [\n        \"Tyre Fuel Efficiency Rating: F\",\n        \"Tyre Wet Grip Rating:B\",\n        \"Noise Emission / Exterior Noise: 72 dBs, 2 Bars\"\n      ],\n      \"price\": \"£171.90\",\n      \"manufacturer\": \"http://www.blackcircles.com/images/manufacturer/falken/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_source\": [\n        \"/templates/images/tyres/variants/car-tyre.jpg\",\n        \"/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"manufacturer/_alt\": \"Falken Image\"\n    },\n    {\n      \"tyrelabelimg\": [\n        \"http://www.blackcircles.com/webdb/tyrelabelling/fuelefficiency/c?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/wetgrip/a?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/noise/71-2?view=3154\"\n      ],\n      \"manufacturer/_source\": \"/images/manufacturer/hankook/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_title\": [\n        \"Car Tyre\",\n        \"Reinforced\"\n      ],\n      \"tyrelabelimg/_title\": [\n        \"Fuel Efficiency / Rolling Resistance:C\",\n        \"Wet Grip / Braking Performance:A\",\n        \"Noise Emission / Exterior Noise: 71 dBs, 2 Bars\"\n      ],\n      \"imgrating\": [\n        \"http://www.blackcircles.com/templates/images/tyres/variants/car-tyre.jpg\",\n        \"http://www.blackcircles.com/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"imgrating/_alt\": [\n        \"Car Tyre\",\n        \"Reinforced\"\n      ],\n      \"tyreimg/_source\": \"/wso/images/library/obj24380394?view=2885\",\n      \"tyreimg\": \"http://www.blackcircles.com/wso/images/library/obj24380394?view=2885\",\n      \"size\": \"245/40 R19 Y (98)\",\n      \"tyrelabelimg/_source\": [\n        \"/webdb/tyrelabelling/fuelefficiency/c?view=3154\",\n        \"/webdb/tyrelabelling/wetgrip/a?view=3154\",\n        \"/webdb/tyrelabelling/noise/71-2?view=3154\"\n      ],\n      \"tyrelabelimg/_alt\": [\n        \"Tyre Fuel Efficiency Rating: C\",\n        \"Tyre Wet Grip Rating:A\",\n        \"Noise Emission / Exterior Noise: 71 dBs, 2 Bars\"\n      ],\n      \"price\": \"£206.80\",\n      \"manufacturer\": \"http://www.blackcircles.com/images/manufacturer/hankook/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_source\": [\n        \"/templates/images/tyres/variants/car-tyre.jpg\",\n        \"/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"manufacturer/_alt\": \"Hankook Image\"\n    },\n    {\n      \"tyrelabelimg\": [\n        \"http://www.blackcircles.com/webdb/tyrelabelling/fuelefficiency/c?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/wetgrip/b?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/noise/72-2?view=3154\"\n      ],\n      \"manufacturer/_source\": \"/images/manufacturer/pirelli/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_title\": [\n        \"Car Tyre\",\n        \"Reinforced\"\n      ],\n      \"tyrelabelimg/_title\": [\n        \"Fuel Efficiency / Rolling Resistance:C\",\n        \"Wet Grip / Braking Performance:B\",\n        \"Noise Emission / Exterior Noise: 72 dBs, 2 Bars\"\n      ],\n      \"imgrating\": [\n        \"http://www.blackcircles.com/templates/images/tyres/variants/car-tyre.jpg\",\n        \"http://www.blackcircles.com/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"imgrating/_alt\": [\n        \"Car Tyre\",\n        \"Reinforced\"\n      ],\n      \"tyreimg/_source\": \"/wso/images/library/obj23702227?view=2885\",\n      \"tyreimg\": \"http://www.blackcircles.com/wso/images/library/obj23702227?view=2885\",\n      \"size\": \"245/40 R19 Y (98)\",\n      \"tyrelabelimg/_source\": [\n        \"/webdb/tyrelabelling/fuelefficiency/c?view=3154\",\n        \"/webdb/tyrelabelling/wetgrip/b?view=3154\",\n        \"/webdb/tyrelabelling/noise/72-2?view=3154\"\n      ],\n      \"tyrelabelimg/_alt\": [\n        \"Tyre Fuel Efficiency Rating: C\",\n        \"Tyre Wet Grip Rating:B\",\n        \"Noise Emission / Exterior Noise: 72 dBs, 2 Bars\"\n      ],\n      \"price\": \"£225.97\",\n      \"manufacturer\": \"http://www.blackcircles.com/images/manufacturer/pirelli/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_source\": [\n        \"/templates/images/tyres/variants/car-tyre.jpg\",\n        \"/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"manufacturer/_alt\": \"Pirelli Image\"\n    },\n    {\n      \"tyrelabelimg\": [\n        \"http://www.blackcircles.com/webdb/tyrelabelling/fuelefficiency/e?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/wetgrip/c?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/noise/70-2?view=3154\"\n      ],\n      \"manufacturer/_source\": \"/images/manufacturer/goodyear/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_title\": [\n        \"Car Tyre\",\n        \"BMW\",\n        \"Run Flat\"\n      ],\n      \"tyrelabelimg/_title\": [\n        \"Fuel Efficiency / Rolling Resistance:E\",\n        \"Wet Grip / Braking Performance:C\",\n        \"Noise Emission / Exterior Noise: 70 dBs, 2 Bars\"\n      ],\n      \"imgrating\": [\n        \"http://www.blackcircles.com/templates/images/tyres/variants/car-tyre.jpg\",\n        \"http://www.blackcircles.com/templates/images/manufacturer/car/bmw.jpg\",\n        \"http://www.blackcircles.com/templates/images/tyres/variants/runflat.jpg\"\n      ],\n      \"imgrating/_alt\": [\n        \"Car Tyre\",\n        \"BMW\",\n        \"Run Flat\"\n      ],\n      \"tyreimg/_source\": \"/wso/images/library/obj16419210?view=2885\",\n      \"tyreimg\": \"http://www.blackcircles.com/wso/images/library/obj16419210?view=2885\",\n      \"size\": \"245/40 R19 Y (94)\",\n      \"tyrelabelimg/_source\": [\n        \"/webdb/tyrelabelling/fuelefficiency/e?view=3154\",\n        \"/webdb/tyrelabelling/wetgrip/c?view=3154\",\n        \"/webdb/tyrelabelling/noise/70-2?view=3154\"\n      ],\n      \"tyrelabelimg/_alt\": [\n        \"Tyre Fuel Efficiency Rating: E\",\n        \"Tyre Wet Grip Rating:C\",\n        \"Noise Emission / Exterior Noise: 70 dBs, 2 Bars\"\n      ],\n      \"price\": \"£268.85\",\n      \"manufacturer\": \"http://www.blackcircles.com/images/manufacturer/goodyear/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_source\": [\n        \"/templates/images/tyres/variants/car-tyre.jpg\",\n        \"/templates/images/manufacturer/car/bmw.jpg\",\n        \"/templates/images/tyres/variants/runflat.jpg\"\n      ],\n      \"manufacturer/_alt\": \"Goodyear Image\"\n    },\n    {\n      \"tyrelabelimg\": [\n        \"http://www.blackcircles.com/webdb/tyrelabelling/fuelefficiency/f?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/wetgrip/b?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/noise/75-3?view=3154\"\n      ],\n      \"manufacturer/_source\": \"/images/manufacturer/yokohama/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_title\": \"Car Tyre\",\n      \"tyrelabelimg/_title\": [\n        \"Fuel Efficiency / Rolling Resistance:F\",\n        \"Wet Grip / Braking Performance:B\",\n        \"Noise Emission / Exterior Noise: 75 dBs, 3 Bars\"\n      ],\n      \"imgrating\": \"http://www.blackcircles.com/templates/images/tyres/variants/car-tyre.jpg\",\n      \"imgrating/_alt\": \"Car Tyre\",\n      \"tyreimg/_source\": \"/wso/images/library/obj20180347?view=2885\",\n      \"tyreimg\": \"http://www.blackcircles.com/wso/images/library/obj20180347?view=2885\",\n      \"size\": \"245/40 R19 W (94)\",\n      \"tyrelabelimg/_source\": [\n        \"/webdb/tyrelabelling/fuelefficiency/f?view=3154\",\n        \"/webdb/tyrelabelling/wetgrip/b?view=3154\",\n        \"/webdb/tyrelabelling/noise/75-3?view=3154\"\n      ],\n      \"tyrelabelimg/_alt\": [\n        \"Tyre Fuel Efficiency Rating: F\",\n        \"Tyre Wet Grip Rating:B\",\n        \"Noise Emission / Exterior Noise: 75 dBs, 3 Bars\"\n      ],\n      \"price\": \"£280.27\",\n      \"manufacturer\": \"http://www.blackcircles.com/images/manufacturer/yokohama/Imagesmall?media=ImageLibrary\",\n      \"tyreimg/_alt\": \"Yokohama Advan Neova AD08\",\n      \"imgrating/_source\": \"/templates/images/tyres/variants/car-tyre.jpg\",\n      \"manufacturer/_alt\": \"Yokohama Image\"\n    },\n    {\n      \"tyrelabelimg\": [\n        \"http://www.blackcircles.com/webdb/tyrelabelling/fuelefficiency/e?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/wetgrip/c?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/noise/72-2?view=3154\"\n      ],\n      \"manufacturer/_source\": \"/images/manufacturer/blackcircles-com/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_title\": [\n        \"Car Tyre\",\n        \"Reinforced\"\n      ],\n      \"tyrelabelimg/_title\": [\n        \"Fuel Efficiency / Rolling Resistance:E\",\n        \"Wet Grip / Braking Performance:C\",\n        \"Noise Emission / Exterior Noise: 72 dBs, 2 Bars\"\n      ],\n      \"imgrating/_alt\": [\n        \"Car Tyre\",\n        \"Reinforced\"\n      ],\n      \"imgrating\": [\n        \"http://www.blackcircles.com/templates/images/tyres/variants/car-tyre.jpg\",\n        \"http://www.blackcircles.com/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"size\": \"245/40 R19 Y (98)\",\n      \"tyrelabelimg/_source\": [\n        \"/webdb/tyrelabelling/fuelefficiency/e?view=3154\",\n        \"/webdb/tyrelabelling/wetgrip/c?view=3154\",\n        \"/webdb/tyrelabelling/noise/72-2?view=3154\"\n      ],\n      \"price\": \"£99.41\",\n      \"tyrelabelimg/_alt\": [\n        \"Tyre Fuel Efficiency Rating: E\",\n        \"Tyre Wet Grip Rating:C\",\n        \"Noise Emission / Exterior Noise: 72 dBs, 2 Bars\"\n      ],\n      \"manufacturer\": \"http://www.blackcircles.com/images/manufacturer/blackcircles-com/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_source\": [\n        \"/templates/images/tyres/variants/car-tyre.jpg\",\n        \"/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"manufacturer/_alt\": \"Blackcircles.com Image\"\n    },\n    {\n      \"tyrelabelimg\": [\n        \"http://www.blackcircles.com/webdb/tyrelabelling/fuelefficiency/e?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/wetgrip/b?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/noise/72-2?view=3154\"\n      ],\n      \"manufacturer/_source\": \"/images/manufacturer/uniroyal/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_title\": [\n        \"Car Tyre\",\n        \"Reinforced\"\n      ],\n      \"tyrelabelimg/_title\": [\n        \"Fuel Efficiency / Rolling Resistance:E\",\n        \"Wet Grip / Braking Performance:B\",\n        \"Noise Emission / Exterior Noise: 72 dBs, 2 Bars\"\n      ],\n      \"imgrating\": [\n        \"http://www.blackcircles.com/templates/images/tyres/variants/car-tyre.jpg\",\n        \"http://www.blackcircles.com/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"imgrating/_alt\": [\n        \"Car Tyre\",\n        \"Reinforced\"\n      ],\n      \"tyreimg/_source\": \"/wso/images/library/obj16004148?view=2885\",\n      \"tyreimg\": \"http://www.blackcircles.com/wso/images/library/obj16004148?view=2885\",\n      \"size\": \"245/40 R19 Y (98)\",\n      \"tyrelabelimg/_source\": [\n        \"/webdb/tyrelabelling/fuelefficiency/e?view=3154\",\n        \"/webdb/tyrelabelling/wetgrip/b?view=3154\",\n        \"/webdb/tyrelabelling/noise/72-2?view=3154\"\n      ],\n      \"tyrelabelimg/_alt\": [\n        \"Tyre Fuel Efficiency Rating: E\",\n        \"Tyre Wet Grip Rating:B\",\n        \"Noise Emission / Exterior Noise: 72 dBs, 2 Bars\"\n      ],\n      \"price\": \"£206.18\",\n      \"manufacturer\": \"http://www.blackcircles.com/images/manufacturer/uniroyal/Imagesmall?media=ImageLibrary\",\n      \"tyreimg/_alt\": \"Uniroyal Rainsport 2\",\n      \"imgrating/_source\": [\n        \"/templates/images/tyres/variants/car-tyre.jpg\",\n        \"/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"manufacturer/_alt\": \"Uniroyal Image\"\n    },\n    {\n      \"tyrelabelimg\": [\n        \"http://www.blackcircles.com/webdb/tyrelabelling/fuelefficiency/e?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/wetgrip/b?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/noise/68-1?view=3154\"\n      ],\n      \"manufacturer/_source\": \"/images/manufacturer/dunlop/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_title\": [\n        \"Car Tyre\",\n        \"Audi\",\n        \"Reinforced\"\n      ],\n      \"tyrelabelimg/_title\": [\n        \"Fuel Efficiency / Rolling Resistance:E\",\n        \"Wet Grip / Braking Performance:B\",\n        \"Noise Emission / Exterior Noise: 68 dBs, 1 Bar\"\n      ],\n      \"imgrating\": [\n        \"http://www.blackcircles.com/templates/images/tyres/variants/car-tyre.jpg\",\n        \"http://www.blackcircles.com/templates/images/manufacturer/car/audi.jpg\",\n        \"http://www.blackcircles.com/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"imgrating/_alt\": [\n        \"Car Tyre\",\n        \"Audi\",\n        \"Reinforced\"\n      ],\n      \"tyreimg/_source\": \"/wso/images/library/obj16003586?view=2885\",\n      \"tyreimg\": \"http://www.blackcircles.com/wso/images/library/obj16003586?view=2885\",\n      \"size\": \"245/40 R19 Y (98)\",\n      \"tyrelabelimg/_source\": [\n        \"/webdb/tyrelabelling/fuelefficiency/e?view=3154\",\n        \"/webdb/tyrelabelling/wetgrip/b?view=3154\",\n        \"/webdb/tyrelabelling/noise/68-1?view=3154\"\n      ],\n      \"tyrelabelimg/_alt\": [\n        \"Tyre Fuel Efficiency Rating: E\",\n        \"Tyre Wet Grip Rating:B\",\n        \"Noise Emission / Exterior Noise: 68 dBs, 1 Bar\"\n      ],\n      \"price\": \"£209.57\",\n      \"manufacturer\": \"http://www.blackcircles.com/images/manufacturer/dunlop/Imagesmall?media=ImageLibrary\",\n      \"tyreimg/_alt\": \"Dunlop SP Sport Maxx GT\",\n      \"imgrating/_source\": [\n        \"/templates/images/tyres/variants/car-tyre.jpg\",\n        \"/templates/images/manufacturer/car/audi.jpg\",\n        \"/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"manufacturer/_alt\": \"Dunlop Image\"\n    },\n    {\n      \"tyrelabelimg\": [\n        \"http://www.blackcircles.com/webdb/tyrelabelling/fuelefficiency/e?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/wetgrip/c?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/noise/71-2?view=3154\"\n      ],\n      \"manufacturer/_source\": \"/images/manufacturer/toyo/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_title\": [\n        \"Car Tyre\",\n        \"Reinforced\"\n      ],\n      \"tyrelabelimg/_title\": [\n        \"Fuel Efficiency / Rolling Resistance:E\",\n        \"Wet Grip / Braking Performance:C\",\n        \"Noise Emission / Exterior Noise: 71 dBs, 2 Bars\"\n      ],\n      \"imgrating\": [\n        \"http://www.blackcircles.com/templates/images/tyres/variants/car-tyre.jpg\",\n        \"http://www.blackcircles.com/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"imgrating/_alt\": [\n        \"Car Tyre\",\n        \"Reinforced\"\n      ],\n      \"tyreimg/_source\": \"/wso/images/library/obj23155575?view=2885\",\n      \"tyreimg\": \"http://www.blackcircles.com/wso/images/library/obj23155575?view=2885\",\n      \"size\": \"245/40 R19 Y (98)\",\n      \"tyrelabelimg/_source\": [\n        \"/webdb/tyrelabelling/fuelefficiency/e?view=3154\",\n        \"/webdb/tyrelabelling/wetgrip/c?view=3154\",\n        \"/webdb/tyrelabelling/noise/71-2?view=3154\"\n      ],\n      \"tyrelabelimg/_alt\": [\n        \"Tyre Fuel Efficiency Rating: E\",\n        \"Tyre Wet Grip Rating:C\",\n        \"Noise Emission / Exterior Noise: 71 dBs, 2 Bars\"\n      ],\n      \"price\": \"£219.44\",\n      \"manufacturer\": \"http://www.blackcircles.com/images/manufacturer/toyo/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_source\": [\n        \"/templates/images/tyres/variants/car-tyre.jpg\",\n        \"/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"manufacturer/_alt\": \"Toyo Image\"\n    },\n    {\n      \"tyrelabelimg\": [\n        \"http://www.blackcircles.com/webdb/tyrelabelling/fuelefficiency/f?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/wetgrip/c?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/noise/72-3?view=3154\"\n      ],\n      \"manufacturer/_source\": \"/images/manufacturer/bridgestone/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_title\": [\n        \"Car Tyre\",\n        \"BMW\",\n        \"Run Flat\"\n      ],\n      \"tyrelabelimg/_title\": [\n        \"Fuel Efficiency / Rolling Resistance:F\",\n        \"Wet Grip / Braking Performance:C\",\n        \"Noise Emission / Exterior Noise: 72 dBs, 3 Bars\"\n      ],\n      \"imgrating\": [\n        \"http://www.blackcircles.com/templates/images/tyres/variants/car-tyre.jpg\",\n        \"http://www.blackcircles.com/templates/images/manufacturer/car/bmw.jpg\",\n        \"http://www.blackcircles.com/templates/images/tyres/variants/runflat.jpg\"\n      ],\n      \"imgrating/_alt\": [\n        \"Car Tyre\",\n        \"BMW\",\n        \"Run Flat\"\n      ],\n      \"tyreimg/_source\": \"/wso/images/library/obj16003335?view=2885\",\n      \"tyreimg\": \"http://www.blackcircles.com/wso/images/library/obj16003335?view=2885\",\n      \"size\": \"245/40 R19 W (94)\",\n      \"tyrelabelimg/_source\": [\n        \"/webdb/tyrelabelling/fuelefficiency/f?view=3154\",\n        \"/webdb/tyrelabelling/wetgrip/c?view=3154\",\n        \"/webdb/tyrelabelling/noise/72-3?view=3154\"\n      ],\n      \"tyrelabelimg/_alt\": [\n        \"Tyre Fuel Efficiency Rating: F\",\n        \"Tyre Wet Grip Rating:C\",\n        \"Noise Emission / Exterior Noise: 72 dBs, 3 Bars\"\n      ],\n      \"price\": \"£241.80\",\n      \"manufacturer\": \"http://www.blackcircles.com/images/manufacturer/bridgestone/Imagesmall?media=ImageLibrary\",\n      \"tyreimg/_alt\": \"Bridgestone RE050A\",\n      \"imgrating/_source\": [\n        \"/templates/images/tyres/variants/car-tyre.jpg\",\n        \"/templates/images/manufacturer/car/bmw.jpg\",\n        \"/templates/images/tyres/variants/runflat.jpg\"\n      ],\n      \"manufacturer/_alt\": \"Bridgestone Image\"\n    },\n    {\n      \"tyrelabelimg\": [\n        \"http://www.blackcircles.com/webdb/tyrelabelling/fuelefficiency/e?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/wetgrip/b?view=3154\",\n        \"http://www.blackcircles.com/webdb/tyrelabelling/noise/69-1?view=3154\"\n      ],\n      \"manufacturer/_source\": \"/images/manufacturer/goodyear/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_title\": [\n        \"Car Tyre\",\n        \"BMW\",\n        \"Run Flat\",\n        \"Reinforced\"\n      ],\n      \"tyrelabelimg/_title\": [\n        \"Fuel Efficiency / Rolling Resistance:E\",\n        \"Wet Grip / Braking Performance:B\",\n        \"Noise Emission / Exterior Noise: 69 dBs, 1 Bar\"\n      ],\n      \"imgrating\": [\n        \"http://www.blackcircles.com/templates/images/tyres/variants/car-tyre.jpg\",\n        \"http://www.blackcircles.com/templates/images/manufacturer/car/bmw.jpg\",\n        \"http://www.blackcircles.com/templates/images/tyres/variants/runflat.jpg\",\n        \"http://www.blackcircles.com/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"imgrating/_alt\": [\n        \"Car Tyre\",\n        \"BMW\",\n        \"Run Flat\",\n        \"Reinforced\"\n      ],\n      \"tyreimg/_source\": \"/wso/images/library/obj16419210?view=2885\",\n      \"tyreimg\": \"http://www.blackcircles.com/wso/images/library/obj16419210?view=2885\",\n      \"size\": \"245/40 R19 Y (98)\",\n      \"tyrelabelimg/_source\": [\n        \"/webdb/tyrelabelling/fuelefficiency/e?view=3154\",\n        \"/webdb/tyrelabelling/wetgrip/b?view=3154\",\n        \"/webdb/tyrelabelling/noise/69-1?view=3154\"\n      ],\n      \"tyrelabelimg/_alt\": [\n        \"Tyre Fuel Efficiency Rating: E\",\n        \"Tyre Wet Grip Rating:B\",\n        \"Noise Emission / Exterior Noise: 69 dBs, 1 Bar\"\n      ],\n      \"price\": \"£269.70\",\n      \"manufacturer\": \"http://www.blackcircles.com/images/manufacturer/goodyear/Imagesmall?media=ImageLibrary\",\n      \"imgrating/_source\": [\n        \"/templates/images/tyres/variants/car-tyre.jpg\",\n        \"/templates/images/manufacturer/car/bmw.jpg\",\n        \"/templates/images/tyres/variants/runflat.jpg\",\n        \"/templates/images/tyres/variants/reinforced.jpg\"\n      ],\n      \"manufacturer/_alt\": \"Goodyear Image\"\n    }\n  ]\n}"
end

post "/update_repos" do
  Process.detach(fork{ exec "/home/ec2-user/update-repos.sh &"})
  "received repo update message"
end
