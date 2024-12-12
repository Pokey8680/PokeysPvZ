.class final Lorg/codegist/crest/serializer/simplexml/BooleanMatcher;
.super Ljava/lang/Object;
.source "BooleanMatcher.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/transform/Transform",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final falseVal:Ljava/lang/String;

.field private final trueVal:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "trueVal"    # Ljava/lang/String;
    .param p2, "falseVal"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/codegist/crest/serializer/simplexml/BooleanMatcher;->trueVal:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lorg/codegist/crest/serializer/simplexml/BooleanMatcher;->falseVal:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public read(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/codegist/crest/serializer/simplexml/BooleanMatcher;->trueVal:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lorg/codegist/crest/serializer/simplexml/BooleanMatcher;->read(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 39
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codegist/crest/serializer/simplexml/BooleanMatcher;->trueVal:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codegist/crest/serializer/simplexml/BooleanMatcher;->falseVal:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic write(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/codegist/crest/serializer/simplexml/BooleanMatcher;->write(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
