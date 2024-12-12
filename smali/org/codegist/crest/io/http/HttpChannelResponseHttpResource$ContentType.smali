.class final Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;
.super Ljava/lang/Object;
.source "HttpChannelResponseHttpResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContentType"
.end annotation


# static fields
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field private static final DEFAULT_MIME_TYPE:Ljava/lang/String; = "text/html"

.field public static final EQUAL:Ljava/util/regex/Pattern;

.field public static final SEMICOLON:Ljava/util/regex/Pattern;


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final mimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;->SEMICOLON:Ljava/util/regex/Pattern;

    .line 99
    const-string v0, "="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;->EQUAL:Ljava/util/regex/Pattern;

    .line 101
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const-string v2, "text/html"

    .line 108
    .local v2, "pMimeType":Ljava/lang/String;
    sget-object v1, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 109
    .local v1, "pCharset":Ljava/nio/charset/Charset;
    if-eqz p1, :cond_1

    .line 110
    sget-object v3, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;->SEMICOLON:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "contentTypes":[Ljava/lang/String;
    array-length v3, v0

    if-lt v3, v5, :cond_0

    .line 113
    const/4 v3, 0x0

    aget-object v2, v0, v3

    .line 115
    :cond_0
    array-length v3, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    aget-object v3, v0, v5

    const-string v4, "charset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    sget-object v3, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;->EQUAL:Ljava/util/regex/Pattern;

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 119
    .end local v0    # "contentTypes":[Ljava/lang/String;
    :cond_1
    iput-object v2, p0, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;->mimeType:Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;->charset:Ljava/nio/charset/Charset;

    .line 121
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$1;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;)Ljava/nio/charset/Charset;
    .locals 1
    .param p0, "x0"    # Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method
