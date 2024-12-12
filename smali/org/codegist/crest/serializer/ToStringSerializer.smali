.class public Lorg/codegist/crest/serializer/ToStringSerializer;
.super Lorg/codegist/crest/serializer/StringSerializer;
.source "ToStringSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codegist/crest/serializer/StringSerializer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    .local p0, "this":Lorg/codegist/crest/serializer/ToStringSerializer;, "Lorg/codegist/crest/serializer/ToStringSerializer<TT;>;"
    invoke-direct {p0}, Lorg/codegist/crest/serializer/StringSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Object;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lorg/codegist/crest/serializer/ToStringSerializer;, "Lorg/codegist/crest/serializer/ToStringSerializer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
