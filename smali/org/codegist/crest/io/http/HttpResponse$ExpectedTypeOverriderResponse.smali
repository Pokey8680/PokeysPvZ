.class final Lorg/codegist/crest/io/http/HttpResponse$ExpectedTypeOverriderResponse;
.super Lorg/codegist/crest/io/http/DelegatingResponse;
.source "HttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codegist/crest/io/http/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExpectedTypeOverriderResponse"
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method private constructor <init>(Lorg/codegist/crest/io/Response;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "delegate"    # Lorg/codegist/crest/io/Response;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/io/Response;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lorg/codegist/crest/io/http/DelegatingResponse;-><init>(Lorg/codegist/crest/io/Response;)V

    .line 117
    iput-object p2, p0, Lorg/codegist/crest/io/http/HttpResponse$ExpectedTypeOverriderResponse;->clazz:Ljava/lang/Class;

    .line 118
    iput-object p3, p0, Lorg/codegist/crest/io/http/HttpResponse$ExpectedTypeOverriderResponse;->type:Ljava/lang/reflect/Type;

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Lorg/codegist/crest/io/Response;Ljava/lang/Class;Ljava/lang/reflect/Type;Lorg/codegist/crest/io/http/HttpResponse$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/codegist/crest/io/Response;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Ljava/lang/reflect/Type;
    .param p4, "x3"    # Lorg/codegist/crest/io/http/HttpResponse$1;

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lorg/codegist/crest/io/http/HttpResponse$ExpectedTypeOverriderResponse;-><init>(Lorg/codegist/crest/io/Response;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public getExpectedGenericType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpResponse$ExpectedTypeOverriderResponse;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getExpectedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpResponse$ExpectedTypeOverriderResponse;->clazz:Ljava/lang/Class;

    return-object v0
.end method
