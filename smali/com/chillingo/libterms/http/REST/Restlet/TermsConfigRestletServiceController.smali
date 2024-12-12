.class public Lcom/chillingo/libterms/http/REST/Restlet/TermsConfigRestletServiceController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chillingo/libterms/http/REST/TermsConfigRESTService;


# instance fields
.field private a:Lorg/restlet/resource/ClientResource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadConfig(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/chillingo/libterms/model/TermsConfig;
    .locals 4
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
    .line 60
    .line 65
    if-nez p1, :cond_0

    .line 66
    :try_start_0
    const-string p1, "unknown"

    .line 68
    :cond_0
    if-nez p2, :cond_1

    .line 69
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 71
    :cond_1
    if-nez p7, :cond_2

    .line 72
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/chillingo/libterms/http/REST/Restlet/TermsConfigRestletServiceController;->a:Lorg/restlet/resource/ClientResource;

    const-string v1, "getLatest"

    invoke-virtual {v0, v1}, Lorg/restlet/resource/ClientResource;->addSegment(Ljava/lang/String;)Lorg/restlet/data/Reference;

    .line 77
    iget-object v0, p0, Lcom/chillingo/libterms/http/REST/Restlet/TermsConfigRestletServiceController;->a:Lorg/restlet/resource/ClientResource;

    invoke-virtual {v0, p1}, Lorg/restlet/resource/ClientResource;->addSegment(Ljava/lang/String;)Lorg/restlet/data/Reference;

    .line 78
    iget-object v0, p0, Lcom/chillingo/libterms/http/REST/Restlet/TermsConfigRestletServiceController;->a:Lorg/restlet/resource/ClientResource;

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/resource/ClientResource;->addSegment(Ljava/lang/String;)Lorg/restlet/data/Reference;

    .line 79
    iget-object v0, p0, Lcom/chillingo/libterms/http/REST/Restlet/TermsConfigRestletServiceController;->a:Lorg/restlet/resource/ClientResource;

    invoke-virtual {v0, p3}, Lorg/restlet/resource/ClientResource;->addSegment(Ljava/lang/String;)Lorg/restlet/data/Reference;

    .line 80
    iget-object v0, p0, Lcom/chillingo/libterms/http/REST/Restlet/TermsConfigRestletServiceController;->a:Lorg/restlet/resource/ClientResource;

    invoke-virtual {v0, p4}, Lorg/restlet/resource/ClientResource;->addSegment(Ljava/lang/String;)Lorg/restlet/data/Reference;

    .line 81
    iget-object v0, p0, Lcom/chillingo/libterms/http/REST/Restlet/TermsConfigRestletServiceController;->a:Lorg/restlet/resource/ClientResource;

    invoke-virtual {v0, p5}, Lorg/restlet/resource/ClientResource;->addSegment(Ljava/lang/String;)Lorg/restlet/data/Reference;

    .line 82
    iget-object v0, p0, Lcom/chillingo/libterms/http/REST/Restlet/TermsConfigRestletServiceController;->a:Lorg/restlet/resource/ClientResource;

    invoke-virtual {p6}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/resource/ClientResource;->addSegment(Ljava/lang/String;)Lorg/restlet/data/Reference;

    .line 83
    iget-object v0, p0, Lcom/chillingo/libterms/http/REST/Restlet/TermsConfigRestletServiceController;->a:Lorg/restlet/resource/ClientResource;

    invoke-virtual {p7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/resource/ClientResource;->addSegment(Ljava/lang/String;)Lorg/restlet/data/Reference;

    .line 84
    iget-object v0, p0, Lcom/chillingo/libterms/http/REST/Restlet/TermsConfigRestletServiceController;->a:Lorg/restlet/resource/ClientResource;

    invoke-virtual {v0, p8}, Lorg/restlet/resource/ClientResource;->addSegment(Ljava/lang/String;)Lorg/restlet/data/Reference;

    .line 87
    iget-object v0, p0, Lcom/chillingo/libterms/http/REST/Restlet/TermsConfigRestletServiceController;->a:Lorg/restlet/resource/ClientResource;

    invoke-virtual {v0}, Lorg/restlet/resource/ClientResource;->getClientInfo()Lorg/restlet/data/ClientInfo;
    :try_end_0
    .catch Lorg/restlet/resource/ResourceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 89
    if-eqz v0, :cond_3

    .line 91
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    new-instance v2, Lorg/restlet/data/Language;

    invoke-direct {v2, p9}, Lorg/restlet/data/Language;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance v3, Lorg/restlet/data/Preference;

    invoke-direct {v3, v2}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;)V

    .line 96
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {v0, v1}, Lorg/restlet/data/ClientInfo;->setAcceptedLanguages(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/restlet/resource/ResourceException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    :cond_3
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/chillingo/libterms/http/REST/Restlet/TermsConfigRestletServiceController;->a:Lorg/restlet/resource/ClientResource;

    const-class v1, Lcom/chillingo/libterms/model/TermsConfig;

    invoke-virtual {v0, v1}, Lorg/restlet/resource/ClientResource;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/libterms/model/TermsConfig;
    :try_end_2
    .catch Lorg/restlet/resource/ResourceException; {:try_start_2 .. :try_end_2} :catch_1

    .line 113
    const-string v1, "TermsConfigRestletServiceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    if-nez v0, :cond_4

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to convert downloaded config data to JSON representation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    :try_start_3
    const-string v0, "TermsConfigRestletServiceController"

    const-string v1, "Failed to set Restlet language preferences"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/restlet/resource/ResourceException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 107
    :catch_1
    move-exception v0

    .line 108
    const-string v1, "TermsConfigRestletServiceController"

    const-string v2, "Failed to download terms"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    throw v0

    .line 120
    :cond_4
    return-object v0
.end method

.method public initialiseWithURL(Ljava/lang/String;)V
    .locals 3
    .param p1, "targetURL"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/Engine;->getRegisteredConverters()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/ext/jackson/JacksonConverter;

    invoke-direct {v1}, Lorg/restlet/ext/jackson/JacksonConverter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/Engine;->getRegisteredClients()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/Engine;->getRegisteredClients()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/ext/httpclient/HttpClientHelper;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/restlet/ext/httpclient/HttpClientHelper;-><init>(Lorg/restlet/Client;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v0, Lorg/restlet/resource/ClientResource;

    invoke-direct {v0, p1}, Lorg/restlet/resource/ClientResource;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chillingo/libterms/http/REST/Restlet/TermsConfigRestletServiceController;->a:Lorg/restlet/resource/ClientResource;

    .line 47
    return-void
.end method
