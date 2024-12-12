.class public Lcom/chillingo/libterms/http/REST/CRest/TermsConfigCRestServiceController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chillingo/libterms/http/REST/TermsConfigRESTService;


# instance fields
.field private a:Lorg/codegist/crest/CRest;

.field private b:Lcom/chillingo/libterms/http/REST/CRest/TermsConfigCrestService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public downloadConfig(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/chillingo/libterms/model/TermsConfig;
    .locals 10
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "currentVersion"    # Ljava/lang/Integer;
    .param p3, "sdkVersion"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "platform"    # Ljava/lang/String;
    .param p6, "preCOPPA"    # Ljava/lang/Boolean;
    .param p7, "ageWhenAccepted"    # Ljava/lang/Integer;
    .param p8, "complianceLevelString"    # Ljava/lang/String;
    .param p9, "acceptLanguage"    # Ljava/lang/String;

    .prologue
    .line 56
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/chillingo/libterms/http/REST/CRest/TermsConfigCRestServiceController;->b:Lcom/chillingo/libterms/http/REST/CRest/TermsConfigCrestService;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/chillingo/libterms/http/REST/CRest/TermsConfigCrestService;->getTermsConfig(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/chillingo/libterms/model/TermsConfig;
    :try_end_0
    .catch Lorg/codegist/crest/CRestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 71
    const-string v1, "TermsConfigCRestServiceController"

    const-string v2, "Failed to download terms config"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    throw v0
.end method

.method public initialiseWithURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "targetURL"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v0, Lorg/codegist/crest/CRestBuilder;

    invoke-direct {v0}, Lorg/codegist/crest/CRestBuilder;-><init>()V

    const-class v1, Lorg/codegist/crest/io/http/HttpClientHttpChannelFactory;

    invoke-virtual {v0, v1}, Lorg/codegist/crest/CRestBuilder;->setHttpChannelFactory(Ljava/lang/Class;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    sget-object v1, Lorg/codegist/crest/config/MethodConfig;->METHOD_CONFIG_DEFAULT_ENDPOINT:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/codegist/crest/CRestBuilder;->property(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codegist/crest/CRestBuilder;->build()Lorg/codegist/crest/CRest;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/libterms/http/REST/CRest/TermsConfigCRestServiceController;->a:Lorg/codegist/crest/CRest;

    .line 42
    iget-object v0, p0, Lcom/chillingo/libterms/http/REST/CRest/TermsConfigCRestServiceController;->a:Lorg/codegist/crest/CRest;

    const-class v1, Lcom/chillingo/libterms/http/REST/CRest/TermsConfigCrestService;

    invoke-virtual {v0, v1}, Lorg/codegist/crest/CRest;->build(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/libterms/http/REST/CRest/TermsConfigCrestService;

    iput-object v0, p0, Lcom/chillingo/libterms/http/REST/CRest/TermsConfigCRestServiceController;->b:Lcom/chillingo/libterms/http/REST/CRest/TermsConfigCrestService;

    .line 43
    return-void
.end method
