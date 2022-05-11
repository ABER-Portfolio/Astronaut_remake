{
    "id": "b692918b-a2eb-41d7-ad06-08871dc1c32f",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "GooglePlayServicesExtension",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "GooglePlayServicesExtension",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "GoogleMobileAdsExt",
    "copyToTargets": 562949953421320,
    "date": "2018-02-07 11:12:37",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "9840c7d7-b0c9-4297-be60-4bce0a5068e9",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "364cc72d-1824-4a49-b96c-f40c979634f9",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SUCCESS",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "fa7d51bd-e32f-47b7-9fa3-4e3bbbbdc849",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SERVICE_MISSING",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "a1d39152-30a3-4b8c-b664-da08c78a8c9c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SERVICE_UPDATING",
                    "hidden": false,
                    "value": "18"
                },
                {
                    "id": "98c89732-0c55-4ffd-9ced-de581e1f3df3",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SERVICE_VERSION_UPDATE_REQUIRED",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "3e8a59a4-d47e-4811-b08c-d7edb7d0d5d0",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SERVICE_DISABLED",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "babaa315-6358-4f85-a37c-febc3778ffca",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SERVICE_INVALID",
                    "hidden": false,
                    "value": "9"
                },
                {
                    "id": "77640663-2d5b-405f-a529-6074c9017672",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_EVENT_ID_POST_SCORE",
                    "hidden": false,
                    "value": "9818"
                },
                {
                    "id": "303b3ac7-1e9e-4377-b2e4-eaa388ea89c0",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_EVENT_ID_POST_ACHIEVEMENT",
                    "hidden": false,
                    "value": "9819"
                },
                {
                    "id": "22013655-e9dc-4ecc-93f2-14d50c97d17c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_EVENT_ID_REVEAL_ACHIEVEMENT",
                    "hidden": false,
                    "value": "9821"
                },
                {
                    "id": "1680616a-1d0a-436a-ad57-75c14c95f6cb",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_EVENT_ID_INCREMENT_ACHIEVEMENT",
                    "hidden": false,
                    "value": "9820"
                }
            ],
            "copyToTargets": 562949953421320,
            "filename": "GooglePlayServicesExtension.ext",
            "final": "",
            "functions": [
                {
                    "id": "be56d73a-02ab-4d9d-bcea-638c65f646e1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GooglePlayServices_Status",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "GooglePlayServices_Status",
                    "returnType": 2
                },
                {
                    "id": "74b9e144-a55f-46d5-a066-bb5710b95acc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GooglePlayServices_Init",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "GooglePlayServices_Init",
                    "returnType": 2
                },
                {
                    "id": "2ad06224-3f9c-4cf6-8cd3-d874e68f547b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "onRevealAchievement",
                    "help": "GooglePlayServices_AchievementReveal(achievement_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GooglePlayServices_AchievementReveal",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 4,
            "order": [
                "be56d73a-02ab-4d9d-bcea-638c65f646e1",
                "74b9e144-a55f-46d5-a066-bb5710b95acc",
                "2ad06224-3f9c-4cf6-8cd3-d874e68f547b"
            ],
            "origname": "extensions\\GooglePlayServicesExtension.ext",
            "uncompress": false
        }
    ],
    "gradleinject": "compile 'com.google.android.gms:play-services-games:16.0.0'\\u000d\\u000acompile 'com.google.android.gms:play-services-auth:16.0.1'\\u000d\\u000a",
    "helpfile": "",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "com.yoyogames.googleplayservicesextension",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": 562949953421320,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "3.1.9"
}