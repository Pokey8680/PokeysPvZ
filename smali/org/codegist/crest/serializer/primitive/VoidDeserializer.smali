.class public Lorg/codegist/crest/serializer/primitive/VoidDeserializer;
.super Ljava/lang/Object;
.source "VoidDeserializer.java"

# interfaces
.implements Lorg/codegist/crest/serializer/Deserializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Object;
    .locals 1
    .param p2, "genericType"    # Ljava/lang/reflect/Type;
    .param p3, "stream"    # Ljava/io/InputStream;
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p3}, Lorg/codegist/common/io/IOs;->close(Ljava/io/InputStream;)V

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method
