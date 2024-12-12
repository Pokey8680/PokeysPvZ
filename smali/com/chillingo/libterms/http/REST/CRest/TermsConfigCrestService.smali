.class public interface abstract Lcom/chillingo/libterms/http/REST/CRest/TermsConfigCrestService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getTermsConfig(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/chillingo/libterms/model/TermsConfig;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/PathParam;
            defaultValue = "unknown"
            value = "countryCode"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lorg/codegist/crest/annotate/PathParam;
            defaultValue = "0"
            value = "currentVersion"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/PathParam;
            value = "sdkVersion"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/PathParam;
            value = "appId"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/PathParam;
            value = "platform"
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Lorg/codegist/crest/annotate/PathParam;
            value = "isPreCoppa"
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation runtime Lorg/codegist/crest/annotate/PathParam;
            defaultValue = "0"
            value = "ageWhenAccepted"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/PathParam;
            value = "coppaCompliance"
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/HeaderParam;
            value = "accept-language"
        .end annotation
    .end param
    .annotation runtime Lorg/codegist/crest/annotate/Path;
        value = "/getLatest/{countryCode}/{currentVersion}/{sdkVersion}/{appId}/{platform}/{isPreCoppa}/{ageWhenAccepted}/{coppaCompliance}"
    .end annotation
.end method
