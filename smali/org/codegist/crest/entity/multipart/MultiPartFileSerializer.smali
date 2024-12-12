.class final Lorg/codegist/crest/entity/multipart/MultiPartFileSerializer;
.super Lorg/codegist/crest/entity/multipart/MultiPartOctetStreamSerializer;
.source "MultiPartFileSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/entity/multipart/MultiPartOctetStreamSerializer",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lorg/codegist/crest/entity/multipart/MultiPartFileSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lorg/codegist/crest/entity/multipart/MultiPartFileSerializer;

    invoke-direct {v0}, Lorg/codegist/crest/entity/multipart/MultiPartFileSerializer;-><init>()V

    sput-object v0, Lorg/codegist/crest/entity/multipart/MultiPartFileSerializer;->INSTANCE:Lorg/codegist/crest/entity/multipart/MultiPartFileSerializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/codegist/crest/entity/multipart/MultiPartOctetStreamSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method getFileName(Lorg/codegist/crest/entity/multipart/MultiPart;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/entity/multipart/MultiPart",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "multipart":Lorg/codegist/crest/entity/multipart/MultiPart;, "Lorg/codegist/crest/entity/multipart/MultiPart<Ljava/io/File;>;"
    invoke-virtual {p1}, Lorg/codegist/crest/entity/multipart/MultiPart;->getParamConfig()Lorg/codegist/crest/config/ParamConfig;

    move-result-object v0

    invoke-static {v0}, Lorg/codegist/crest/util/MultiParts;->getFileName(Lorg/codegist/crest/config/ParamConfig;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/codegist/crest/entity/multipart/MultiPart;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/codegist/common/lang/Strings;->defaultIfBlank(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
