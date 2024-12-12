.class public abstract Lorg/codegist/crest/CRest;
.super Ljava/lang/Object;
.source "CRest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static basicAuth(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 208
    new-instance v0, Lorg/codegist/crest/CRestBuilder;

    invoke-direct {v0}, Lorg/codegist/crest/CRestBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/codegist/crest/CRestBuilder;->basicAuth(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static endpoint(Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .param p0, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v0, Lorg/codegist/crest/CRestBuilder;

    invoke-direct {v0}, Lorg/codegist/crest/CRestBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codegist/crest/CRestBuilder;->endpoint(Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static getBasicAuthInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRest;
    .locals 1
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {p0, p1}, Lorg/codegist/crest/CRest;->basicAuth(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codegist/crest/CRestBuilder;->build()Lorg/codegist/crest/CRest;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/codegist/crest/CRest;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lorg/codegist/crest/CRestBuilder;

    invoke-direct {v0}, Lorg/codegist/crest/CRestBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/codegist/crest/CRestBuilder;->build()Lorg/codegist/crest/CRest;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/codegist/crest/CRest;
    .locals 1
    .param p0, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Lorg/codegist/crest/CRest;->endpoint(Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codegist/crest/CRestBuilder;->build()Lorg/codegist/crest/CRest;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Map;)Lorg/codegist/crest/CRest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/codegist/crest/CRest;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "placeholders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/codegist/crest/CRest;->placeholders(Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codegist/crest/CRestBuilder;->build()Lorg/codegist/crest/CRest;

    move-result-object v0

    return-object v0
.end method

.method public static getOAuthInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRest;
    .locals 1
    .param p0, "consumerKey"    # Ljava/lang/String;
    .param p1, "consumerSecret"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "accessTokenSecret"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {p0, p1, p2, p3}, Lorg/codegist/crest/CRest;->oauth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codegist/crest/CRestBuilder;->build()Lorg/codegist/crest/CRest;

    move-result-object v0

    return-object v0
.end method

.method public static getOAuthInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRest;
    .locals 1
    .param p0, "consumerKey"    # Ljava/lang/String;
    .param p1, "consumerSecret"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "accessTokenSecret"    # Ljava/lang/String;
    .param p4, "sessionHandle"    # Ljava/lang/String;
    .param p5, "accessTokenRefreshUrl"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static/range {p0 .. p5}, Lorg/codegist/crest/CRest;->oauth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codegist/crest/CRestBuilder;->build()Lorg/codegist/crest/CRest;

    move-result-object v0

    return-object v0
.end method

.method public static oauth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .param p0, "consumerKey"    # Ljava/lang/String;
    .param p1, "consumerSecret"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "accessTokenSecret"    # Ljava/lang/String;

    .prologue
    .line 182
    new-instance v0, Lorg/codegist/crest/CRestBuilder;

    invoke-direct {v0}, Lorg/codegist/crest/CRestBuilder;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/codegist/crest/CRestBuilder;->oauth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static oauth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;
    .locals 7
    .param p0, "consumerKey"    # Ljava/lang/String;
    .param p1, "consumerSecret"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "accessTokenSecret"    # Ljava/lang/String;
    .param p4, "sessionHandle"    # Ljava/lang/String;
    .param p5, "accessTokenRefreshUrl"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v0, Lorg/codegist/crest/CRestBuilder;

    invoke-direct {v0}, Lorg/codegist/crest/CRestBuilder;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/codegist/crest/CRestBuilder;->oauth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static placeholder(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .param p0, "placeholder"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v0, Lorg/codegist/crest/CRestBuilder;

    invoke-direct {v0}, Lorg/codegist/crest/CRestBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/codegist/crest/CRestBuilder;->placeholder(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static placeholders(Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/codegist/crest/CRestBuilder;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "placeholders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/codegist/crest/CRestBuilder;

    invoke-direct {v0}, Lorg/codegist/crest/CRestBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codegist/crest/CRestBuilder;->setPlaceholders(Ljava/util/Map;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static property(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/crest/CRestBuilder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 148
    new-instance v0, Lorg/codegist/crest/CRestBuilder;

    invoke-direct {v0}, Lorg/codegist/crest/CRestBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/codegist/crest/CRestBuilder;->property(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract build(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codegist/crest/CRestException;
        }
    .end annotation
.end method
