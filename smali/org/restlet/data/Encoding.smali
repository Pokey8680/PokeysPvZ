.class public final Lorg/restlet/data/Encoding;
.super Lorg/restlet/data/Metadata;
.source "Encoding.java"


# static fields
.field public static final ALL:Lorg/restlet/data/Encoding;

.field public static final COMPRESS:Lorg/restlet/data/Encoding;

.field public static final DEFLATE:Lorg/restlet/data/Encoding;

.field public static final DEFLATE_NOWRAP:Lorg/restlet/data/Encoding;

.field public static final FREEMARKER:Lorg/restlet/data/Encoding;

.field public static final GZIP:Lorg/restlet/data/Encoding;

.field public static final IDENTITY:Lorg/restlet/data/Encoding;

.field public static final VELOCITY:Lorg/restlet/data/Encoding;

.field public static final ZIP:Lorg/restlet/data/Encoding;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lorg/restlet/data/Encoding;

    const-string v1, "*"

    const-string v2, "All encodings"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Encoding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/Encoding;->ALL:Lorg/restlet/data/Encoding;

    .line 47
    new-instance v0, Lorg/restlet/data/Encoding;

    const-string v1, "compress"

    const-string v2, "Common Unix compression"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Encoding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/Encoding;->COMPRESS:Lorg/restlet/data/Encoding;

    .line 51
    new-instance v0, Lorg/restlet/data/Encoding;

    const-string v1, "deflate"

    const-string v2, "Deflate compression using the zlib format"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Encoding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/Encoding;->DEFLATE:Lorg/restlet/data/Encoding;

    .line 55
    new-instance v0, Lorg/restlet/data/Encoding;

    const-string v1, "deflate-no-wrap"

    const-string v2, "Deflate compression using the zlib format (without wrapping)"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Encoding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/Encoding;->DEFLATE_NOWRAP:Lorg/restlet/data/Encoding;

    .line 60
    new-instance v0, Lorg/restlet/data/Encoding;

    const-string v1, "freemarker"

    const-string v2, "FreeMarker templated representation"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Encoding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/Encoding;->FREEMARKER:Lorg/restlet/data/Encoding;

    .line 64
    new-instance v0, Lorg/restlet/data/Encoding;

    const-string v1, "gzip"

    const-string v2, "GZip compression"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Encoding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/Encoding;->GZIP:Lorg/restlet/data/Encoding;

    .line 67
    new-instance v0, Lorg/restlet/data/Encoding;

    const-string v1, "identity"

    const-string v2, "The default encoding with no transformation"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Encoding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/Encoding;->IDENTITY:Lorg/restlet/data/Encoding;

    .line 71
    new-instance v0, Lorg/restlet/data/Encoding;

    const-string v1, "velocity"

    const-string v2, "Velocity templated representation"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Encoding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/Encoding;->VELOCITY:Lorg/restlet/data/Encoding;

    .line 75
    new-instance v0, Lorg/restlet/data/Encoding;

    const-string v1, "zip"

    const-string v2, "Zip compression"

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Encoding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/data/Encoding;->ZIP:Lorg/restlet/data/Encoding;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string v0, "Encoding applied to a representation"

    invoke-direct {p0, p1, v0}, Lorg/restlet/data/Encoding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lorg/restlet/data/Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/restlet/data/Encoding;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, "result":Lorg/restlet/data/Encoding;
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    sget-object v1, Lorg/restlet/data/Encoding;->ALL:Lorg/restlet/data/Encoding;

    invoke-virtual {v1}, Lorg/restlet/data/Encoding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    sget-object v0, Lorg/restlet/data/Encoding;->ALL:Lorg/restlet/data/Encoding;

    .line 112
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    sget-object v1, Lorg/restlet/data/Encoding;->GZIP:Lorg/restlet/data/Encoding;

    invoke-virtual {v1}, Lorg/restlet/data/Encoding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    sget-object v0, Lorg/restlet/data/Encoding;->GZIP:Lorg/restlet/data/Encoding;

    goto :goto_0

    .line 93
    :cond_2
    sget-object v1, Lorg/restlet/data/Encoding;->ZIP:Lorg/restlet/data/Encoding;

    invoke-virtual {v1}, Lorg/restlet/data/Encoding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    sget-object v0, Lorg/restlet/data/Encoding;->ZIP:Lorg/restlet/data/Encoding;

    goto :goto_0

    .line 95
    :cond_3
    sget-object v1, Lorg/restlet/data/Encoding;->COMPRESS:Lorg/restlet/data/Encoding;

    invoke-virtual {v1}, Lorg/restlet/data/Encoding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    sget-object v0, Lorg/restlet/data/Encoding;->COMPRESS:Lorg/restlet/data/Encoding;

    goto :goto_0

    .line 97
    :cond_4
    sget-object v1, Lorg/restlet/data/Encoding;->DEFLATE:Lorg/restlet/data/Encoding;

    invoke-virtual {v1}, Lorg/restlet/data/Encoding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 98
    sget-object v0, Lorg/restlet/data/Encoding;->DEFLATE:Lorg/restlet/data/Encoding;

    goto :goto_0

    .line 99
    :cond_5
    sget-object v1, Lorg/restlet/data/Encoding;->DEFLATE_NOWRAP:Lorg/restlet/data/Encoding;

    invoke-virtual {v1}, Lorg/restlet/data/Encoding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 100
    sget-object v0, Lorg/restlet/data/Encoding;->DEFLATE_NOWRAP:Lorg/restlet/data/Encoding;

    goto :goto_0

    .line 101
    :cond_6
    sget-object v1, Lorg/restlet/data/Encoding;->IDENTITY:Lorg/restlet/data/Encoding;

    invoke-virtual {v1}, Lorg/restlet/data/Encoding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 102
    sget-object v0, Lorg/restlet/data/Encoding;->IDENTITY:Lorg/restlet/data/Encoding;

    goto :goto_0

    .line 103
    :cond_7
    sget-object v1, Lorg/restlet/data/Encoding;->FREEMARKER:Lorg/restlet/data/Encoding;

    invoke-virtual {v1}, Lorg/restlet/data/Encoding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 104
    sget-object v0, Lorg/restlet/data/Encoding;->FREEMARKER:Lorg/restlet/data/Encoding;

    goto :goto_0

    .line 105
    :cond_8
    sget-object v1, Lorg/restlet/data/Encoding;->VELOCITY:Lorg/restlet/data/Encoding;

    invoke-virtual {v1}, Lorg/restlet/data/Encoding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 106
    sget-object v0, Lorg/restlet/data/Encoding;->VELOCITY:Lorg/restlet/data/Encoding;

    goto :goto_0

    .line 108
    :cond_9
    new-instance v0, Lorg/restlet/data/Encoding;

    .end local v0    # "result":Lorg/restlet/data/Encoding;
    invoke-direct {v0, p0}, Lorg/restlet/data/Encoding;-><init>(Ljava/lang/String;)V

    .restart local v0    # "result":Lorg/restlet/data/Encoding;
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 140
    instance-of v0, p1, Lorg/restlet/data/Encoding;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Encoding;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/restlet/data/Encoding;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/restlet/data/Encoding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParent()Lorg/restlet/data/Metadata;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lorg/restlet/data/Encoding;->ALL:Lorg/restlet/data/Encoding;

    invoke-virtual {p0, v0}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/restlet/data/Encoding;->ALL:Lorg/restlet/data/Encoding;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/restlet/data/Encoding;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/Encoding;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public includes(Lorg/restlet/data/Metadata;)Z
    .locals 1
    .param p1, "included"    # Lorg/restlet/data/Metadata;

    .prologue
    .line 173
    sget-object v0, Lorg/restlet/data/Encoding;->ALL:Lorg/restlet/data/Encoding;

    invoke-virtual {p0, v0}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
