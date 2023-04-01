
.DEFAULT_GOAL := project

export APP_NAME = ILoveXcodegen
export BUNDLE_IDENTIFIER = com.innocv.ilovexcodegen

project:
	xcodegen -s project.yml

resources:
	mkdir -p "sources/resources/Supporting Files/Generated"
	swiftgen config run --config swiftgen.yml

clean:
	rm -rf *.xcodeproj
