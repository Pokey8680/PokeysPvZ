.class Lcom/ea/nimble/inappmessage/InAppMessageImpl$5;
.super Ljava/lang/Object;
.source "InAppMessageImpl.java"

# interfaces
.implements Lcom/ea/nimble/SynergyNetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/inappmessage/InAppMessageImpl;->refreshInAppMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/inappmessage/InAppMessageImpl;


# direct methods
.method constructor <init>(Lcom/ea/nimble/inappmessage/InAppMessageImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/inappmessage/InAppMessageImpl;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/ea/nimble/inappmessage/InAppMessageImpl$5;->this$0:Lcom/ea/nimble/inappmessage/InAppMessageImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 24
    .param p1, "handle"    # Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .prologue
    .line 318
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IAM callback done is status code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v9

    invoke-interface {v9}, Lcom/ea/nimble/ISynergyResponse;->getHttpResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v9

    invoke-interface {v9}, Lcom/ea/nimble/IHttpResponse;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ea/nimble/inappmessage/InAppMessageImpl$5;->this$0:Lcom/ea/nimble/inappmessage/InAppMessageImpl;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->access$102(Lcom/ea/nimble/inappmessage/InAppMessageImpl;Lcom/ea/nimble/SynergyNetworkConnectionHandle;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .line 323
    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v8

    invoke-interface {v8}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v8

    if-nez v8, :cond_0

    .line 328
    :try_start_0
    new-instance v21, Lorg/json/JSONObject;

    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v8

    invoke-interface {v8}, Lcom/ea/nimble/ISynergyResponse;->getJsonData()Ljava/util/Map;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 331
    .local v21, "jObject":Lorg/json/JSONObject;
    const-string v8, "resultCode"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 332
    .local v23, "resultCode":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMessage result code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "~"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    const-string v8, "-50005"

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 516
    .end local v21    # "jObject":Lorg/json/JSONObject;
    .end local v23    # "resultCode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 339
    .restart local v21    # "jObject":Lorg/json/JSONObject;
    .restart local v23    # "resultCode":Ljava/lang/String;
    :cond_1
    const-string v8, "1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_0

    .line 344
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMessage BODY: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    const-string v8, "message"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 347
    .local v4, "msgString":Ljava/lang/String;
    const-string v8, "title"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "titleString":Ljava/lang/String;
    const-string v8, "url"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, "urlString":Ljava/lang/String;
    const-string v8, "messageId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 351
    .local v2, "messageId":I
    const-string v6, ""

    .line 353
    .local v6, "buttonLabel2":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v8

    invoke-interface {v8}, Lcom/ea/nimble/IApplicationEnvironment;->getShortApplicationLanguageCode()Ljava/lang/String;

    move-result-object v18

    .line 355
    .local v18, "appLangCode":Ljava/lang/String;
    invoke-static {v5}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 357
    const-string v8, "fr"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    .line 359
    const-string v7, "ANNULER"

    .line 463
    .local v7, "buttonLabel1":Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    const-string v8, "smarturl.it"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_18

    .line 465
    :cond_2
    new-instance v1, Lcom/ea/nimble/inappmessage/Message;

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/ea/nimble/inappmessage/Message;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .local v1, "newMessage":Lcom/ea/nimble/inappmessage/Message;
    invoke-static {v1}, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->access$200(Lcom/ea/nimble/inappmessage/Message;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    .end local v1    # "newMessage":Lcom/ea/nimble/inappmessage/Message;
    .end local v2    # "messageId":I
    .end local v3    # "titleString":Ljava/lang/String;
    .end local v4    # "msgString":Ljava/lang/String;
    .end local v5    # "urlString":Ljava/lang/String;
    .end local v6    # "buttonLabel2":Ljava/lang/String;
    .end local v7    # "buttonLabel1":Ljava/lang/String;
    .end local v18    # "appLangCode":Ljava/lang/String;
    .end local v21    # "jObject":Lorg/json/JSONObject;
    .end local v23    # "resultCode":Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 513
    .local v20, "e":Lorg/json/JSONException;
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 361
    .end local v20    # "e":Lorg/json/JSONException;
    .restart local v2    # "messageId":I
    .restart local v3    # "titleString":Ljava/lang/String;
    .restart local v4    # "msgString":Ljava/lang/String;
    .restart local v5    # "urlString":Ljava/lang/String;
    .restart local v6    # "buttonLabel2":Ljava/lang/String;
    .restart local v18    # "appLangCode":Ljava/lang/String;
    .restart local v21    # "jObject":Lorg/json/JSONObject;
    .restart local v23    # "resultCode":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v8, "it"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_4

    .line 363
    const-string v7, "ANNULLA"

    .restart local v7    # "buttonLabel1":Ljava/lang/String;
    goto :goto_1

    .line 365
    .end local v7    # "buttonLabel1":Ljava/lang/String;
    :cond_4
    const-string v8, "de"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_5

    .line 367
    const-string v7, "ABBRECHEN"

    .restart local v7    # "buttonLabel1":Ljava/lang/String;
    goto :goto_1

    .line 369
    .end local v7    # "buttonLabel1":Ljava/lang/String;
    :cond_5
    const-string v8, "es"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    .line 371
    const-string v7, "CANCELAR"

    .restart local v7    # "buttonLabel1":Ljava/lang/String;
    goto :goto_1

    .line 373
    .end local v7    # "buttonLabel1":Ljava/lang/String;
    :cond_6
    const-string v8, "ja"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_7

    .line 375
    const-string v7, "\u30ad\u30e3\u30f3\u30bb\u30eb"

    .restart local v7    # "buttonLabel1":Ljava/lang/String;
    goto :goto_1

    .line 377
    .end local v7    # "buttonLabel1":Ljava/lang/String;
    :cond_7
    const-string v8, "zh"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_8

    .line 379
    const-string v7, "\u53d6\u6d88"

    .restart local v7    # "buttonLabel1":Ljava/lang/String;
    goto :goto_1

    .line 381
    .end local v7    # "buttonLabel1":Ljava/lang/String;
    :cond_8
    const-string v8, "ko"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_9

    .line 383
    const-string v7, "\ucde8\uc18c"

    .restart local v7    # "buttonLabel1":Ljava/lang/String;
    goto :goto_1

    .line 385
    .end local v7    # "buttonLabel1":Ljava/lang/String;
    :cond_9
    const-string v8, "nl"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_a

    .line 387
    const-string v7, "Annuleren"

    .restart local v7    # "buttonLabel1":Ljava/lang/String;
    goto :goto_1

    .line 389
    .end local v7    # "buttonLabel1":Ljava/lang/String;
    :cond_a
    const-string v8, "ru"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_b

    .line 391
    const-string v7, "\u041e\u0442\u043c\u0435\u043d\u0430"

    .restart local v7    # "buttonLabel1":Ljava/lang/String;
    goto/16 :goto_1

    .line 393
    .end local v7    # "buttonLabel1":Ljava/lang/String;
    :cond_b
    const-string v8, "pt"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_c

    .line 395
    const-string v7, "Cancelar"

    .restart local v7    # "buttonLabel1":Ljava/lang/String;
    goto/16 :goto_1

    .line 399
    .end local v7    # "buttonLabel1":Ljava/lang/String;
    :cond_c
    const-string v7, "Cancel"

    .restart local v7    # "buttonLabel1":Ljava/lang/String;
    goto/16 :goto_1

    .line 404
    .end local v7    # "buttonLabel1":Ljava/lang/String;
    :cond_d
    const-string v8, "fr"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_e

    .line 406
    const-string v7, "Non, merci"

    .line 407
    .restart local v7    # "buttonLabel1":Ljava/lang/String;
    const-string v6, "Oui"

    goto/16 :goto_1

    .line 409
    .end local v7    # "buttonLabel1":Ljava/lang/String;
    :cond_e
    const-string v8, "it"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_f

    .line 411
    const-string v7, "No, grazie"

    .line 412
    .restart local v7    # "buttonLabel1":Ljava/lang/String;
    const-string v6, "S\u00ec"

    goto/16 :goto_1

    .line 414
    .end local v7    # "buttonLabel1":Ljava/lang/String;
    :cond_f
    const-string v8, "de"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_10

    .line 416
    const-string v7, "Nein, danke"

    .line 417
    .restart local v7    # "buttonLabel1":Ljava/lang/String;
    const-string v6, "Ja"

    goto/16 :goto_1

    .line 419
    .end local v7    # "buttonLabel1":Ljava/lang/String;
    :cond_10
    const-string v8, "es"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_11

    .line 421
    const-string v7, "No, gracias"

    .line 422
    .restart local v7    # "buttonLabel1":Ljava/lang/String;
    const-string v6, "S\u00ed"

    goto/16 :goto_1

    .line 424
    .end local v7    # "buttonLabel1":Ljava/lang/String;
    :cond_11
    const-string v8, "ko"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_12

    .line 426
    const-string v7, "\uc544\ub2c8\uc694"

    .line 427
    .restart local v7    # "buttonLabel1":Ljava/lang/String;
    const-string v6, "\uc608"

    goto/16 :goto_1

    .line 429
    .end local v7    # "buttonLabel1":Ljava/lang/String;
    :cond_12
    const-string v8, "zh"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_13

    .line 431
    const-string v7, "\u5426,\u8c22\u8c22"

    .line 432
    .restart local v7    # "buttonLabel1":Ljava/lang/String;
    const-string v6, "\u662f"

    goto/16 :goto_1

    .line 434
    .end local v7    # "buttonLabel1":Ljava/lang/String;
    :cond_13
    const-string v8, "ja"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_14

    .line 436
    const-string v7, "\u3044\u3044\u3048"

    .line 437
    .restart local v7    # "buttonLabel1":Ljava/lang/String;
    const-string v6, "\u306f\u3044"

    goto/16 :goto_1

    .line 439
    .end local v7    # "buttonLabel1":Ljava/lang/String;
    :cond_14
    const-string v8, "nl"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_15

    .line 441
    const-string v7, "Nee, bedankt"

    .line 442
    .restart local v7    # "buttonLabel1":Ljava/lang/String;
    const-string v6, "Ja"

    goto/16 :goto_1

    .line 444
    .end local v7    # "buttonLabel1":Ljava/lang/String;
    :cond_15
    const-string v8, "ru"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_16

    .line 446
    const-string v7, "\u041d\u0435\u0442, \u0441\u043f\u0430\u0441\u0438\u0431\u043e"

    .line 447
    .restart local v7    # "buttonLabel1":Ljava/lang/String;
    const-string v6, "\u0414\u0430"

    goto/16 :goto_1

    .line 449
    .end local v7    # "buttonLabel1":Ljava/lang/String;
    :cond_16
    const-string v8, "pt"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_17

    .line 451
    const-string v7, "N\u00e3o, obrigado"

    .line 452
    .restart local v7    # "buttonLabel1":Ljava/lang/String;
    const-string v6, "Sim"

    goto/16 :goto_1

    .line 455
    .end local v7    # "buttonLabel1":Ljava/lang/String;
    :cond_17
    const-string v7, "No, Thanks"

    .line 456
    .restart local v7    # "buttonLabel1":Ljava/lang/String;
    const-string v6, "YES"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 474
    :cond_18
    :try_start_2
    new-instance v22, Ljava/net/URL;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 475
    .local v22, "resourceUrl":Ljava/net/URL;
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v19

    check-cast v19, Ljava/net/HttpURLConnection;

    .line 476
    .local v19, "conn":Ljava/net/HttpURLConnection;
    const/16 v8, 0x3a98

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 477
    const/16 v8, 0x3a98

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 479
    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 480
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->connect()V

    .line 483
    const-string v8, "Location"

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 486
    .local v12, "location":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v8

    invoke-interface {v8}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "android_id"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 487
    .local v17, "androidId":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v8

    invoke-interface {v8}, Lcom/ea/nimble/IApplicationEnvironment;->getGoogleAdvertisingId()Ljava/lang/String;

    move-result-object v16

    .line 490
    .local v16, "advertiserId":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&android_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 492
    if-eqz v16, :cond_19

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_19

    .line 494
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&google_aid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 498
    :cond_19
    new-instance v1, Lcom/ea/nimble/inappmessage/Message;

    const/4 v15, 0x0

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v13, v6

    move-object v14, v7

    invoke-direct/range {v8 .. v15}, Lcom/ea/nimble/inappmessage/Message;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .restart local v1    # "newMessage":Lcom/ea/nimble/inappmessage/Message;
    invoke-static {v1}, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->access$200(Lcom/ea/nimble/inappmessage/Message;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 503
    .end local v1    # "newMessage":Lcom/ea/nimble/inappmessage/Message;
    .end local v12    # "location":Ljava/lang/String;
    .end local v16    # "advertiserId":Ljava/lang/String;
    .end local v17    # "androidId":Ljava/lang/String;
    .end local v19    # "conn":Ljava/net/HttpURLConnection;
    .end local v22    # "resourceUrl":Ljava/net/URL;
    :catch_1
    move-exception v20

    .line 505
    .local v20, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error happened: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
