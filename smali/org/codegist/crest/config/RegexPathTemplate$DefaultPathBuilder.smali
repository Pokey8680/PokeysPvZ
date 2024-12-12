.class final Lorg/codegist/crest/config/RegexPathTemplate$DefaultPathBuilder;
.super Ljava/lang/Object;
.source "RegexPathTemplate.java"

# interfaces
.implements Lorg/codegist/crest/config/PathBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codegist/crest/config/RegexPathTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultPathBuilder"
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final remainingTemplates:Ljava/util/Map;
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

.field final synthetic this$0:Lorg/codegist/crest/config/RegexPathTemplate;

.field private final url:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>(Lorg/codegist/crest/config/RegexPathTemplate;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/codegist/crest/config/RegexPathTemplate$DefaultPathBuilder;->this$0:Lorg/codegist/crest/config/RegexPathTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/codegist/crest/config/RegexPathTemplate$DefaultPathBuilder;->this$0:Lorg/codegist/crest/config/RegexPathTemplate;

    invoke-static {v1}, Lorg/codegist/crest/config/RegexPathTemplate;->access$100(Lorg/codegist/crest/config/RegexPathTemplate;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/codegist/crest/config/RegexPathTemplate$DefaultPathBuilder;->remainingTemplates:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codegist/crest/config/RegexPathTemplate$DefaultPathBuilder;->this$0:Lorg/codegist/crest/config/RegexPathTemplate;

    invoke-static {v1}, Lorg/codegist/crest/config/RegexPathTemplate;->access$200(Lorg/codegist/crest/config/RegexPathTemplate;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codegist/crest/config/RegexPathTemplate$DefaultPathBuilder;->url:Ljava/lang/StringBuilder;

    .line 68
    iput-object p2, p0, Lorg/codegist/crest/config/RegexPathTemplate$DefaultPathBuilder;->charset:Ljava/nio/charset/Charset;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lorg/codegist/crest/config/RegexPathTemplate;Ljava/nio/charset/Charset;Lorg/codegist/crest/config/RegexPathTemplate$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/codegist/crest/config/RegexPathTemplate;
    .param p2, "x1"    # Ljava/nio/charset/Charset;
    .param p3, "x2"    # Lorg/codegist/crest/config/RegexPathTemplate$1;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lorg/codegist/crest/config/RegexPathTemplate$DefaultPathBuilder;-><init>(Lorg/codegist/crest/config/RegexPathTemplate;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private encode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "encoded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 85
    if-eqz p2, :cond_0

    .end local p1    # "value":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "value":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lorg/codegist/crest/config/RegexPathTemplate$DefaultPathBuilder;->charset:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lorg/codegist/common/net/Urls;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .locals 5

    .prologue
    .line 89
    iget-object v0, p0, Lorg/codegist/crest/config/RegexPathTemplate$DefaultPathBuilder;->remainingTemplates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, "Not all path templates have been merged! (url=%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/codegist/crest/config/RegexPathTemplate$DefaultPathBuilder;->url:Ljava/lang/StringBuilder;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/codegist/common/lang/State;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lorg/codegist/crest/config/RegexPathTemplate$DefaultPathBuilder;->url:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public merge(Ljava/lang/String;Ljava/lang/String;Z)Lorg/codegist/crest/config/PathBuilder;
    .locals 8
    .param p1, "templateName"    # Ljava/lang/String;
    .param p2, "templateValue"    # Ljava/lang/String;
    .param p3, "encoded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v3, p0, Lorg/codegist/crest/config/RegexPathTemplate$DefaultPathBuilder;->remainingTemplates:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Path parameters is unknown or has already been provided for base uri \'%s\' (template:%s)! Param: %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/codegist/crest/config/RegexPathTemplate$DefaultPathBuilder;->url:Ljava/lang/StringBuilder;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/codegist/crest/config/RegexPathTemplate$DefaultPathBuilder;->this$0:Lorg/codegist/crest/config/RegexPathTemplate;

    invoke-static {v7}, Lorg/codegist/crest/config/RegexPathTemplate;->access$200(Lorg/codegist/crest/config/RegexPathTemplate;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lorg/codegist/common/lang/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v3, p0, Lorg/codegist/crest/config/RegexPathTemplate$DefaultPathBuilder;->remainingTemplates:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codegist/crest/config/RegexPathTemplate$PathTemplate;

    .line 74
    .local v1, "template":Lorg/codegist/crest/config/RegexPathTemplate$PathTemplate;
    invoke-virtual {v1, p2}, Lorg/codegist/crest/config/RegexPathTemplate$PathTemplate;->validate(Ljava/lang/String;)V

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "tmpl":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lorg/codegist/crest/config/RegexPathTemplate$DefaultPathBuilder;->url:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "start":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 79
    iget-object v3, p0, Lorg/codegist/crest/config/RegexPathTemplate$DefaultPathBuilder;->url:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-direct {p0, p2, p3}, Lorg/codegist/crest/config/RegexPathTemplate$DefaultPathBuilder;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 81
    :cond_0
    return-object p0
.end method
