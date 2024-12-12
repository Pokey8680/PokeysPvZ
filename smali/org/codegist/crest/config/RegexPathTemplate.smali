.class public final Lorg/codegist/crest/config/RegexPathTemplate;
.super Ljava/lang/Object;
.source "RegexPathTemplate.java"

# interfaces
.implements Lorg/codegist/crest/config/PathTemplate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codegist/crest/config/RegexPathTemplate$1;,
        Lorg/codegist/crest/config/RegexPathTemplate$CurlyBraceTokenizer;,
        Lorg/codegist/crest/config/RegexPathTemplate$PathTemplate;,
        Lorg/codegist/crest/config/RegexPathTemplate$DefaultPathBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALIDATION_PATTERN:Ljava/util/regex/Pattern;

.field private static final TEMPLATE_NAME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final templates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codegist/crest/config/RegexPathTemplate$PathTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final urlTemplate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "^\\w[-\\w\\.]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/config/RegexPathTemplate;->TEMPLATE_NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 44
    const-string v0, "^[^/]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/config/RegexPathTemplate;->DEFAULT_VALIDATION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "urlTemplate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codegist/crest/config/RegexPathTemplate$PathTemplate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "templates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codegist/crest/config/RegexPathTemplate$PathTemplate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/codegist/crest/config/RegexPathTemplate;->urlTemplate:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lorg/codegist/crest/config/RegexPathTemplate;->templates:Ljava/util/Map;

    .line 52
    return-void
.end method

.method static synthetic access$100(Lorg/codegist/crest/config/RegexPathTemplate;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/codegist/crest/config/RegexPathTemplate;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/codegist/crest/config/RegexPathTemplate;->templates:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lorg/codegist/crest/config/RegexPathTemplate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/codegist/crest/config/RegexPathTemplate;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/codegist/crest/config/RegexPathTemplate;->urlTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lorg/codegist/crest/config/RegexPathTemplate;
    .locals 14
    .param p0, "urlTemplate"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 114
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v0, "baseUrl":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v4, "templates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codegist/crest/config/RegexPathTemplate$PathTemplate;>;"
    new-instance v3, Lorg/codegist/crest/config/RegexPathTemplate$CurlyBraceTokenizer;

    invoke-direct {v3, p0}, Lorg/codegist/crest/config/RegexPathTemplate$CurlyBraceTokenizer;-><init>(Ljava/lang/String;)V

    .line 117
    .local v3, "t":Lorg/codegist/crest/config/RegexPathTemplate$CurlyBraceTokenizer;
    :goto_0
    invoke-virtual {v3}, Lorg/codegist/crest/config/RegexPathTemplate$CurlyBraceTokenizer;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 118
    invoke-virtual {v3}, Lorg/codegist/crest/config/RegexPathTemplate$CurlyBraceTokenizer;->next()Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "tok":Ljava/lang/String;
    invoke-static {v5}, Lorg/codegist/crest/config/RegexPathTemplate$CurlyBraceTokenizer;->insideBraces(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 120
    invoke-static {v5}, Lorg/codegist/crest/config/RegexPathTemplate$CurlyBraceTokenizer;->stripBraces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 122
    const/16 v8, 0x3a

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 125
    .local v1, "index":I
    const/4 v8, -0x1

    if-le v1, v8, :cond_0

    .line 126
    invoke-virtual {v5, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "name":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "^"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "$"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 132
    .local v7, "validationPattern":Ljava/util/regex/Pattern;
    :goto_1
    sget-object v8, Lorg/codegist/crest/config/RegexPathTemplate;->TEMPLATE_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    const-string v11, "Template name \'%s\' doesn\'t match the expected format: %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v2, v12, v10

    sget-object v13, Lorg/codegist/crest/config/RegexPathTemplate;->TEMPLATE_NAME_PATTERN:Ljava/util/regex/Pattern;

    aput-object v13, v12, v9

    invoke-static {v8, v11, v12}, Lorg/codegist/common/lang/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const-string v11, "Template name \'%s\' is already defined!"

    new-array v12, v9, [Ljava/lang/Object;

    aput-object v2, v12, v10

    invoke-static {v8, v11, v12}, Lorg/codegist/common/lang/Validate;->isFalse(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 134
    new-instance v8, Lorg/codegist/crest/config/RegexPathTemplate$PathTemplate;

    const/4 v11, 0x0

    invoke-direct {v8, v2, v7, v11}, Lorg/codegist/crest/config/RegexPathTemplate$PathTemplate;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;Lorg/codegist/crest/config/RegexPathTemplate$1;)V

    invoke-interface {v4, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v8, "{"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v11, "}"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 129
    .end local v2    # "name":Ljava/lang/String;
    .end local v7    # "validationPattern":Ljava/util/regex/Pattern;
    :cond_0
    move-object v2, v5

    .line 130
    .restart local v2    # "name":Ljava/lang/String;
    sget-object v7, Lorg/codegist/crest/config/RegexPathTemplate;->DEFAULT_VALIDATION_PATTERN:Ljava/util/regex/Pattern;

    .restart local v7    # "validationPattern":Ljava/util/regex/Pattern;
    goto :goto_1

    .line 137
    .end local v1    # "index":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v7    # "validationPattern":Ljava/util/regex/Pattern;
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 140
    .end local v5    # "tok":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6}, Lorg/codegist/common/net/Urls;->hasQueryString(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    move v8, v9

    :goto_2
    const-string v11, "Given url contains a query string: %s"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v10

    invoke-static {v8, v11, v9}, Lorg/codegist/common/lang/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 142
    new-instance v8, Lorg/codegist/crest/config/RegexPathTemplate;

    invoke-direct {v8, v6, v4}, Lorg/codegist/crest/config/RegexPathTemplate;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v8

    :cond_3
    move v8, v10

    .line 141
    goto :goto_2
.end method


# virtual methods
.method public getBuilder(Ljava/nio/charset/Charset;)Lorg/codegist/crest/config/PathBuilder;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 58
    new-instance v0, Lorg/codegist/crest/config/RegexPathTemplate$DefaultPathBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/codegist/crest/config/RegexPathTemplate$DefaultPathBuilder;-><init>(Lorg/codegist/crest/config/RegexPathTemplate;Ljava/nio/charset/Charset;Lorg/codegist/crest/config/RegexPathTemplate$1;)V

    return-object v0
.end method
