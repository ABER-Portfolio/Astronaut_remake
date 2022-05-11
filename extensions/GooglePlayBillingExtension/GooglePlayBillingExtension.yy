{
    "id": "35f647d6-dbc4-4d5d-a560-29c62c1b1692",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "GooglePlayBillingExtension",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        "com.android.vending.BILLING"
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "GooglePlayBilling",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 8,
    "date": "2018-02-07 11:12:38",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "864a770d-d289-4a1b-a3fa-706827d7fea2",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "fdd4f830-e9fc-42df-a928-01539d81a94f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gpb_iap_receipt",
                    "hidden": false,
                    "value": "12001"
                },
                {
                    "id": "c5aa6dd3-5b9b-44e7-a75c-95d4a2670fa7",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gpb_purchase_status",
                    "hidden": false,
                    "value": "12002"
                },
                {
                    "id": "4187c5fb-2813-463f-8303-36ab4766eda0",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gpb_product_data_response",
                    "hidden": false,
                    "value": "12003"
                },
                {
                    "id": "b8ca15b1-486d-4e24-9da3-bf90011ac965",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gpb_store_connect",
                    "hidden": false,
                    "value": "12005"
                },
                {
                    "id": "ad15da05-3bf1-4ba2-89d7-fc7b18fe162b",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gpb_store_connect_failed",
                    "hidden": false,
                    "value": "12006"
                },
                {
                    "id": "12a2e67d-ad81-4e9c-a353-11f873b47f3c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gpb_product_consume_response",
                    "hidden": false,
                    "value": "12007"
                },
                {
                    "id": "050279be-e44b-4dd2-8572-ba2f1592311d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gpb_acknowledge_purchase_response",
                    "hidden": false,
                    "value": "12008"
                },
                {
                    "id": "84cad528-945d-4c5c-8a00-e375bafd714d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gpb_subscription_data_response",
                    "hidden": false,
                    "value": "12009"
                },
                {
                    "id": "88162bea-71cc-4e53-807b-feecfb9391ca",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gpb_purchase_state_pending",
                    "hidden": false,
                    "value": "13002"
                },
                {
                    "id": "3499bab1-9fb4-437f-9d20-d5e1659c71ea",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gpb_purchase_state_purchased",
                    "hidden": false,
                    "value": "13001"
                },
                {
                    "id": "47470142-0f06-48ae-94b1-1f17b70b7fc1",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gpb_purchase_state_unspecified",
                    "hidden": false,
                    "value": "13000"
                },
                {
                    "id": "fe281f14-60ba-4dbd-a9a8-d4a01309791d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gpb_purchase_skutype_inapp",
                    "hidden": false,
                    "value": "\"inapp\""
                },
                {
                    "id": "e8dae92e-f32d-48ab-8f35-3dc49521b9e2",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gpb_purchase_skutype_subs",
                    "hidden": false,
                    "value": "\"subs\""
                },
                {
                    "id": "91269b09-a9b9-42a8-a408-2969e9b6de49",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gpb_error_unknown",
                    "hidden": false,
                    "value": "-1"
                },
                {
                    "id": "f459690e-b469-479a-871e-0435e2ddda5d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gpb_no_error",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "cc237f86-d21f-4396-bf9b-a7dd5fde14f7",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gpb_error_not_initialised",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "93c9f98d-0bbe-4648-94c2-ccb765a5e463",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gpb_error_no_skus",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "d4aa031c-a973-4208-aad4-f2d8e8edc0e9",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "gpb_error_selected_sku_list_empty",
                    "hidden": false,
                    "value": "3"
                }
            ],
            "copyToTargets": 8,
            "filename": "GooglePlayBillingExtension.ext",
            "final": "",
            "functions": [
                {
                    "id": "a31c2242-292f-4ac1-b2cd-5c6b1eb26503",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GPBilling_Init",
                    "help": "GPBilling_Init()",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_Init",
                    "returnType": 2
                },
                {
                    "id": "55c38752-880c-4d2e-8b0a-2ece2df28171",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GPBilling_QueryProducts",
                    "help": "GPBilling_QueryProducts()",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_QueryProducts",
                    "returnType": 2
                },
                {
                    "id": "692372ce-65ce-4b4e-b74e-86f4a5a1acfc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_AddProduct",
                    "help": "GPBilling_AddProduct(product_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_AddProduct",
                    "returnType": 2
                },
                {
                    "id": "28adb817-1da5-48fb-b923-c5ce3bf0cf6b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_PurchaseProduct",
                    "help": "GPBilling_PurchaseProduct(product_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_PurchaseProduct",
                    "returnType": 2
                },
                {
                    "id": "2c969872-b659-4bd0-b1ac-59b364e4682c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_Sku_GetDescription",
                    "help": "GPBilling_Sku_GetDescription(product_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_Sku_GetDescription",
                    "returnType": 1
                },
                {
                    "id": "cc963e38-c826-4fe3-bcf9-e05bbb5cc26c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_Sku_GetFreeTrialPeriod",
                    "help": "GPBilling_Sku_GetFreeTrialPeriod(product_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_Sku_GetFreeTrialPeriod",
                    "returnType": 1
                },
                {
                    "id": "daeed3af-2175-4057-baea-0dbfb6b039de",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_Sku_GetIconUrl",
                    "help": "GPBilling_Sku_GetIconUrl(product_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_Sku_GetIconUrl",
                    "returnType": 1
                },
                {
                    "id": "51c4f1e4-1408-47b9-92e7-b8ff378902ac",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_Sku_GetIntroductoryPrice",
                    "help": "GPBilling_Sku_GetIntroductoryPrice(product_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_Sku_GetIntroductoryPrice",
                    "returnType": 1
                },
                {
                    "id": "ce34faf5-d45b-44b5-b336-33a7b9927e00",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_Sku_GetIntroductoryPriceAmountMicros",
                    "help": "GPBilling_Sku_GetIntroductoryPriceAmountMicros(product_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_Sku_GetIntroductoryPriceAmountMicros",
                    "returnType": 2
                },
                {
                    "id": "87ef2c6e-b665-4eef-b794-c9909060730b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_Sku_GetIntroductoryPriceCycles",
                    "help": "GPBilling_Sku_GetIntroductoryPriceCycles(product_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_Sku_GetIntroductoryPriceCycles",
                    "returnType": 1
                },
                {
                    "id": "c2b0a880-8683-49a3-89d6-1c88e90652df",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_Sku_GetIntroductoryPricePeriod",
                    "help": "GPBilling_Sku_GetIntroductoryPricePeriod(product_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_Sku_GetIntroductoryPricePeriod",
                    "returnType": 1
                },
                {
                    "id": "c32fffb3-0c6a-4094-ae83-b5d170e35536",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_Sku_GetOriginalJson",
                    "help": "GPBilling_Sku_GetOriginalJson(product_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_Sku_GetOriginalJson",
                    "returnType": 1
                },
                {
                    "id": "eacf06f7-ec67-40f6-acba-877fb9b99167",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_Sku_GetOriginalPrice",
                    "help": "GPBilling_Sku_GetOriginalPrice(product_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_Sku_GetOriginalPrice",
                    "returnType": 1
                },
                {
                    "id": "42b911f2-9721-4895-92f1-9b1edd68149a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_Sku_GetOriginalPriceAmountMicros",
                    "help": "GPBilling_Sku_GetOriginalPriceAmountMicros(product_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_Sku_GetOriginalPriceAmountMicros",
                    "returnType": 1
                },
                {
                    "id": "73c42d5d-773e-4016-8723-cd7a1d39c728",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_Sku_GetPrice",
                    "help": "GPBilling_Sku_GetPrice(product_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_Sku_GetPrice",
                    "returnType": 1
                },
                {
                    "id": "87a2c568-b884-4794-9020-4f2bf3a7004d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_Sku_GetPriceAmountMicros",
                    "help": "GPBilling_Sku_GetPriceAmountMicros(product_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_Sku_GetPriceAmountMicros",
                    "returnType": 2
                },
                {
                    "id": "3a27fc5a-1256-4d15-a2aa-6774a03d2653",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_Sku_GetPriceCurrencyCode",
                    "help": "GPBilling_Sku_GetPriceCurrencyCode(product_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_Sku_GetPriceCurrencyCode",
                    "returnType": 1
                },
                {
                    "id": "64773198-6a8b-4c49-9226-f8a3750e972f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_Sku_GetSubscriptionPeriod",
                    "help": "GPBilling_Sku_GetSubscriptionPeriod(product_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_Sku_GetSubscriptionPeriod",
                    "returnType": 1
                },
                {
                    "id": "27a59e3d-ef0f-4740-bbaf-0215df2be044",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_Sku_GetTitle",
                    "help": "GPBilling_Sku_GetTitle(product_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_Sku_GetTitle",
                    "returnType": 1
                },
                {
                    "id": "cbc5fcfd-d079-49fc-948d-1d0f93923b40",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_Sku_GetType",
                    "help": "GPBilling_Sku_GetType(product_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_Sku_GetType",
                    "returnType": 1
                },
                {
                    "id": "a6220146-6578-4084-a3f3-ae3734d00550",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_Sku_IsRewarded",
                    "help": "GPBilling_Sku_IsRewarded(product_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_Sku_IsRewarded",
                    "returnType": 2
                },
                {
                    "id": "03b92385-5e0c-41bb-83ed-21583c97b039",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GPBilling_IsStoreConnected",
                    "help": "GPBilling_IsStoreConnected()",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_IsStoreConnected",
                    "returnType": 2
                },
                {
                    "id": "604bcd29-13c6-406e-b537-4fe6258bdf08",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_ConsumeProduct",
                    "help": "GPBilling_ConsumeProduct(purchase_token)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_ConsumeProduct",
                    "returnType": 2
                },
                {
                    "id": "8a9796e9-ff5b-4bdc-9538-4e3b36f9f284",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_QueryPurchases",
                    "help": "GPBilling_QueryPurchases(product_type)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_QueryPurchases",
                    "returnType": 1
                },
                {
                    "id": "06a436e4-08f2-43d9-b2d9-c5c5c52244eb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_Purchase_GetState",
                    "help": "GPBilling_Purchase_GetState(purchase_token)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_Purchase_GetState",
                    "returnType": 2
                },
                {
                    "id": "8ff321a5-8957-49a3-86dc-372b4f32379f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "GPBilling_Purchase_VerifySignature",
                    "help": "GPBilling_Purchase_VerifySignature(purchase_token)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_Purchase_VerifySignature",
                    "returnType": 2
                },
                {
                    "id": "b21cbc24-27a0-41de-8348-e7a4aae55a5d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_Purchase_GetSignature",
                    "help": "GPBilling_Purchase_GetSignature(purchase_token)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_Purchase_GetSignature",
                    "returnType": 1
                },
                {
                    "id": "a14a1c3b-dee5-43e7-bc5d-79e48ee7b80e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_AcknowledgePurchase",
                    "help": "GPBilling_AcknowledgePurchase(purchase_token)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_AcknowledgePurchase",
                    "returnType": 2
                },
                {
                    "id": "9a1791ca-c569-4593-b530-3d71fa976fbf",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_AddSubscription",
                    "help": "GPBilling_AddSubscription(product_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_AddSubscription",
                    "returnType": 2
                },
                {
                    "id": "76980ac2-8932-435e-a1f7-d612aa94b289",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GPBilling_QuerySubscriptions",
                    "help": "GPBilling_QuerySubscriptions()",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_QuerySubscriptions",
                    "returnType": 2
                },
                {
                    "id": "38c28e21-468a-452e-b9bc-3359f67155d4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_PurchaseSubscription",
                    "help": "GPBilling_PurchaseSubscription(product_id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_PurchaseSubscription",
                    "returnType": 2
                },
                {
                    "id": "778f9522-b351-4a74-8228-b93821a6dcea",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GPBilling_Purchase_GetOriginalJson",
                    "help": "GPBilling_Purchase_GetOriginalJson(purchaseToken)",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_Purchase_GetOriginalJson",
                    "returnType": 1
                },
                {
                    "id": "dd4d2704-5996-4bfb-b201-09e8d35be3ac",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GPBilling_ConnectToStore",
                    "help": "GPBilling_ConnectToStore()",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_ConnectToStore",
                    "returnType": 2
                },
                {
                    "id": "03611a1a-75a3-4ccc-a4b2-733344181146",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GPBilling_GetStatus",
                    "help": "GPBilling_GetStatus()",
                    "hidden": false,
                    "kind": 4,
                    "name": "GPBilling_GetStatus",
                    "returnType": 2
                }
            ],
            "init": "GPBilling_Init",
            "kind": 4,
            "order": [
                "a31c2242-292f-4ac1-b2cd-5c6b1eb26503",
                "dd4d2704-5996-4bfb-b201-09e8d35be3ac",
                "03b92385-5e0c-41bb-83ed-21583c97b039",
                "03611a1a-75a3-4ccc-a4b2-733344181146",
                "692372ce-65ce-4b4e-b74e-86f4a5a1acfc",
                "9a1791ca-c569-4593-b530-3d71fa976fbf",
                "55c38752-880c-4d2e-8b0a-2ece2df28171",
                "76980ac2-8932-435e-a1f7-d612aa94b289",
                "8a9796e9-ff5b-4bdc-9538-4e3b36f9f284",
                "28adb817-1da5-48fb-b923-c5ce3bf0cf6b",
                "38c28e21-468a-452e-b9bc-3359f67155d4",
                "a14a1c3b-dee5-43e7-bc5d-79e48ee7b80e",
                "604bcd29-13c6-406e-b537-4fe6258bdf08",
                "2c969872-b659-4bd0-b1ac-59b364e4682c",
                "cc963e38-c826-4fe3-bcf9-e05bbb5cc26c",
                "daeed3af-2175-4057-baea-0dbfb6b039de",
                "51c4f1e4-1408-47b9-92e7-b8ff378902ac",
                "ce34faf5-d45b-44b5-b336-33a7b9927e00",
                "87ef2c6e-b665-4eef-b794-c9909060730b",
                "c2b0a880-8683-49a3-89d6-1c88e90652df",
                "c32fffb3-0c6a-4094-ae83-b5d170e35536",
                "eacf06f7-ec67-40f6-acba-877fb9b99167",
                "42b911f2-9721-4895-92f1-9b1edd68149a",
                "73c42d5d-773e-4016-8723-cd7a1d39c728",
                "87a2c568-b884-4794-9020-4f2bf3a7004d",
                "3a27fc5a-1256-4d15-a2aa-6774a03d2653",
                "64773198-6a8b-4c49-9226-f8a3750e972f",
                "27a59e3d-ef0f-4740-bbaf-0215df2be044",
                "cbc5fcfd-d079-49fc-948d-1d0f93923b40",
                "a6220146-6578-4084-a3f3-ae3734d00550",
                "06a436e4-08f2-43d9-b2d9-c5c5c52244eb",
                "b21cbc24-27a0-41de-8348-e7a4aae55a5d",
                "8ff321a5-8957-49a3-86dc-372b4f32379f",
                "778f9522-b351-4a74-8228-b93821a6dcea"
            ],
            "origname": "extensions\\GooglePlayBillingExtension.ext",
            "uncompress": false
        }
    ],
    "gradleinject": "compile 'com.android.billingclient:billing:2.0.1'",
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
    "packageID": "com.yoyogames.googleplayservicesiap",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": 8,
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