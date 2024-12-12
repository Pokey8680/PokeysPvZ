.class final Lorg/codegist/crest/DefaultCRestConfig;
.super Ljava/lang/Object;
.source "DefaultCRestConfig.java"

# interfaces
.implements Lorg/codegist/crest/CRestConfig;


# instance fields
.field private final config:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/codegist/crest/DefaultCRestConfig;->config:Ljava/util/Map;

    .line 36
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/codegist/crest/DefaultCRestConfig;->get(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "defaultIfNotFound":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/codegist/crest/DefaultCRestConfig;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lorg/codegist/crest/DefaultCRestConfig;->config:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "defaultIfNotFound":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/codegist/crest/DefaultCRestConfig;->config:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/codegist/crest/DefaultCRestConfig;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "defaultIfNotFound":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object p2
.end method

.method public getBooleanFalse()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lorg/codegist/crest/DefaultCRestConfig;->CREST_BOOLEAN_FALSE:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lorg/codegist/crest/DefaultCRestConfig;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBooleanTrue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lorg/codegist/crest/DefaultCRestConfig;->CREST_BOOLEAN_TRUE:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lorg/codegist/crest/DefaultCRestConfig;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getConcurrencyLevel()I
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lorg/codegist/crest/DefaultCRestConfig;->CREST_CONCURRENCY_LEVEL:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codegist/crest/DefaultCRestConfig;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lorg/codegist/crest/DefaultCRestConfig;->CREST_DATE_FORMAT:Ljava/lang/String;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-virtual {p0, v0, v1}, Lorg/codegist/crest/DefaultCRestConfig;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAttempts()I
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lorg/codegist/crest/DefaultCRestConfig;->CREST_MAX_ATTEMPTS:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codegist/crest/DefaultCRestConfig;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public merge(Ljava/util/Map;)Lorg/codegist/crest/CRestConfig;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codegist/crest/CRestConfig;"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lorg/codegist/crest/DefaultCRestConfig;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/Map;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/codegist/crest/DefaultCRestConfig;->config:Ljava/util/Map;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lorg/codegist/common/collect/Maps;->merge([Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codegist/crest/DefaultCRestConfig;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
