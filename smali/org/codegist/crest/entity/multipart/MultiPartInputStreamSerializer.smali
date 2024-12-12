.class final Lorg/codegist/crest/entity/multipart/MultiPartInputStreamSerializer;
.super Lorg/codegist/crest/entity/multipart/MultiPartOctetStreamSerializer;
.source "MultiPartInputStreamSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/entity/multipart/MultiPartOctetStreamSerializer",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lorg/codegist/crest/entity/multipart/MultiPartInputStreamSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lorg/codegist/crest/entity/multipart/MultiPartInputStreamSerializer;

    invoke-direct {v0}, Lorg/codegist/crest/entity/multipart/MultiPartInputStreamSerializer;-><init>()V

    sput-object v0, Lorg/codegist/crest/entity/multipart/MultiPartInputStreamSerializer;->INSTANCE:Lorg/codegist/crest/entity/multipart/MultiPartInputStreamSerializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/codegist/crest/entity/multipart/MultiPartOctetStreamSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method getFileName(Lorg/codegist/crest/entity/multipart/MultiPart;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/entity/multipart/MultiPart",
            "<",
            "Ljava/io/InputStream;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "multipart":Lorg/codegist/crest/entity/multipart/MultiPart;, "Lorg/codegist/crest/entity/multipart/MultiPart<Ljava/io/InputStream;>;"
    invoke-virtual {p1}, Lorg/codegist/crest/entity/multipart/MultiPart;->getParamConfig()Lorg/codegist/crest/config/ParamConfig;

    move-result-object v0

    invoke-static {v0}, Lorg/codegist/crest/util/MultiParts;->getFileName(Lorg/codegist/crest/config/ParamConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
