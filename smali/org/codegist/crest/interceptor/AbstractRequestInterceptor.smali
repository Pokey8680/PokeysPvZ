.class public abstract Lorg/codegist/crest/interceptor/AbstractRequestInterceptor;
.super Ljava/lang/Object;
.source "AbstractRequestInterceptor.java"

# interfaces
.implements Lorg/codegist/crest/interceptor/RequestInterceptor;


# instance fields
.field private final paramConfigBuilderFactory:Lorg/codegist/crest/config/ParamConfigBuilderFactory;


# direct methods
.method public constructor <init>(Lorg/codegist/crest/CRestConfig;)V
    .locals 1
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-class v0, Lorg/codegist/crest/config/ParamConfigBuilderFactory;

    invoke-interface {p1, v0}, Lorg/codegist/crest/CRestConfig;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/ParamConfigBuilderFactory;

    iput-object v0, p0, Lorg/codegist/crest/interceptor/AbstractRequestInterceptor;->paramConfigBuilderFactory:Lorg/codegist/crest/config/ParamConfigBuilderFactory;

    .line 42
    return-void
.end method


# virtual methods
.method public newParamConfig(Ljava/lang/Class;)Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codegist/crest/config/ParamConfigBuilder;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p1}, Lorg/codegist/crest/interceptor/AbstractRequestInterceptor;->newParamConfig(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public newParamConfig(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 1
    .param p2, "genericType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/codegist/crest/config/ParamConfigBuilder;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codegist/crest/interceptor/AbstractRequestInterceptor;->paramConfigBuilderFactory:Lorg/codegist/crest/config/ParamConfigBuilderFactory;

    invoke-interface {v0, p1, p2}, Lorg/codegist/crest/config/ParamConfigBuilderFactory;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    return-object v0
.end method
